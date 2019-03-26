$(document).ready(function(){
        	$.ajax({  

        	    url: 'ad.xml',

        	    type: 'GET',

        	    success: function(xml) {
        	    	$(xml).find("ad").each(function (){
        	    		var ad = $(this);
        	    		var imgsrc = ad.find("imgsrc").text();
        	    		var href = ad.find("href").text();
        	    		$("#ad_ul").append("<li><a href='"+href+"'><div align='center' style='width: 280px;height: 135px; vertical-align: middle; border:1px solid #000;'><img style='max-width:276px' alt='链接' src='"+imgsrc+"'/></div></a><br /></li>");
        	    	});
        	    }

        	});
        });