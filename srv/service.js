
const cds = require('@sap/cds');
const{Readable }= require('stream')
module.exports = cds.service.impl(async function () {
    let {
        attachments, Files
    } = this.entities;

    this.before('CREATE', Files, req => {
        console.log('Create called')
        console.log(JSON.stringify(req.data))
        req.data.url = `/attachments/Files(${req.data.ID})/content`
    })

    this.before('CREATE', attachments,async (req) => {
        debugger
        // console.log('Create called')
        // console.log(JSON.stringify(req.data))
        req.data.url = `/media/attachments(${req.data.ID})/content`;
        // req.data.ID1 = req.data.ID;
        // const entry = {
        //     Enquiry_no :req.data.Enquiry_no,
        //     content:req.data.content,
        //     fileName:req.data.fileName,
        //     mediaType:req.data.mediaType,
        // }; 
    });


    this.on("READ", attachments, async (req, next) => {
        if (!req.data.idd) {
            return next();
        }
        //Fetch the url from where the req is triggered
        const url = req._.req.path;
        //If the request url contains keyword "content"
        // then read the media content
        if (url.includes("content")) {
            const uid = req.data.pdfId;
            var tx = cds.transaction(req);
            // Fetch the media obj from database
           var mediaObj1=  await SELECT `content,mediaType`.from (attachments) .where `pdfId = ${uid}`;
            // var mediaObj = await tx.run(
            //     SELECT.one.from("MediaFile", ["content", "mediaType"]).where({id:uid})
            // );

            if (mediaObj1.length <= 0) {
                req.reject(404, "Media not found for the ID");
                return;
            }
            var decodedMedia = "";
            decodedMedia = new Buffer.from(
                mediaObj1[0].content.toString().split(";base64,").pop(),
                "base64"
            );
            return _formatResult(decodedMedia, mediaObj1[0].mediaType);
        } else return next();
    });

    function _formatResult(decodedMedia, mediaType) {
        const readable = new Readable();
        const result = new Array();
        readable.push(decodedMedia);
        readable.push(null);
        return {
            value: readable,
            '*@odata.mediaContentType': mediaType
        }
    }


});