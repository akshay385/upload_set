sap.ui.define(['sap/fe/test/ObjectPage'], function(ObjectPage) {
    'use strict';

    var CustomPageDefinitions = {
        actions: {},
        assertions: {}
    };

    return new ObjectPage(
        {
            appId: 'files',
            componentId: 'tab1ObjectPage',
            contextPath: '/tab1'
        },
        CustomPageDefinitions
    );
});