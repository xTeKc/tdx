use dioxus::prelude::*;

pub fn render_footer<'a>(cx: &Scope<'a>) -> Element<'a> {
    cx.render(rsx! {
        div {
            style: "text-align: center; background-color: #000000; color: #FFFFFF; padding: 1em;",
            //p { "footer" }
            button { 
                style: "margin-right: 80px; background-color: #000000; color: #FFFFFF;", 
                "button_1" 
            }
            button { 
                style: "margin-right: 80px; background-color: #000000; color: #FFFFFF;", 
                "button_2"
            }
            button { 
                style: "margin-right: 80px; background-color: #000000; color: #FFFFFF;", 
                "button_3"
            }
            button { 
                style: "margin-right: 80px; background-color: #000000; color: #FFFFFF;", 
                "button_4"
            }
            button { 
                style: "background-color: #000000; color: #FFFFFF;", 
                "button_5"
            }
        }
    })
}
