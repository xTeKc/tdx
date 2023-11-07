use dioxus::prelude::*;

pub fn render_content<'a>(cx: &Scope<'a>) -> Element<'a> {
    cx.render(rsx! {
        div {
            div {
                style: "width: 99%; margin: auto;",
                p { "content" }
            }
        }
    })
}
