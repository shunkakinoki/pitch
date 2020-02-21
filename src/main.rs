use clap::{crate_version, App, Arg};

fn main() {
  let matches = App::new("pitch")
    .version(crate_version!())
    .author("Shun Kakinoki <shunkakinoki@gmail.com>")
    .arg(
      Arg::with_name("convert")
        .help("Convert `content` to `pitch`")
        .short('c')
        .long("convert"),
    )
    .get_matches();

  if matches.is_present("convert") {
    println!("Convert");
  }
}
