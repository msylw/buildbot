class State extends Config
    constructor: ($stateProvider, bbSettingsServiceProvider) ->

        # Name of the state
        name = 'workers'

        # Menu Configuration
        cfg =
            group: "builds"
            caption: 'Workers'

        # Register new state
        $stateProvider.state
            controller: "#{name}Controller"
            templateUrl: "views/#{name}.html"
            name: name
            url: '/workers'
            data: cfg

        bbSettingsServiceProvider.addSettingsGroup
            name:'Slaves'
            caption: 'Slaves page related settings'
            items:[
                type:'bool'
                name:'show_old_slaves'
                caption:'Show old slaves'
                default_value: false
            ]