sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'files/test/integration/FirstJourney',
		'files/test/integration/pages/tab1List',
		'files/test/integration/pages/tab1ObjectPage'
    ],
    function(JourneyRunner, opaJourney, tab1List, tab1ObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('files') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onThetab1List: tab1List,
					onThetab1ObjectPage: tab1ObjectPage
                }
            },
            opaJourney.run
        );
    }
);