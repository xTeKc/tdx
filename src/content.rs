use dioxus::prelude::*;

pub fn render_content<'a>(cx: &Scope<'a>) -> Element<'a> {
    cx.render(rsx! {
        div {
            class: "has-background-black has-text-white is-flex is-flex-direction-column is-align-items-center is-justify-content-center",
            style: "height: calc(100vh - 100px); overflow: hidden;",

            div {
                class: "has-background-black is-flex is-justify-content-center is-align-items-center",
                style: "height: calc(100vh - 100px); width: 100%; border: 2px solid grey;",
            }
        }
    })
}
