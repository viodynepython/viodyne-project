var productCount =0;
var currentCount=1;
$(document).ready(function(){
    $(".dropdown").hover(            
        function() {
            $('.dropdown-menu', this).not('.in .dropdown-menu').stop(true,true).slideDown("400");
            $(this).toggleClass('open');        
        },
        function() {
            $('.dropdown-menu', this).not('.in .dropdown-menu').stop(true,true).slideUp("400");
            $(this).toggleClass('open');       
        }
    );
    productCount= document.getElementById("hdnProductCount").value;
   

    if(productCount > 0){
       // productCount++;
        initCarousel(currentCount);
    }
   
});

/*slider js here*/

function showNext(){
    if(currentCount < productCount){
        currentCount+=1;
    }
    else if(currentCount == productCount){
        currentCount=1;
    }
    else if(currentCount > productCount){
        currentCount=1;
    }
    showNextCategory(currentCount)
}

function showPrev(){
    if(currentCount == 1){
        currentCount=productCount;
    }
    else if(currentCount == productCount){
        currentCount -=1;
    }
    else if(currentCount > 1){
        currentCount -=1;
    }
    showNextCategory(currentCount)
}

function showNextCategory(id){
    currentCount=id;
    initCarousel(id);
}

function initCarousel(elmClass){
    $(".item").removeClass("active");
    $(".body_text").removeClass("highlight");
    
    $(".group"+elmClass).addClass("active");
    

    $(".active"+elmClass).addClass("highlight");


}


// $(document).ready(function () {
//     var itemsMainDiv = ('.MultiCarousel');
//     var itemsDiv = ('.MultiCarousel-inner');
//     var itemWidth = "";

//     $('.leftLst, .rightLst').click(function () {
//         var condition = $(this).hasClass("leftLst");
//         if (condition)
//             click(0, this);
//         else
//             click(1, this)
//     });

//     ResCarouselSize();




//     $(window).resize(function () {
//         ResCarouselSize();
//     });

//     //this function define the size of the items
//     function ResCarouselSize() {
//         var incno = 0;
//         var dataItems = ("data-items");
//         var itemClass = ('.item');
//         var id = 0;
//         var btnParentSb = '';
//         var itemsSplit = '';
//         var sampwidth = $(itemsMainDiv).width();
//         var bodyWidth = $('body').width();
//         $(itemsDiv).each(function () {
//             id = id + 1;
//             var itemNumbers = $(this).find(itemClass).length;
//             btnParentSb = $(this).parent().attr(dataItems);
//             itemsSplit = btnParentSb.split(',');
//             $(this).parent().attr("id", "MultiCarousel" + id);


//             if (bodyWidth >= 1200) {
//                 incno = itemsSplit[3];
//                 itemWidth = sampwidth / incno;
//             }
//             else if (bodyWidth >= 992) {
//                 incno = itemsSplit[2];
//                 itemWidth = sampwidth / incno;
//             }
//             else if (bodyWidth >= 768) {
//                 incno = itemsSplit[1];
//                 itemWidth = sampwidth / incno;
//             }
//             else {
//                 incno = itemsSplit[0];
//                 itemWidth = sampwidth / incno;
//             }
//             $(this).css({ 'transform': 'translateX(0px)', 'width': itemWidth * itemNumbers });
//             $(this).find(itemClass).each(function () {
//                 $(this).outerWidth(itemWidth);
//             });

//             $(".leftLst").addClass("over");
//             $(".rightLst").removeClass("over");

//         });
//     }


//     //this function used to move the items
//     function ResCarousel(e, el, s) {
//         var leftBtn = ('.leftLst');
//         var rightBtn = ('.rightLst');
//         var translateXval = '';
//         var divStyle = $(el + ' ' + itemsDiv).css('transform');
//         var values = divStyle.match(/-?[\d\.]+/g);
//         var xds = Math.abs(values[4]);
//         if (e == 0) {
//             translateXval = parseInt(xds) - parseInt(itemWidth * s);
//             $(el + ' ' + rightBtn).removeClass("over");

//             if (translateXval <= itemWidth / 2) {
//                 translateXval = 0;
//                 $(el + ' ' + leftBtn).addClass("over");
//             }
//         }
//         else if (e == 1) {
//             var itemsCondition = $(el).find(itemsDiv).width() - $(el).width();
//             translateXval = parseInt(xds) + parseInt(itemWidth * s);
//             $(el + ' ' + leftBtn).removeClass("over");

//             if (translateXval >= itemsCondition - itemWidth / 2) {
//                 translateXval = itemsCondition;
//                 $(el + ' ' + rightBtn).addClass("over");
//             }
//         }
//         $(el + ' ' + itemsDiv).css('transform', 'translateX(' + -translateXval + 'px)');
//     }

//     //It is used to get some elements from btn
//     function click(ell, ee) {
//         var Parent = "#" + $(ee).parent().attr("id");
//         var slide = $(Parent).attr("data-slide");
//         ResCarousel(ell, Parent, slide);
//     }

// });