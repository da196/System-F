// LINE GRAPH FOR LOCAL INDEX CARD 
// CANVAS - 1
Highcharts.chart('canvas-1', {
    chart: {
        type: 'area'
    },
    title: {
        text: 'Fruit consumption *'
    },
    subtitle: {
        text: '* Jane\'s banana consumption is unknown',
        align: 'right',
        verticalAlign: 'bottom'
    },
    legend: {
        layout: 'vertical',
        align: 'left',
        verticalAlign: 'top',
        x: 100,
        y: 70,
        floating: true,
        borderWidth: 1,
        backgroundColor:
            Highcharts.defaultOptions.legend.backgroundColor || '#FFFFFF'
    },
    xAxis: {
        categories: ['Family Viewing/Programme Classification', 'Sign Language Interpreter', 'Oranges', 'Bananas', 'Grapes', 'Plums', 'Strawberries', 'Raspberries']
    },
    yAxis: {
        title: {
            text: 'Y-Axis'
        }
    },
    plotOptions: {
        area: {
            fillOpacity: 0.5
        }
    },
    credits: {
        enabled: false
    },
    series: [{
        name: 'YES',
        data: [0, 1, 4, 4, 5, 2, 3, 7]
    }, {
        name: 'NO',
        data: [1, 0, 3, null, 3, 1, 2, 1]
    }]
});


//LINE GRAPH FOR LOCAL INDEX CARD 
//CANVAS - 4
Highcharts.chart('canvas-4', {
	  colors: ['#FFD700', '#C0C0C0', '#CD7F32'],
	  chart: {
	    type: 'column',
	    inverted: true,
	    polar: true
	  },
	  title: {
	    text: 'Winter Olympic medals per existing country (TOP 10)'
	  },
	  tooltip: {
	    outside: true
	  },
	  pane: {
	    size: '85%',
	    endAngle: 270
	  },
	  xAxis: {
	    tickInterval: 1,
	    labels: {
	      align: 'right',
	      useHTML: true,
	      allowOverlap: true,
	      step: 1,
	      y: 4,
	      style: {
	        fontSize: '12px'
	      }
	    },
	    lineWidth: 0,
	    categories: [
	      'Norway <span class="f16"><span id="flag" class="flag no">' +
	      '</span></span>',
	      'United States <span class="f16"><span id="flag" class="flag us">' +
	      '</span></span>',
	      'Germany <span class="f16"><span id="flag" class="flag de">' +
	      '</span></span>',
	      'Canada <span class="f16"><span id="flag" class="flag ca">' +
	      '</span></span>',
	      'Austria <span class="f16"><span id="flag" class="flag at">' +
	      '</span></span>',
	      'Sweden <span class="f16"><span id="flag" class="flag se">' +
	      '</span></span>',
	      'Switzerland <span class="f16"><span id="flag" class="flag ch">' +
	      '</span></span>',
	      'Russia <span class="f16"><span id="flag" class="flag ru">' +
	      '</span></span>',
	      'Netherlands <span class="f16"><span id="flag" class="flag nl">' +
	      '</span></span>',
	      'Finland <span class="f16"><span id="flag" class="flag fi">' +
	      '</span></span>'
	    ]
	  },
	  yAxis: {
	    lineWidth: 0,
	    tickInterval: 25,
	    reversedStacks: false,
	    endOnTick: true,
	    showLastLabel: true
	  },
	  plotOptions: {
	    column: {
	      stacking: 'normal',
	      borderWidth: 0,
	      pointPadding: 0,
	      groupPadding: 0.15
	    }
	  },
	  series: [{
	    name: 'Gold medals',
	    data: [132, 105, 92, 73, 64, 57, 55, 47, 45, 43]
	  }, {
	    name: 'Silver medals',
	    data: [125, 110, 86, 64, 81, 46, 46, 38, 44, 63]
	  }, {
	    name: 'Bronze medals',
	    data: [111, 90, 60, 62, 87, 55, 52, 35, 41, 61]
	  }]
	});
	


// BAR GRAPH FOR NEWS INDEX CARD - NEWS STANDARD 
// CANVAS - 4
Highcharts.chart('canvas-2', {
    chart: {
        type: 'bar'
    },
    title: {
        text: 'Historic World Population by Region'
    },
    subtitle: {
        text: 'Source: <a href="https://en.wikipedia.org/wiki/World_population">Wikipedia.org</a>'
    },
    xAxis: {
        categories: ['Africa tazrgbyfrg', 'Sign Language Interpreter', 'Proper Pronunciations', 'Europe', 'Oceania'],
        title: {
            text: null
        }
    },
    yAxis: {
        min: 0,
        title: {
            text: 'Population (millions)',
            align: 'high'
        },
        labels: {
            overflow: 'justify'
        }
    },
    tooltip: {
        valueSuffix: ' millions'
    },
    plotOptions: {
        bar: {
            dataLabels: {
                enabled: true
            }
        }
    },
    legend: {
        layout: 'vertical',
        align: 'right',
        verticalAlign: 'top',
        x: -40,
        y: 80,
        floating: true,
        borderWidth: 1,
        backgroundColor:
            Highcharts.defaultOptions.legend.backgroundColor || '#FFFFFF',
        shadow: true
    },
    credits: {
        enabled: false
    },
    series: [{
        name: 'Year 1800',
        data: [107, 31, 635, 203, 2]
    }, {
        name: 'Year 1900',
        data: [133, 156, 947, 408, 6]
    }, {
        name: 'Year 2000',
        data: [814, 841, 3714, 727, 31]
    }, {
        name: 'Year 2016',
        data: [1216, 1001, 4436, 738, 40]
    }]
});

//BAR GRAPH FOR NEWS INDEX CARD - SPONSORSHIP 
//CANVAS - 4 
Highcharts.chart('canvas-5', {
    chart: {
        type: 'bar'
    },
    title: {
        text: 'Stacked bar chart'
    },
    xAxis: {
        categories: ['Apples', 'Oranges', 'Pears', 'Grapes', 'Bananas']
    },
    yAxis: {
        min: 0,
        title: {
            text: 'Total fruit consumption'
        }
    },
    legend: {
        reversed: true
    },
    plotOptions: {
        series: {
            stacking: 'normal'
        }
    },
    series: [{
        name: 'John',
        data: [5, 3, 4, 7, 2]
    }, {
        name: 'Jane',
        data: [2, 2, 3, 2, 1]
    }, {
        name: 'Joe',
        data: [3, 4, 4, 2, 5]
    }]
});



