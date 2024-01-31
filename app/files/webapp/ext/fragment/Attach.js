sap.ui.define([
    "sap/m/MessageToast"
], function (MessageToast) {
    'use strict';

    return {
        onPress: function (oEvent) {
            MessageToast.show("Custom handler invoked.");
        },


        onAfterItemAdded: function (oEvent) {
            debugger
            var item = oEvent.getParameter("item")
            let uploadset = item.getParent();
            var currentDate = new Date(); // Get the current date and time
            var formattedDate = currentDate.toISOString().split('T')[0]; // Extract date in YYYY-MM-DD format
            var formattedTime = currentDate.toISOString().split('T')[1].slice(0, 8); // Extract time in HH:MM:SS format
            // var data = {
            //     mediaType: item.getMediaType(),
            //     fileName: item.getFileName(),
            //     size: item.getFileObject().size,
            //     // createdAtDate: formattedDate, // Add current date to 'createdAtDate'
            //     // createdAtTime: formattedTime // Add current time to 'createdAtTime'
            // };

            // var settings = {
            //     url: "/odata/v4/catalog/Files",
            //     method: "POST",
            //     headers: {
            //         "Content-type": "application/json"
            //     },
            //     data: JSON.stringify(data)
            // }

            // var oUploadSet = this.byId("uploadSet");
            // oUploadSet.uploadItem(item);
            
            // return new Promise((resolve, reject) => {
            //     $.ajax(settings)
            //         .done((results, textStatus, request) => {
            //             resolve(results.ID);
            //             // location.reload();
            //             // var oUploadSet = this.byId("uploadSet");
            //             // oUploadSet.removeAllIncompleteItems();
            //             // oUploadSet.getBinding("items").refresh();

            //         })
            //         .fail((err) => {
            //             reject(err);
            //         })
            // })


            /////////////////////////////////////////////////////////////////////////////////////

            let _uploadContent = async function (uploadset, item, id) {
                debugger;
                var url = `/odata/v4/catalog/Files(${id})/content`
                item.setUploadUrl(url);
                uploadset.setUploadUrl(url);
                // var oUploadSet = item.getParent();
                uploadset.setHttpRequestMethod("PUT");
                debugger;
                await uploadset.uploadItem(item);
            };

            let _createEntity = function (uploadset,item) {
                debugger;
                var data = {
                    mediaType: item.getMediaType(),
                    fileName: item.getFileName(),
                    size: item.getFileObject().size,
                };
    
                var settings = {
                    url: "/odata/v4/catalog/Files",
                    method: "POST",
                    headers: {
                        "Content-type": "application/json"
                    },
                    data: JSON.stringify(data)
                }
    
                return new Promise((resolve, reject) => {
                    $.ajax(settings)
                        .done((results, textStatus, request) => {
                            resolve(results.ID);
                        })
                        .fail((err) => {
                            reject(err);
                        })
                })
            }

            // var data = {
            //     mediaType: item.getMediaType(),
            //     fileName: item.getFileName(),
            //     size: item.getFileObject().size,
            // };

            // var settings = {
            //     url: "/odata/v4/catalog/Files",
            //     method: "POST",
            //     headers: {
            //         "Content-type": "application/json"
            //     },
            //     data: JSON.stringify(data)
            // }

            _createEntity(uploadset,item)
                .then((id) => {
                    debugger
                    _uploadContent(uploadset,item, id);
                })
                .catch((err) => {
                    console.log(err);
                })

        },

        onUploadCompleted: async function (oEvent) {
            debugger;
            let item = oEvent.mParameters.item;
            let reader = new FileReader();
            let fileobj = item.getFileObject();
            let readFile = await reader.readAsArrayBuffer(fileobj);
            let textFile = await new Response(fileobj).text();
            let textblob = await fileobj.text();

            reader.onloadend = (data) => {
                debugger

            }
            // oEvent.mParameters.item._oFileObject.stream().then(function(data){
            //     debugger;
            // })
            // var oUploadSet = this.byId("uploadSet");
            // oUploadSet.removeAllIncompleteItems();
            // oUploadSet.getBinding("items").refresh();
            // oEvent.mParameters.item.download(true);
        },

       onOpenPressed: function (oEvent) {
				oEvent.preventDefault();
				var item = oEvent.getSource();
				this._fileName = item.getFileName();
				this._download(item)
					.then((blob) => {
						var url = window.URL.createObjectURL(blob);
						// //open in the browser
						// window.open(url);

						//download
						var link = document.createElement('a');
						link.href = url;
						link.setAttribute('download', this._fileName);
						document.body.appendChild(link);
						link.click();
						document.body.removeChild(link);						
					})
					.catch((err)=> {
						console.log(err);
					});					
			},
        _createEntity: function (item) {
            debugger;
            var data = {
                mediaType: item.getMediaType(),
                fileName: item.getFileName(),
                size: item.getFileObject().size,
            };

            var settings = {
                url: "/odata/v4/catalog/Files",
                method: "POST",
                headers: {
                    "Content-type": "application/json"
                },
                data: JSON.stringify(data)
            }

            return new Promise((resolve, reject) => {
                $.ajax(settings)
                    .done((results, textStatus, request) => {
                        resolve(results.ID);
                    })
                    .fail((err) => {
                        reject(err);
                    })
            })
        }.bind(this),

        _uploadContent: function (item, id) {
            debugger;
            var url = `/odata/v4/catalog/Files(${id})/content`
            item.setUploadUrl(url);
            var oUploadSet = this.byId("uploadSet");
            oUploadSet.setHttpRequestMethod("PUT")
            oUploadSet.uploadItem(item);
        }.bind(this)
    };
});
