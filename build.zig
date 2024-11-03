const std = @import("std");
const zine = @import("zine");

pub fn build(b: *std.Build) !void {
    zine.website(b, .{
        .title = "Zine - Static Site Generator",
        .host_url = "https://zine-ssg.io",
        .layouts_dir_path = "layouts",
        .content_dir_path = "content",
        .assets_dir_path = "assets",
        .static_assets = &.{
            // Fonts referenced in CSS files
            "fonts/BebasNeue-Regular.ttf",
            "fonts/Merriweather-Black.ttf",
            "fonts/Merriweather-BlackItalic.ttf",
            "fonts/Merriweather-Bold.ttf",
            "fonts/Merriweather-BoldItalic.ttf",
            "fonts/Merriweather-Italic.ttf",
            "fonts/Merriweather-Light.ttf",
            "fonts/Merriweather-LightItalic.ttf",
            "fonts/Merriweather-Regular.ttf",
            "fonts/FiraCode-Bold.woff",
            "fonts/FiraCode-Bold.woff2",
            "fonts/FiraCode-Light.woff",
            "fonts/FiraCode-Light.woff2",
            "fonts/FiraCode-Medium.woff",
            "fonts/FiraCode-Medium.woff2",
            "fonts/FiraCode-Regular.woff",
            "fonts/FiraCode-Regular.woff2",
            "fonts/FiraCode-SemiBold.woff",
            "fonts/FiraCode-SemiBold.woff2",
            "fonts/FiraCode-VF.woff",
            "fonts/FiraCode-VF.woff2",

            "fonts/jbm/JetBrainsMono-Bold.woff2",
            "fonts/jbm/JetBrainsMono-BoldItalic.woff2",
            "fonts/jbm/JetBrainsMono-ExtraBold.woff2",
            "fonts/jbm/JetBrainsMono-ExtraBoldItalic.woff2",
            "fonts/jbm/JetBrainsMono-ExtraLight.woff2",
            "fonts/jbm/JetBrainsMono-ExtraLightItalic.woff2",
            "fonts/jbm/JetBrainsMono-Italic.woff2",
            "fonts/jbm/JetBrainsMono-Light.woff2",
            "fonts/jbm/JetBrainsMono-LightItalic.woff2",
            "fonts/jbm/JetBrainsMono-Medium.woff2",
            "fonts/jbm/JetBrainsMono-MediumItalic.woff2",
            "fonts/jbm/JetBrainsMono-Regular.woff2",
            "fonts/jbm/JetBrainsMono-SemiBold.woff2",
            "fonts/jbm/JetBrainsMono-SemiBoldItalic.woff2",
            "fonts/jbm/JetBrainsMono-Thin.woff2",
            "fonts/jbm/JetBrainsMono-ThinItalic.woff2",
        },
        .build_assets = &.{
            .{
                .name = "zon",
                .lp = b.path("build.zig.zon"),
            },
            .{
                .name = "frontmatter",
                .lp = b.dependency("zine", .{}).path(
                    "frontmatter.ziggy-schema",
                ),
            },
        },
        .debug = true,
    });
}