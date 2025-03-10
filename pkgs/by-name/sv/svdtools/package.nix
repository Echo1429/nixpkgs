{ lib
, rustPlatform
, fetchCrate
}:

rustPlatform.buildRustPackage rec {
  pname = "svdtools";
  version = "0.3.20";

  src = fetchCrate {
    inherit version pname;
    hash = "sha256-Sh3VnitkR72009kcD9u42UrDB1FKbHYllHGzM07eUTU=";
  };

  cargoHash = "sha256-9QiDbJMWf4OWEVOVrz4uiyjmLHNhZg0VbM1/VKTjO9M=";

  meta = with lib; {
    description = "Tools to handle vendor-supplied, often buggy SVD files";
    mainProgram = "svdtools";
    homepage = "https://github.com/stm32-rs/svdtools";
    changelog = "https://github.com/stm32-rs/svdtools/blob/v${version}/CHANGELOG-rust.md";
    license = with licenses; [ asl20 /* or */ mit ];
    maintainers = with maintainers; [ newam ];
  };
}
