use clap::{crate_version, App, Arg};

fn main() {
  let matches = App::new("pitch")
    .version(crate_version!())
    .author("Shun Kakinoki <shunkakinoki@gmail.com>")
    .arg(
      Arg::with_name("c2p")
        .help("Convert `content` to `pitch`")
        .short('c')
        .long("c2p"),
    )
    .get_matches();

  if matches.is_present("c2p") {
    println!("C2p is turned on");
  }
}
