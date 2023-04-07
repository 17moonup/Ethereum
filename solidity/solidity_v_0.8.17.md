## SPDX （The Software Package Data Exchange ) License Identifier

An open standard for communicating software bill of material information, including components, licenses, copyrights, and security references.

Every source file should start with a comment indicating its license:

```
// SPDX-License-Identifier: MIT
```

The compiler does not validate that the license is part of the [list allowed by SPDX](https://spdx.org/licenses/), but it does include the supplied string in the [bytecode metadata](https://docs.soliditylang.org/en/v0.8.19/metadata.html#metadata). Note the UNLICENSED(no usage allowed, ont present in SPDX LICENSE list) is different from UNLICENSE(grants all rights to everyone).

## Pragma 

is a keyword that used to enable certain complier features or checks. Usually the first line of code within any Solidity file, and is a directive that specifies the compiler version to be used for current Solidity file. If you import another file, the pragma from that file does not automatically apply to the importing file.

- [ ] pragma solidity ^0.5.2 

A source file with the line above does not compile with a compiler earlier than version 0.5.2, and it also does not work on a compiler starting from version 0.6.0 (this second condition is added by using `^`). There won't be big changes until 0.6.0, so that avoiding incompatible changes.

*Notes: Using the version pragma does not change the version of the compiler*

