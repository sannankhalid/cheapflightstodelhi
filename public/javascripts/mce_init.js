tinyMCE.init({
    mode : "specific_textareas",
    editor_selector : "mceEditor",
    theme: "advanced",
    theme_advanced_toolbar_location: "top",
    theme_advanced_statusbar_location: "bottom",
    theme_advanced_resizing: true,

    theme_advanced_resize_horizontal: false,

    theme_advanced_toolbar_align : "left",
    theme_advanced_buttons1 : "save,newdocument,|,bold,italic,underline,strikethrough,|,justifyleft,justifycenter,justifyright,justifyfull,styleselect,formatselect,fontselect,fontsizeselect",
    theme_advanced_buttons2 : "cut,copy,paste,pastetext,pasteword,|,search,replace,|,bullist,numlist,|,outdent,indent,blockquote,|,undo,redo,|,link,unlink,anchor,image,cleanup,help,code,|,insertdate,inserttime,preview,|,forecolor,backcolor",
    theme_advanced_buttons3 : "tablecontrols,|,hr,removeformat,visualaid,|,sub,sup,|,charmap,emotions,iespell,media,advhr,|,print,|,ltr,rtl,|,fullscreen",
    theme_advanced_buttons4 : "insertlayer,moveforward,movebackward,absolute,|,styleprops,|,cite,abbr,acronym,del,ins,attribs,|,visualchars,nonbreaking,template,pagebreak,restoredraft",
    elements: "content_node_content,product_description",
    plugins : "safari,paste,pagebreak,fullscreen,table,noneditable,insertdatetime,contextmenu",
    pagebreak_separator: "<!--more-->",
    relative_urls: false,
    // Allow iFrames
    extended_valid_elements: "iframe[align<bottom?left?middle?right?top|class|frameborder|height|id"
            + "|longdesc|marginheight|marginwidth|allowTransparency|name|scrolling<auto?no?yes|src|style"
            + "|title|width]",
    width : 645,
    height : 400
});