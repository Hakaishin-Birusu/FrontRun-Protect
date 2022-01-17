```
├─ type: SourceUnit
└─ children
   ├─ 0
   │  ├─ type: PragmaDirective
   │  ├─ name: solidity
   │  └─ value: ^0.8.4
   ├─ 1
   │  ├─ type: ImportDirective
   │  ├─ path: @openzeppelin/contracts/access/Ownable.sol
   │  ├─ pathLiteral
   │  │  ├─ type: StringLiteral
   │  │  ├─ value: @openzeppelin/contracts/access/Ownable.sol
   │  │  ├─ parts
   │  │  │  └─ 0: @openzeppelin/contracts/access/Ownable.sol
   │  │  └─ isUnicode
   │  │     └─ 0: false
   │  ├─ unitAlias
   │  ├─ unitAliasIdentifier
   │  ├─ symbolAliases
   │  │  └─ 0
   │  │     ├─ 0: Ownable
   │  │     └─ 1
   │  └─ symbolAliasesIdentifiers
   │     └─ 0
   │        ├─ 0
   │        │  ├─ type: Identifier
   │        │  └─ name: Ownable
   │        └─ 1
   ├─ 2
   │  ├─ type: ImportDirective
   │  ├─ path: ./libraries/VanityNameServiceUtils.sol
   │  ├─ pathLiteral
   │  │  ├─ type: StringLiteral
   │  │  ├─ value: ./libraries/VanityNameServiceUtils.sol
   │  │  ├─ parts
   │  │  │  └─ 0: ./libraries/VanityNameServiceUtils.sol
   │  │  └─ isUnicode
   │  │     └─ 0: false
   │  ├─ unitAlias
   │  ├─ unitAliasIdentifier
   │  ├─ symbolAliases
   │  │  └─ 0
   │  │     ├─ 0: VanityNameServiceUtils
   │  │     └─ 1: vnsUtils
   │  └─ symbolAliasesIdentifiers
   │     └─ 0
   │        ├─ 0
   │        │  ├─ type: Identifier
   │        │  └─ name: VanityNameServiceUtils
   │        └─ 1
   │           ├─ type: Identifier
   │           └─ name: vnsUtils
   ├─ 3
   │  ├─ type: ImportDirective
   │  ├─ path: ./interfaces/IVanityNameService.sol
   │  ├─ pathLiteral
   │  │  ├─ type: StringLiteral
   │  │  ├─ value: ./interfaces/IVanityNameService.sol
   │  │  ├─ parts
   │  │  │  └─ 0: ./interfaces/IVanityNameService.sol
   │  │  └─ isUnicode
   │  │     └─ 0: false
   │  ├─ unitAlias
   │  ├─ unitAliasIdentifier
   │  ├─ symbolAliases
   │  │  └─ 0
   │  │     ├─ 0: IVanityNameService
   │  │     └─ 1: IVNS
   │  └─ symbolAliasesIdentifiers
   │     └─ 0
   │        ├─ 0
   │        │  ├─ type: Identifier
   │        │  └─ name: IVanityNameService
   │        └─ 1
   │           ├─ type: Identifier
   │           └─ name: IVNS
   └─ 4
      ├─ type: ContractDefinition
      ├─ name: VanityNameService
      ├─ baseContracts
      │  ├─ 0
      │  │  ├─ type: InheritanceSpecifier
      │  │  ├─ baseName
      │  │  │  ├─ type: UserDefinedTypeName
      │  │  │  └─ namePath: IVNS
      │  │  └─ arguments
      │  └─ 1
      │     ├─ type: InheritanceSpecifier
      │     ├─ baseName
      │     │  ├─ type: UserDefinedTypeName
      │     │  └─ namePath: Ownable
      │     └─ arguments
      ├─ subNodes
      │  ├─ 0
      │  │  ├─ type: StateVariableDeclaration
      │  │  ├─ variables
      │  │  │  └─ 0
      │  │  │     ├─ type: VariableDeclaration
      │  │  │     ├─ typeName
      │  │  │     │  ├─ type: ElementaryTypeName
      │  │  │     │  ├─ name: uint256
      │  │  │     │  └─ stateMutability
      │  │  │     ├─ name: reservationFee
      │  │  │     ├─ identifier
      │  │  │     │  ├─ type: Identifier
      │  │  │     │  └─ name: reservationFee
      │  │  │     ├─ expression
      │  │  │     ├─ visibility: public
      │  │  │     ├─ isStateVar: true
      │  │  │     ├─ isDeclaredConst: false
      │  │  │     ├─ isIndexed: false
      │  │  │     ├─ isImmutable: false
      │  │  │     ├─ override
      │  │  │     └─ storageLocation
      │  │  └─ initialValue
      │  ├─ 1
      │  │  ├─ type: StateVariableDeclaration
      │  │  ├─ variables
      │  │  │  └─ 0
      │  │  │     ├─ type: VariableDeclaration
      │  │  │     ├─ typeName
      │  │  │     │  ├─ type: ElementaryTypeName
      │  │  │     │  ├─ name: uint256
      │  │  │     │  └─ stateMutability
      │  │  │     ├─ name: perCharRegistrationFee
      │  │  │     ├─ identifier
      │  │  │     │  ├─ type: Identifier
      │  │  │     │  └─ name: perCharRegistrationFee
      │  │  │     ├─ expression
      │  │  │     ├─ visibility: public
      │  │  │     ├─ isStateVar: true
      │  │  │     ├─ isDeclaredConst: false
      │  │  │     ├─ isIndexed: false
      │  │  │     ├─ isImmutable: false
      │  │  │     ├─ override
      │  │  │     └─ storageLocation
      │  │  └─ initialValue
      │  ├─ 2
      │  │  ├─ type: StateVariableDeclaration
      │  │  ├─ variables
      │  │  │  └─ 0
      │  │  │     ├─ type: VariableDeclaration
      │  │  │     ├─ typeName
      │  │  │     │  ├─ type: ElementaryTypeName
      │  │  │     │  ├─ name: uint256
      │  │  │     │  └─ stateMutability
      │  │  │     ├─ name: reservationDuration
      │  │  │     ├─ identifier
      │  │  │     │  ├─ type: Identifier
      │  │  │     │  └─ name: reservationDuration
      │  │  │     ├─ expression
      │  │  │     ├─ visibility: public
      │  │  │     ├─ isStateVar: true
      │  │  │     ├─ isDeclaredConst: false
      │  │  │     ├─ isIndexed: false
      │  │  │     ├─ isImmutable: false
      │  │  │     ├─ override
      │  │  │     └─ storageLocation
      │  │  └─ initialValue
      │  ├─ 3
      │  │  ├─ type: StateVariableDeclaration
      │  │  ├─ variables
      │  │  │  └─ 0
      │  │  │     ├─ type: VariableDeclaration
      │  │  │     ├─ typeName
      │  │  │     │  ├─ type: ElementaryTypeName
      │  │  │     │  ├─ name: uint256
      │  │  │     │  └─ stateMutability
      │  │  │     ├─ name: registryDuration
      │  │  │     ├─ identifier
      │  │  │     │  ├─ type: Identifier
      │  │  │     │  └─ name: registryDuration
      │  │  │     ├─ expression
      │  │  │     ├─ visibility: public
      │  │  │     ├─ isStateVar: true
      │  │  │     ├─ isDeclaredConst: false
      │  │  │     ├─ isIndexed: false
      │  │  │     ├─ isImmutable: false
      │  │  │     ├─ override
      │  │  │     └─ storageLocation
      │  │  └─ initialValue
      │  ├─ 4
      │  │  ├─ type: StateVariableDeclaration
      │  │  ├─ variables
      │  │  │  └─ 0
      │  │  │     ├─ type: VariableDeclaration
      │  │  │     ├─ typeName
      │  │  │     │  ├─ type: Mapping
      │  │  │     │  ├─ keyType
      │  │  │     │  │  ├─ type: ElementaryTypeName
      │  │  │     │  │  ├─ name: bytes32
      │  │  │     │  │  └─ stateMutability
      │  │  │     │  └─ valueType
      │  │  │     │     ├─ type: UserDefinedTypeName
      │  │  │     │     └─ namePath: NameReservation
      │  │  │     ├─ name: getNameReservation
      │  │  │     ├─ identifier
      │  │  │     │  ├─ type: Identifier
      │  │  │     │  └─ name: getNameReservation
      │  │  │     ├─ expression
      │  │  │     ├─ visibility: public
      │  │  │     ├─ isStateVar: true
      │  │  │     ├─ isDeclaredConst: false
      │  │  │     ├─ isIndexed: false
      │  │  │     ├─ isImmutable: false
      │  │  │     ├─ override
      │  │  │     └─ storageLocation
      │  │  └─ initialValue
      │  ├─ 5
      │  │  ├─ type: StateVariableDeclaration
      │  │  ├─ variables
      │  │  │  └─ 0
      │  │  │     ├─ type: VariableDeclaration
      │  │  │     ├─ typeName
      │  │  │     │  ├─ type: Mapping
      │  │  │     │  ├─ keyType
      │  │  │     │  │  ├─ type: ElementaryTypeName
      │  │  │     │  │  ├─ name: bytes32
      │  │  │     │  │  └─ stateMutability
      │  │  │     │  └─ valueType
      │  │  │     │     ├─ type: UserDefinedTypeName
      │  │  │     │     └─ namePath: NameRegistry
      │  │  │     ├─ name: getNameRegistry
      │  │  │     ├─ identifier
      │  │  │     │  ├─ type: Identifier
      │  │  │     │  └─ name: getNameRegistry
      │  │  │     ├─ expression
      │  │  │     ├─ visibility: public
      │  │  │     ├─ isStateVar: true
      │  │  │     ├─ isDeclaredConst: false
      │  │  │     ├─ isIndexed: false
      │  │  │     ├─ isImmutable: false
      │  │  │     ├─ override
      │  │  │     └─ storageLocation
      │  │  └─ initialValue
      │  ├─ 6
      │  │  ├─ type: FunctionDefinition
      │  │  ├─ name
      │  │  ├─ parameters
      │  │  │  ├─ 0
      │  │  │  │  ├─ type: VariableDeclaration
      │  │  │  │  ├─ typeName
      │  │  │  │  │  ├─ type: ElementaryTypeName
      │  │  │  │  │  ├─ name: uint256
      │  │  │  │  │  └─ stateMutability
      │  │  │  │  ├─ name: _perCharPrice
      │  │  │  │  ├─ identifier
      │  │  │  │  │  ├─ type: Identifier
      │  │  │  │  │  └─ name: _perCharPrice
      │  │  │  │  ├─ storageLocation
      │  │  │  │  ├─ isStateVar: false
      │  │  │  │  ├─ isIndexed: false
      │  │  │  │  └─ expression
      │  │  │  └─ 1
      │  │  │     ├─ type: VariableDeclaration
      │  │  │     ├─ typeName
      │  │  │     │  ├─ type: ElementaryTypeName
      │  │  │     │  ├─ name: uint256
      │  │  │     │  └─ stateMutability
      │  │  │     ├─ name: _reservationFee
      │  │  │     ├─ identifier
      │  │  │     │  ├─ type: Identifier
      │  │  │     │  └─ name: _reservationFee
      │  │  │     ├─ storageLocation
      │  │  │     ├─ isStateVar: false
      │  │  │     ├─ isIndexed: false
      │  │  │     └─ expression
      │  │  ├─ returnParameters
      │  │  ├─ body
      │  │  │  ├─ type: Block
      │  │  │  └─ statements
      │  │  │     ├─ 0
      │  │  │     │  ├─ type: ExpressionStatement
      │  │  │     │  └─ expression
      │  │  │     │     ├─ type: BinaryOperation
      │  │  │     │     ├─ operator: =
      │  │  │     │     ├─ left
      │  │  │     │     │  ├─ type: Identifier
      │  │  │     │     │  └─ name: perCharRegistrationFee
      │  │  │     │     └─ right
      │  │  │     │        ├─ type: Identifier
      │  │  │     │        └─ name: _perCharPrice
      │  │  │     ├─ 1
      │  │  │     │  ├─ type: ExpressionStatement
      │  │  │     │  └─ expression
      │  │  │     │     ├─ type: BinaryOperation
      │  │  │     │     ├─ operator: =
      │  │  │     │     ├─ left
      │  │  │     │     │  ├─ type: Identifier
      │  │  │     │     │  └─ name: reservationFee
      │  │  │     │     └─ right
      │  │  │     │        ├─ type: Identifier
      │  │  │     │        └─ name: _reservationFee
      │  │  │     ├─ 2
      │  │  │     │  ├─ type: ExpressionStatement
      │  │  │     │  └─ expression
      │  │  │     │     ├─ type: BinaryOperation
      │  │  │     │     ├─ operator: =
      │  │  │     │     ├─ left
      │  │  │     │     │  ├─ type: Identifier
      │  │  │     │     │  └─ name: reservationDuration
      │  │  │     │     └─ right
      │  │  │     │        ├─ type: NumberLiteral
      │  │  │     │        ├─ number: 1
      │  │  │     │        └─ subdenomination: days
      │  │  │     └─ 3
      │  │  │        ├─ type: ExpressionStatement
      │  │  │        └─ expression
      │  │  │           ├─ type: BinaryOperation
      │  │  │           ├─ operator: =
      │  │  │           ├─ left
      │  │  │           │  ├─ type: Identifier
      │  │  │           │  └─ name: registryDuration
      │  │  │           └─ right
      │  │  │              ├─ type: NumberLiteral
      │  │  │              ├─ number: 28
      │  │  │              └─ subdenomination: days
      │  │  ├─ visibility: default
      │  │  ├─ modifiers
      │  │  ├─ override
      │  │  ├─ isConstructor: true
      │  │  ├─ isReceiveEther: false
      │  │  ├─ isFallback: false
      │  │  ├─ isVirtual: false
      │  │  └─ stateMutability
      │  ├─ 7
      │  │  ├─ type: FunctionDefinition
      │  │  ├─ name: reserveName
      │  │  ├─ parameters
      │  │  │  └─ 0
      │  │  │     ├─ type: VariableDeclaration
      │  │  │     ├─ typeName
      │  │  │     │  ├─ type: ElementaryTypeName
      │  │  │     │  ├─ name: bytes32
      │  │  │     │  └─ stateMutability
      │  │  │     ├─ name: _reservationHash
      │  │  │     ├─ identifier
      │  │  │     │  ├─ type: Identifier
      │  │  │     │  └─ name: _reservationHash
      │  │  │     ├─ storageLocation
      │  │  │     ├─ isStateVar: false
      │  │  │     ├─ isIndexed: false
      │  │  │     └─ expression
      │  │  ├─ returnParameters
      │  │  ├─ body
      │  │  │  ├─ type: Block
      │  │  │  └─ statements
      │  │  │     ├─ 0
      │  │  │     │  ├─ type: VariableDeclarationStatement
      │  │  │     │  ├─ variables
      │  │  │     │  │  └─ 0
      │  │  │     │  │     ├─ type: VariableDeclaration
      │  │  │     │  │     ├─ typeName
      │  │  │     │  │     │  ├─ type: UserDefinedTypeName
      │  │  │     │  │     │  └─ namePath: NameReservation
      │  │  │     │  │     ├─ name: nReservation
      │  │  │     │  │     ├─ identifier
      │  │  │     │  │     │  ├─ type: Identifier
      │  │  │     │  │     │  └─ name: nReservation
      │  │  │     │  │     ├─ storageLocation: storage
      │  │  │     │  │     ├─ isStateVar: false
      │  │  │     │  │     ├─ isIndexed: false
      │  │  │     │  │     └─ expression
      │  │  │     │  └─ initialValue
      │  │  │     │     ├─ type: IndexAccess
      │  │  │     │     ├─ base
      │  │  │     │     │  ├─ type: Identifier
      │  │  │     │     │  └─ name: getNameReservation
      │  │  │     │     └─ index
      │  │  │     │        ├─ type: Identifier
      │  │  │     │        └─ name: _reservationHash
      │  │  │     ├─ 1
      │  │  │     │  ├─ type: ExpressionStatement
      │  │  │     │  └─ expression
      │  │  │     │     ├─ type: FunctionCall
      │  │  │     │     ├─ expression
      │  │  │     │     │  ├─ type: Identifier
      │  │  │     │     │  └─ name: require
      │  │  │     │     ├─ arguments
      │  │  │     │     │  ├─ 0
      │  │  │     │     │  │  ├─ type: BinaryOperation
      │  │  │     │     │  │  ├─ operator: >
      │  │  │     │     │  │  ├─ left
      │  │  │     │     │  │  │  ├─ type: MemberAccess
      │  │  │     │     │  │  │  ├─ expression
      │  │  │     │     │  │  │  │  ├─ type: Identifier
      │  │  │     │     │  │  │  │  └─ name: block
      │  │  │     │     │  │  │  └─ memberName: timestamp
      │  │  │     │     │  │  └─ right
      │  │  │     │     │  │     ├─ type: MemberAccess
      │  │  │     │     │  │     ├─ expression
      │  │  │     │     │  │     │  ├─ type: Identifier
      │  │  │     │     │  │     │  └─ name: nReservation
      │  │  │     │     │  │     └─ memberName: reservationExpiry
      │  │  │     │     │  └─ 1
      │  │  │     │     │     ├─ type: StringLiteral
      │  │  │     │     │     ├─ value: ERR: ALREADY RESERVED
      │  │  │     │     │     ├─ parts
      │  │  │     │     │     │  └─ 0: ERR: ALREADY RESERVED
      │  │  │     │     │     └─ isUnicode
      │  │  │     │     │        └─ 0: false
      │  │  │     │     ├─ names
      │  │  │     │     └─ identifiers
      │  │  │     ├─ 2
      │  │  │     │  ├─ type: ExpressionStatement
      │  │  │     │  └─ expression
      │  │  │     │     ├─ type: FunctionCall
      │  │  │     │     ├─ expression
      │  │  │     │     │  ├─ type: Identifier
      │  │  │     │     │  └─ name: require
      │  │  │     │     ├─ arguments
      │  │  │     │     │  ├─ 0
      │  │  │     │     │  │  ├─ type: BinaryOperation
      │  │  │     │     │  │  ├─ operator: >=
      │  │  │     │     │  │  ├─ left
      │  │  │     │     │  │  │  ├─ type: MemberAccess
      │  │  │     │     │  │  │  ├─ expression
      │  │  │     │     │  │  │  │  ├─ type: Identifier
      │  │  │     │     │  │  │  │  └─ name: msg
      │  │  │     │     │  │  │  └─ memberName: value
      │  │  │     │     │  │  └─ right
      │  │  │     │     │  │     ├─ type: Identifier
      │  │  │     │     │  │     └─ name: reservationFee
      │  │  │     │     │  └─ 1
      │  │  │     │     │     ├─ type: StringLiteral
      │  │  │     │     │     ├─ value: ERR : INSUFFICIENT FEE
      │  │  │     │     │     ├─ parts
      │  │  │     │     │     │  └─ 0: ERR : INSUFFICIENT FEE
      │  │  │     │     │     └─ isUnicode
      │  │  │     │     │        └─ 0: false
      │  │  │     │     ├─ names
      │  │  │     │     └─ identifiers
      │  │  │     ├─ 3
      │  │  │     │  ├─ type: IfStatement
      │  │  │     │  ├─ condition
      │  │  │     │  │  ├─ type: BinaryOperation
      │  │  │     │  │  ├─ operator: !=
      │  │  │     │  │  ├─ left
      │  │  │     │  │  │  ├─ type: MemberAccess
      │  │  │     │  │  │  ├─ expression
      │  │  │     │  │  │  │  ├─ type: Identifier
      │  │  │     │  │  │  │  └─ name: nReservation
      │  │  │     │  │  │  └─ memberName: feePaid
      │  │  │     │  │  └─ right
      │  │  │     │  │     ├─ type: NumberLiteral
      │  │  │     │  │     ├─ number: 0
      │  │  │     │  │     └─ subdenomination
      │  │  │     │  ├─ trueBody
      │  │  │     │  │  ├─ type: Block
      │  │  │     │  │  └─ statements
      │  │  │     │  │     └─ 0
      │  │  │     │  │        ├─ type: ExpressionStatement
      │  │  │     │  │        └─ expression
      │  │  │     │  │           ├─ type: FunctionCall
      │  │  │     │  │           ├─ expression
      │  │  │     │  │           │  ├─ type: Identifier
      │  │  │     │  │           │  └─ name: _cancelReservation
      │  │  │     │  │           ├─ arguments
      │  │  │     │  │           │  └─ 0
      │  │  │     │  │           │     ├─ type: Identifier
      │  │  │     │  │           │     └─ name: _reservationHash
      │  │  │     │  │           ├─ names
      │  │  │     │  │           └─ identifiers
      │  │  │     │  └─ falseBody
      │  │  │     ├─ 4
      │  │  │     │  ├─ type: ExpressionStatement
      │  │  │     │  └─ expression
      │  │  │     │     ├─ type: BinaryOperation
      │  │  │     │     ├─ operator: =
      │  │  │     │     ├─ left
      │  │  │     │     │  ├─ type: MemberAccess
      │  │  │     │     │  ├─ expression
      │  │  │     │     │  │  ├─ type: Identifier
      │  │  │     │     │  │  └─ name: nReservation
      │  │  │     │     │  └─ memberName: reservedBy
      │  │  │     │     └─ right
      │  │  │     │        ├─ type: MemberAccess
      │  │  │     │        ├─ expression
      │  │  │     │        │  ├─ type: Identifier
      │  │  │     │        │  └─ name: msg
      │  │  │     │        └─ memberName: sender
      │  │  │     ├─ 5
      │  │  │     │  ├─ type: ExpressionStatement
      │  │  │     │  └─ expression
      │  │  │     │     ├─ type: BinaryOperation
      │  │  │     │     ├─ operator: =
      │  │  │     │     ├─ left
      │  │  │     │     │  ├─ type: MemberAccess
      │  │  │     │     │  ├─ expression
      │  │  │     │     │  │  ├─ type: Identifier
      │  │  │     │     │  │  └─ name: nReservation
      │  │  │     │     │  └─ memberName: feePaid
      │  │  │     │     └─ right
      │  │  │     │        ├─ type: Identifier
      │  │  │     │        └─ name: reservationFee
      │  │  │     ├─ 6
      │  │  │     │  ├─ type: ExpressionStatement
      │  │  │     │  └─ expression
      │  │  │     │     ├─ type: BinaryOperation
      │  │  │     │     ├─ operator: =
      │  │  │     │     ├─ left
      │  │  │     │     │  ├─ type: MemberAccess
      │  │  │     │     │  ├─ expression
      │  │  │     │     │  │  ├─ type: Identifier
      │  │  │     │     │  │  └─ name: nReservation
      │  │  │     │     │  └─ memberName: reservationExpiry
      │  │  │     │     └─ right
      │  │  │     │        ├─ type: BinaryOperation
      │  │  │     │        ├─ operator: +
      │  │  │     │        ├─ left
      │  │  │     │        │  ├─ type: MemberAccess
      │  │  │     │        │  ├─ expression
      │  │  │     │        │  │  ├─ type: Identifier
      │  │  │     │        │  │  └─ name: block
      │  │  │     │        │  └─ memberName: timestamp
      │  │  │     │        └─ right
      │  │  │     │           ├─ type: Identifier
      │  │  │     │           └─ name: reservationDuration
      │  │  │     ├─ 7
      │  │  │     │  ├─ type: IfStatement
      │  │  │     │  ├─ condition
      │  │  │     │  │  ├─ type: BinaryOperation
      │  │  │     │  │  ├─ operator: >
      │  │  │     │  │  ├─ left
      │  │  │     │  │  │  ├─ type: MemberAccess
      │  │  │     │  │  │  ├─ expression
      │  │  │     │  │  │  │  ├─ type: Identifier
      │  │  │     │  │  │  │  └─ name: msg
      │  │  │     │  │  │  └─ memberName: value
      │  │  │     │  │  └─ right
      │  │  │     │  │     ├─ type: Identifier
      │  │  │     │  │     └─ name: reservationFee
      │  │  │     │  ├─ trueBody
      │  │  │     │  │  ├─ type: Block
      │  │  │     │  │  └─ statements
      │  │  │     │  │     └─ 0
      │  │  │     │  │        ├─ type: ExpressionStatement
      │  │  │     │  │        └─ expression
      │  │  │     │  │           ├─ type: FunctionCall
      │  │  │     │  │           ├─ expression
      │  │  │     │  │           │  ├─ type: Identifier
      │  │  │     │  │           │  └─ name: safeTransfer
      │  │  │     │  │           ├─ arguments
      │  │  │     │  │           │  ├─ 0
      │  │  │     │  │           │  │  ├─ type: MemberAccess
      │  │  │     │  │           │  │  ├─ expression
      │  │  │     │  │           │  │  │  ├─ type: Identifier
      │  │  │     │  │           │  │  │  └─ name: msg
      │  │  │     │  │           │  │  └─ memberName: sender
      │  │  │     │  │           │  └─ 1
      │  │  │     │  │           │     ├─ type: BinaryOperation
      │  │  │     │  │           │     ├─ operator: -
      │  │  │     │  │           │     ├─ left
      │  │  │     │  │           │     │  ├─ type: MemberAccess
      │  │  │     │  │           │     │  ├─ expression
      │  │  │     │  │           │     │  │  ├─ type: Identifier
      │  │  │     │  │           │     │  │  └─ name: msg
      │  │  │     │  │           │     │  └─ memberName: value
      │  │  │     │  │           │     └─ right
      │  │  │     │  │           │        ├─ type: Identifier
      │  │  │     │  │           │        └─ name: reservationFee
      │  │  │     │  │           ├─ names
      │  │  │     │  │           └─ identifiers
      │  │  │     │  └─ falseBody
      │  │  │     └─ 8
      │  │  │        ├─ type: EmitStatement
      │  │  │        └─ eventCall
      │  │  │           ├─ type: FunctionCall
      │  │  │           ├─ expression
      │  │  │           │  ├─ type: Identifier
      │  │  │           │  └─ name: LogNameReservation
      │  │  │           ├─ arguments
      │  │  │           │  ├─ 0
      │  │  │           │  │  ├─ type: MemberAccess
      │  │  │           │  │  ├─ expression
      │  │  │           │  │  │  ├─ type: Identifier
      │  │  │           │  │  │  └─ name: msg
      │  │  │           │  │  └─ memberName: sender
      │  │  │           │  ├─ 1
      │  │  │           │  │  ├─ type: Identifier
      │  │  │           │  │  └─ name: _reservationHash
      │  │  │           │  ├─ 2
      │  │  │           │  │  ├─ type: Identifier
      │  │  │           │  │  └─ name: reservationFee
      │  │  │           │  └─ 3
      │  │  │           │     ├─ type: MemberAccess
      │  │  │           │     ├─ expression
      │  │  │           │     │  ├─ type: Identifier
      │  │  │           │     │  └─ name: nReservation
      │  │  │           │     └─ memberName: reservationExpiry
      │  │  │           ├─ names
      │  │  │           └─ identifiers
      │  │  ├─ visibility: external
      │  │  ├─ modifiers
      │  │  ├─ override
      │  │  ├─ isConstructor: false
      │  │  ├─ isReceiveEther: false
      │  │  ├─ isFallback: false
      │  │  ├─ isVirtual: false
      │  │  └─ stateMutability: payable
      │  ├─ 8
      │  │  ├─ type: FunctionDefinition
      │  │  ├─ name: registerName
      │  │  ├─ parameters
      │  │  │  └─ 0
      │  │  │     ├─ type: VariableDeclaration
      │  │  │     ├─ typeName
      │  │  │     │  ├─ type: ElementaryTypeName
      │  │  │     │  ├─ name: string
      │  │  │     │  └─ stateMutability
      │  │  │     ├─ name: _name
      │  │  │     ├─ identifier
      │  │  │     │  ├─ type: Identifier
      │  │  │     │  └─ name: _name
      │  │  │     ├─ storageLocation: calldata
      │  │  │     ├─ isStateVar: false
      │  │  │     ├─ isIndexed: false
      │  │  │     └─ expression
      │  │  ├─ returnParameters
      │  │  ├─ body
      │  │  │  ├─ type: Block
      │  │  │  └─ statements
      │  │  │     ├─ 0
      │  │  │     │  ├─ type: VariableDeclarationStatement
      │  │  │     │  ├─ variables
      │  │  │     │  │  └─ 0
      │  │  │     │  │     ├─ type: VariableDeclaration
      │  │  │     │  │     ├─ typeName
      │  │  │     │  │     │  ├─ type: ElementaryTypeName
      │  │  │     │  │     │  ├─ name: bytes32
      │  │  │     │  │     │  └─ stateMutability
      │  │  │     │  │     ├─ name: reservationHash
      │  │  │     │  │     ├─ identifier
      │  │  │     │  │     │  ├─ type: Identifier
      │  │  │     │  │     │  └─ name: reservationHash
      │  │  │     │  │     ├─ storageLocation
      │  │  │     │  │     ├─ isStateVar: false
      │  │  │     │  │     ├─ isIndexed: false
      │  │  │     │  │     └─ expression
      │  │  │     │  └─ initialValue
      │  │  │     │     ├─ type: FunctionCall
      │  │  │     │     ├─ expression
      │  │  │     │     │  ├─ type: MemberAccess
      │  │  │     │     │  ├─ expression
      │  │  │     │     │  │  ├─ type: Identifier
      │  │  │     │     │  │  └─ name: vnsUtils
      │  │  │     │     │  └─ memberName: _getReservationHash
      │  │  │     │     ├─ arguments
      │  │  │     │     │  ├─ 0
      │  │  │     │     │  │  ├─ type: Identifier
      │  │  │     │     │  │  └─ name: _name
      │  │  │     │     │  └─ 1
      │  │  │     │     │     ├─ type: MemberAccess
      │  │  │     │     │     ├─ expression
      │  │  │     │     │     │  ├─ type: Identifier
      │  │  │     │     │     │  └─ name: msg
      │  │  │     │     │     └─ memberName: sender
      │  │  │     │     ├─ names
      │  │  │     │     └─ identifiers
      │  │  │     ├─ 1
      │  │  │     │  ├─ type: ExpressionStatement
      │  │  │     │  └─ expression
      │  │  │     │     ├─ type: FunctionCall
      │  │  │     │     ├─ expression
      │  │  │     │     │  ├─ type: Identifier
      │  │  │     │     │  └─ name: require
      │  │  │     │     ├─ arguments
      │  │  │     │     │  ├─ 0
      │  │  │     │     │  │  ├─ type: BinaryOperation
      │  │  │     │     │  │  ├─ operator: &&
      │  │  │     │     │  │  ├─ left
      │  │  │     │     │  │  │  ├─ type: BinaryOperation
      │  │  │     │     │  │  │  ├─ operator: <
      │  │  │     │     │  │  │  ├─ left
      │  │  │     │     │  │  │  │  ├─ type: MemberAccess
      │  │  │     │     │  │  │  │  ├─ expression
      │  │  │     │     │  │  │  │  │  ├─ type: Identifier
      │  │  │     │     │  │  │  │  │  └─ name: block
      │  │  │     │     │  │  │  │  └─ memberName: timestamp
      │  │  │     │     │  │  │  └─ right
      │  │  │     │     │  │  │     ├─ type: MemberAccess
      │  │  │     │     │  │  │     ├─ expression
      │  │  │     │     │  │  │     │  ├─ type: IndexAccess
      │  │  │     │     │  │  │     │  ├─ base
      │  │  │     │     │  │  │     │  │  ├─ type: Identifier
      │  │  │     │     │  │  │     │  │  └─ name: getNameReservation
      │  │  │     │     │  │  │     │  └─ index
      │  │  │     │     │  │  │     │     ├─ type: Identifier
      │  │  │     │     │  │  │     │     └─ name: reservationHash
      │  │  │     │     │  │  │     └─ memberName: reservationExpiry
      │  │  │     │     │  │  └─ right
      │  │  │     │     │  │     ├─ type: BinaryOperation
      │  │  │     │     │  │     ├─ operator: !=
      │  │  │     │     │  │     ├─ left
      │  │  │     │     │  │     │  ├─ type: MemberAccess
      │  │  │     │     │  │     │  ├─ expression
      │  │  │     │     │  │     │  │  ├─ type: Identifier
      │  │  │     │     │  │     │  │  └─ name: block
      │  │  │     │     │  │     │  └─ memberName: timestamp
      │  │  │     │     │  │     └─ right
      │  │  │     │     │  │        ├─ type: NumberLiteral
      │  │  │     │     │  │        ├─ number: 0
      │  │  │     │     │  │        └─ subdenomination
      │  │  │     │     │  └─ 1
      │  │  │     │     │     ├─ type: StringLiteral
      │  │  │     │     │     ├─ value: ERR: NOT RESERVED OR EXPIRED
      │  │  │     │     │     ├─ parts
      │  │  │     │     │     │  └─ 0: ERR: NOT RESERVED OR EXPIRED
      │  │  │     │     │     └─ isUnicode
      │  │  │     │     │        └─ 0: false
      │  │  │     │     ├─ names
      │  │  │     │     └─ identifiers
      │  │  │     ├─ 2
      │  │  │     │  ├─ type: VariableDeclarationStatement
      │  │  │     │  ├─ variables
      │  │  │     │  │  └─ 0
      │  │  │     │  │     ├─ type: VariableDeclaration
      │  │  │     │  │     ├─ typeName
      │  │  │     │  │     │  ├─ type: ElementaryTypeName
      │  │  │     │  │     │  ├─ name: bytes32
      │  │  │     │  │     │  └─ stateMutability
      │  │  │     │  │     ├─ name: nameHash
      │  │  │     │  │     ├─ identifier
      │  │  │     │  │     │  ├─ type: Identifier
      │  │  │     │  │     │  └─ name: nameHash
      │  │  │     │  │     ├─ storageLocation
      │  │  │     │  │     ├─ isStateVar: false
      │  │  │     │  │     ├─ isIndexed: false
      │  │  │     │  │     └─ expression
      │  │  │     │  └─ initialValue
      │  │  │     │     ├─ type: FunctionCall
      │  │  │     │     ├─ expression
      │  │  │     │     │  ├─ type: MemberAccess
      │  │  │     │     │  ├─ expression
      │  │  │     │     │  │  ├─ type: Identifier
      │  │  │     │     │  │  └─ name: vnsUtils
      │  │  │     │     │  └─ memberName: _getNameHash
      │  │  │     │     ├─ arguments
      │  │  │     │     │  └─ 0
      │  │  │     │     │     ├─ type: Identifier
      │  │  │     │     │     └─ name: _name
      │  │  │     │     ├─ names
      │  │  │     │     └─ identifiers
      │  │  │     ├─ 3
      │  │  │     │  ├─ type: ExpressionStatement
      │  │  │     │  └─ expression
      │  │  │     │     ├─ type: FunctionCall
      │  │  │     │     ├─ expression
      │  │  │     │     │  ├─ type: Identifier
      │  │  │     │     │  └─ name: require
      │  │  │     │     ├─ arguments
      │  │  │     │     │  ├─ 0
      │  │  │     │     │  │  ├─ type: FunctionCall
      │  │  │     │     │  │  ├─ expression
      │  │  │     │     │  │  │  ├─ type: Identifier
      │  │  │     │     │  │  │  └─ name: checkNameAvailability
      │  │  │     │     │  │  ├─ arguments
      │  │  │     │     │  │  │  └─ 0
      │  │  │     │     │  │  │     ├─ type: Identifier
      │  │  │     │     │  │  │     └─ name: _name
      │  │  │     │     │  │  ├─ names
      │  │  │     │     │  │  └─ identifiers
      │  │  │     │     │  └─ 1
      │  │  │     │     │     ├─ type: StringLiteral
      │  │  │     │     │     ├─ value: ERR : NAME ALREADY REGISTERED
      │  │  │     │     │     ├─ parts
      │  │  │     │     │     │  └─ 0: ERR : NAME ALREADY REGISTERED
      │  │  │     │     │     └─ isUnicode
      │  │  │     │     │        └─ 0: false
      │  │  │     │     ├─ names
      │  │  │     │     └─ identifiers
      │  │  │     ├─ 4
      │  │  │     │  ├─ type: VariableDeclarationStatement
      │  │  │     │  ├─ variables
      │  │  │     │  │  └─ 0
      │  │  │     │  │     ├─ type: VariableDeclaration
      │  │  │     │  │     ├─ typeName
      │  │  │     │  │     │  ├─ type: ElementaryTypeName
      │  │  │     │  │     │  ├─ name: uint256
      │  │  │     │  │     │  └─ stateMutability
      │  │  │     │  │     ├─ name: totalFee
      │  │  │     │  │     ├─ identifier
      │  │  │     │  │     │  ├─ type: Identifier
      │  │  │     │  │     │  └─ name: totalFee
      │  │  │     │  │     ├─ storageLocation
      │  │  │     │  │     ├─ isStateVar: false
      │  │  │     │  │     ├─ isIndexed: false
      │  │  │     │  │     └─ expression
      │  │  │     │  └─ initialValue
      │  │  │     │     ├─ type: FunctionCall
      │  │  │     │     ├─ expression
      │  │  │     │     │  ├─ type: MemberAccess
      │  │  │     │     │  ├─ expression
      │  │  │     │     │  │  ├─ type: Identifier
      │  │  │     │     │  │  └─ name: vnsUtils
      │  │  │     │     │  └─ memberName: _getPrice
      │  │  │     │     ├─ arguments
      │  │  │     │     │  ├─ 0
      │  │  │     │     │  │  ├─ type: Identifier
      │  │  │     │     │  │  └─ name: perCharRegistrationFee
      │  │  │     │     │  └─ 1
      │  │  │     │     │     ├─ type: Identifier
      │  │  │     │     │     └─ name: _name
      │  │  │     │     ├─ names
      │  │  │     │     └─ identifiers
      │  │  │     ├─ 5
      │  │  │     │  ├─ type: VariableDeclarationStatement
      │  │  │     │  ├─ variables
      │  │  │     │  │  └─ 0
      │  │  │     │  │     ├─ type: VariableDeclaration
      │  │  │     │  │     ├─ typeName
      │  │  │     │  │     │  ├─ type: ElementaryTypeName
      │  │  │     │  │     │  ├─ name: uint256
      │  │  │     │  │     │  └─ stateMutability
      │  │  │     │  │     ├─ name: returnableAmount
      │  │  │     │  │     ├─ identifier
      │  │  │     │  │     │  ├─ type: Identifier
      │  │  │     │  │     │  └─ name: returnableAmount
      │  │  │     │  │     ├─ storageLocation
      │  │  │     │  │     ├─ isStateVar: false
      │  │  │     │  │     ├─ isIndexed: false
      │  │  │     │  │     └─ expression
      │  │  │     │  └─ initialValue
      │  │  │     │     ├─ type: NumberLiteral
      │  │  │     │     ├─ number: 0
      │  │  │     │     └─ subdenomination
      │  │  │     ├─ 6
      │  │  │     │  ├─ type: IfStatement
      │  │  │     │  ├─ condition
      │  │  │     │  │  ├─ type: BinaryOperation
      │  │  │     │  │  ├─ operator: >
      │  │  │     │  │  ├─ left
      │  │  │     │  │  │  ├─ type: Identifier
      │  │  │     │  │  │  └─ name: totalFee
      │  │  │     │  │  └─ right
      │  │  │     │  │     ├─ type: Identifier
      │  │  │     │  │     └─ name: reservationFee
      │  │  │     │  ├─ trueBody
      │  │  │     │  │  ├─ type: Block
      │  │  │     │  │  └─ statements
      │  │  │     │  │     ├─ 0
      │  │  │     │  │     │  ├─ type: VariableDeclarationStatement
      │  │  │     │  │     │  ├─ variables
      │  │  │     │  │     │  │  └─ 0
      │  │  │     │  │     │  │     ├─ type: VariableDeclaration
      │  │  │     │  │     │  │     ├─ typeName
      │  │  │     │  │     │  │     │  ├─ type: ElementaryTypeName
      │  │  │     │  │     │  │     │  ├─ name: uint256
      │  │  │     │  │     │  │     │  └─ stateMutability
      │  │  │     │  │     │  │     ├─ name: payableFee
      │  │  │     │  │     │  │     ├─ identifier
      │  │  │     │  │     │  │     │  ├─ type: Identifier
      │  │  │     │  │     │  │     │  └─ name: payableFee
      │  │  │     │  │     │  │     ├─ storageLocation
      │  │  │     │  │     │  │     ├─ isStateVar: false
      │  │  │     │  │     │  │     ├─ isIndexed: false
      │  │  │     │  │     │  │     └─ expression
      │  │  │     │  │     │  └─ initialValue
      │  │  │     │  │     │     ├─ type: BinaryOperation
      │  │  │     │  │     │     ├─ operator: -
      │  │  │     │  │     │     ├─ left
      │  │  │     │  │     │     │  ├─ type: Identifier
      │  │  │     │  │     │     │  └─ name: totalFee
      │  │  │     │  │     │     └─ right
      │  │  │     │  │     │        ├─ type: Identifier
      │  │  │     │  │     │        └─ name: reservationFee
      │  │  │     │  │     ├─ 1
      │  │  │     │  │     │  ├─ type: ExpressionStatement
      │  │  │     │  │     │  └─ expression
      │  │  │     │  │     │     ├─ type: FunctionCall
      │  │  │     │  │     │     ├─ expression
      │  │  │     │  │     │     │  ├─ type: Identifier
      │  │  │     │  │     │     │  └─ name: require
      │  │  │     │  │     │     ├─ arguments
      │  │  │     │  │     │     │  ├─ 0
      │  │  │     │  │     │     │  │  ├─ type: BinaryOperation
      │  │  │     │  │     │     │  │  ├─ operator: >=
      │  │  │     │  │     │     │  │  ├─ left
      │  │  │     │  │     │     │  │  │  ├─ type: MemberAccess
      │  │  │     │  │     │     │  │  │  ├─ expression
      │  │  │     │  │     │     │  │  │  │  ├─ type: Identifier
      │  │  │     │  │     │     │  │  │  │  └─ name: msg
      │  │  │     │  │     │     │  │  │  └─ memberName: value
      │  │  │     │  │     │     │  │  └─ right
      │  │  │     │  │     │     │  │     ├─ type: Identifier
      │  │  │     │  │     │     │  │     └─ name: payableFee
      │  │  │     │  │     │     │  └─ 1
      │  │  │     │  │     │     │     ├─ type: StringLiteral
      │  │  │     │  │     │     │     ├─ value: ERR : INSUFFICIENT FEE
      │  │  │     │  │     │     │     ├─ parts
      │  │  │     │  │     │     │     │  └─ 0: ERR : INSUFFICIENT FEE
      │  │  │     │  │     │     │     └─ isUnicode
      │  │  │     │  │     │     │        └─ 0: false
      │  │  │     │  │     │     ├─ names
      │  │  │     │  │     │     └─ identifiers
      │  │  │     │  │     └─ 2
      │  │  │     │  │        ├─ type: IfStatement
      │  │  │     │  │        ├─ condition
      │  │  │     │  │        │  ├─ type: BinaryOperation
      │  │  │     │  │        │  ├─ operator: >
      │  │  │     │  │        │  ├─ left
      │  │  │     │  │        │  │  ├─ type: MemberAccess
      │  │  │     │  │        │  │  ├─ expression
      │  │  │     │  │        │  │  │  ├─ type: Identifier
      │  │  │     │  │        │  │  │  └─ name: msg
      │  │  │     │  │        │  │  └─ memberName: value
      │  │  │     │  │        │  └─ right
      │  │  │     │  │        │     ├─ type: Identifier
      │  │  │     │  │        │     └─ name: payableFee
      │  │  │     │  │        ├─ trueBody
      │  │  │     │  │        │  ├─ type: Block
      │  │  │     │  │        │  └─ statements
      │  │  │     │  │        │     └─ 0
      │  │  │     │  │        │        ├─ type: ExpressionStatement
      │  │  │     │  │        │        └─ expression
      │  │  │     │  │        │           ├─ type: BinaryOperation
      │  │  │     │  │        │           ├─ operator: =
      │  │  │     │  │        │           ├─ left
      │  │  │     │  │        │           │  ├─ type: Identifier
      │  │  │     │  │        │           │  └─ name: returnableAmount
      │  │  │     │  │        │           └─ right
      │  │  │     │  │        │              ├─ type: BinaryOperation
      │  │  │     │  │        │              ├─ operator: -
      │  │  │     │  │        │              ├─ left
      │  │  │     │  │        │              │  ├─ type: MemberAccess
      │  │  │     │  │        │              │  ├─ expression
      │  │  │     │  │        │              │  │  ├─ type: Identifier
      │  │  │     │  │        │              │  │  └─ name: msg
      │  │  │     │  │        │              │  └─ memberName: value
      │  │  │     │  │        │              └─ right
      │  │  │     │  │        │                 ├─ type: Identifier
      │  │  │     │  │        │                 └─ name: payableFee
      │  │  │     │  │        └─ falseBody
      │  │  │     │  └─ falseBody
      │  │  │     │     ├─ type: Block
      │  │  │     │     └─ statements
      │  │  │     │        └─ 0
      │  │  │     │           ├─ type: ExpressionStatement
      │  │  │     │           └─ expression
      │  │  │     │              ├─ type: BinaryOperation
      │  │  │     │              ├─ operator: =
      │  │  │     │              ├─ left
      │  │  │     │              │  ├─ type: Identifier
      │  │  │     │              │  └─ name: returnableAmount
      │  │  │     │              └─ right
      │  │  │     │                 ├─ type: BinaryOperation
      │  │  │     │                 ├─ operator: +
      │  │  │     │                 ├─ left
      │  │  │     │                 │  ├─ type: TupleExpression
      │  │  │     │                 │  ├─ components
      │  │  │     │                 │  │  └─ 0
      │  │  │     │                 │  │     ├─ type: BinaryOperation
      │  │  │     │                 │  │     ├─ operator: -
      │  │  │     │                 │  │     ├─ left
      │  │  │     │                 │  │     │  ├─ type: Identifier
      │  │  │     │                 │  │     │  └─ name: reservationFee
      │  │  │     │                 │  │     └─ right
      │  │  │     │                 │  │        ├─ type: Identifier
      │  │  │     │                 │  │        └─ name: totalFee
      │  │  │     │                 │  └─ isArray: false
      │  │  │     │                 └─ right
      │  │  │     │                    ├─ type: MemberAccess
      │  │  │     │                    ├─ expression
      │  │  │     │                    │  ├─ type: Identifier
      │  │  │     │                    │  └─ name: msg
      │  │  │     │                    └─ memberName: value
      │  │  │     ├─ 7
      │  │  │     │  ├─ type: VariableDeclarationStatement
      │  │  │     │  ├─ variables
      │  │  │     │  │  └─ 0
      │  │  │     │  │     ├─ type: VariableDeclaration
      │  │  │     │  │     ├─ typeName
      │  │  │     │  │     │  ├─ type: UserDefinedTypeName
      │  │  │     │  │     │  └─ namePath: NameRegistry
      │  │  │     │  │     ├─ name: vnsReg
      │  │  │     │  │     ├─ identifier
      │  │  │     │  │     │  ├─ type: Identifier
      │  │  │     │  │     │  └─ name: vnsReg
      │  │  │     │  │     ├─ storageLocation: storage
      │  │  │     │  │     ├─ isStateVar: false
      │  │  │     │  │     ├─ isIndexed: false
      │  │  │     │  │     └─ expression
      │  │  │     │  └─ initialValue
      │  │  │     │     ├─ type: IndexAccess
      │  │  │     │     ├─ base
      │  │  │     │     │  ├─ type: Identifier
      │  │  │     │     │  └─ name: getNameRegistry
      │  │  │     │     └─ index
      │  │  │     │        ├─ type: Identifier
      │  │  │     │        └─ name: nameHash
      │  │  │     ├─ 8
      │  │  │     │  ├─ type: IfStatement
      │  │  │     │  ├─ condition
      │  │  │     │  │  ├─ type: BinaryOperation
      │  │  │     │  │  ├─ operator: >
      │  │  │     │  │  ├─ left
      │  │  │     │  │  │  ├─ type: MemberAccess
      │  │  │     │  │  │  ├─ expression
      │  │  │     │  │  │  │  ├─ type: Identifier
      │  │  │     │  │  │  │  └─ name: vnsReg
      │  │  │     │  │  │  └─ memberName: feePaid
      │  │  │     │  │  └─ right
      │  │  │     │  │     ├─ type: NumberLiteral
      │  │  │     │  │     ├─ number: 0
      │  │  │     │  │     └─ subdenomination
      │  │  │     │  ├─ trueBody
      │  │  │     │  │  ├─ type: Block
      │  │  │     │  │  └─ statements
      │  │  │     │  │     └─ 0
      │  │  │     │  │        ├─ type: ExpressionStatement
      │  │  │     │  │        └─ expression
      │  │  │     │  │           ├─ type: FunctionCall
      │  │  │     │  │           ├─ expression
      │  │  │     │  │           │  ├─ type: Identifier
      │  │  │     │  │           │  └─ name: _withdrawRegistryDeposit
      │  │  │     │  │           ├─ arguments
      │  │  │     │  │           │  └─ 0
      │  │  │     │  │           │     ├─ type: Identifier
      │  │  │     │  │           │     └─ name: nameHash
      │  │  │     │  │           ├─ names
      │  │  │     │  │           └─ identifiers
      │  │  │     │  └─ falseBody
      │  │  │     ├─ 9
      │  │  │     │  ├─ type: ExpressionStatement
      │  │  │     │  └─ expression
      │  │  │     │     ├─ type: BinaryOperation
      │  │  │     │     ├─ operator: =
      │  │  │     │     ├─ left
      │  │  │     │     │  ├─ type: MemberAccess
      │  │  │     │     │  ├─ expression
      │  │  │     │     │  │  ├─ type: Identifier
      │  │  │     │     │  │  └─ name: vnsReg
      │  │  │     │     │  └─ memberName: registrationExpiry
      │  │  │     │     └─ right
      │  │  │     │        ├─ type: BinaryOperation
      │  │  │     │        ├─ operator: +
      │  │  │     │        ├─ left
      │  │  │     │        │  ├─ type: MemberAccess
      │  │  │     │        │  ├─ expression
      │  │  │     │        │  │  ├─ type: Identifier
      │  │  │     │        │  │  └─ name: block
      │  │  │     │        │  └─ memberName: timestamp
      │  │  │     │        └─ right
      │  │  │     │           ├─ type: Identifier
      │  │  │     │           └─ name: registryDuration
      │  │  │     ├─ 10
      │  │  │     │  ├─ type: ExpressionStatement
      │  │  │     │  └─ expression
      │  │  │     │     ├─ type: BinaryOperation
      │  │  │     │     ├─ operator: =
      │  │  │     │     ├─ left
      │  │  │     │     │  ├─ type: MemberAccess
      │  │  │     │     │  ├─ expression
      │  │  │     │     │  │  ├─ type: Identifier
      │  │  │     │     │  │  └─ name: vnsReg
      │  │  │     │     │  └─ memberName: feePaid
      │  │  │     │     └─ right
      │  │  │     │        ├─ type: Identifier
      │  │  │     │        └─ name: totalFee
      │  │  │     ├─ 11
      │  │  │     │  ├─ type: ExpressionStatement
      │  │  │     │  └─ expression
      │  │  │     │     ├─ type: BinaryOperation
      │  │  │     │     ├─ operator: =
      │  │  │     │     ├─ left
      │  │  │     │     │  ├─ type: MemberAccess
      │  │  │     │     │  ├─ expression
      │  │  │     │     │  │  ├─ type: Identifier
      │  │  │     │     │  │  └─ name: vnsReg
      │  │  │     │     │  └─ memberName: registeredTo
      │  │  │     │     └─ right
      │  │  │     │        ├─ type: MemberAccess
      │  │  │     │        ├─ expression
      │  │  │     │        │  ├─ type: Identifier
      │  │  │     │        │  └─ name: msg
      │  │  │     │        └─ memberName: sender
      │  │  │     ├─ 12
      │  │  │     │  ├─ type: ExpressionStatement
      │  │  │     │  └─ expression
      │  │  │     │     ├─ type: UnaryOperation
      │  │  │     │     ├─ operator: delete
      │  │  │     │     ├─ subExpression
      │  │  │     │     │  ├─ type: TupleExpression
      │  │  │     │     │  ├─ components
      │  │  │     │     │  │  └─ 0
      │  │  │     │     │  │     ├─ type: IndexAccess
      │  │  │     │     │  │     ├─ base
      │  │  │     │     │  │     │  ├─ type: Identifier
      │  │  │     │     │  │     │  └─ name: getNameReservation
      │  │  │     │     │  │     └─ index
      │  │  │     │     │  │        ├─ type: Identifier
      │  │  │     │     │  │        └─ name: reservationHash
      │  │  │     │     │  └─ isArray: false
      │  │  │     │     └─ isPrefix: true
      │  │  │     ├─ 13
      │  │  │     │  ├─ type: IfStatement
      │  │  │     │  ├─ condition
      │  │  │     │  │  ├─ type: BinaryOperation
      │  │  │     │  │  ├─ operator: >
      │  │  │     │  │  ├─ left
      │  │  │     │  │  │  ├─ type: Identifier
      │  │  │     │  │  │  └─ name: returnableAmount
      │  │  │     │  │  └─ right
      │  │  │     │  │     ├─ type: NumberLiteral
      │  │  │     │  │     ├─ number: 0
      │  │  │     │  │     └─ subdenomination
      │  │  │     │  ├─ trueBody
      │  │  │     │  │  ├─ type: Block
      │  │  │     │  │  └─ statements
      │  │  │     │  │     └─ 0
      │  │  │     │  │        ├─ type: ExpressionStatement
      │  │  │     │  │        └─ expression
      │  │  │     │  │           ├─ type: FunctionCall
      │  │  │     │  │           ├─ expression
      │  │  │     │  │           │  ├─ type: Identifier
      │  │  │     │  │           │  └─ name: safeTransfer
      │  │  │     │  │           ├─ arguments
      │  │  │     │  │           │  ├─ 0
      │  │  │     │  │           │  │  ├─ type: MemberAccess
      │  │  │     │  │           │  │  ├─ expression
      │  │  │     │  │           │  │  │  ├─ type: Identifier
      │  │  │     │  │           │  │  │  └─ name: msg
      │  │  │     │  │           │  │  └─ memberName: sender
      │  │  │     │  │           │  └─ 1
      │  │  │     │  │           │     ├─ type: Identifier
      │  │  │     │  │           │     └─ name: returnableAmount
      │  │  │     │  │           ├─ names
      │  │  │     │  │           └─ identifiers
      │  │  │     │  └─ falseBody
      │  │  │     └─ 14
      │  │  │        ├─ type: EmitStatement
      │  │  │        └─ eventCall
      │  │  │           ├─ type: FunctionCall
      │  │  │           ├─ expression
      │  │  │           │  ├─ type: Identifier
      │  │  │           │  └─ name: LogNameRegistered
      │  │  │           ├─ arguments
      │  │  │           │  ├─ 0
      │  │  │           │  │  ├─ type: MemberAccess
      │  │  │           │  │  ├─ expression
      │  │  │           │  │  │  ├─ type: Identifier
      │  │  │           │  │  │  └─ name: msg
      │  │  │           │  │  └─ memberName: sender
      │  │  │           │  ├─ 1
      │  │  │           │  │  ├─ type: Identifier
      │  │  │           │  │  └─ name: _name
      │  │  │           │  ├─ 2
      │  │  │           │  │  ├─ type: MemberAccess
      │  │  │           │  │  ├─ expression
      │  │  │           │  │  │  ├─ type: Identifier
      │  │  │           │  │  │  └─ name: vnsReg
      │  │  │           │  │  └─ memberName: feePaid
      │  │  │           │  └─ 3
      │  │  │           │     ├─ type: MemberAccess
      │  │  │           │     ├─ expression
      │  │  │           │     │  ├─ type: Identifier
      │  │  │           │     │  └─ name: vnsReg
      │  │  │           │     └─ memberName: registrationExpiry
      │  │  │           ├─ names
      │  │  │           └─ identifiers
      │  │  ├─ visibility: external
      │  │  ├─ modifiers
      │  │  ├─ override
      │  │  ├─ isConstructor: false
      │  │  ├─ isReceiveEther: false
      │  │  ├─ isFallback: false
      │  │  ├─ isVirtual: false
      │  │  └─ stateMutability: payable
      │  ├─ 9
      │  │  ├─ type: FunctionDefinition
      │  │  ├─ name: renewName
      │  │  ├─ parameters
      │  │  │  └─ 0
      │  │  │     ├─ type: VariableDeclaration
      │  │  │     ├─ typeName
      │  │  │     │  ├─ type: ElementaryTypeName
      │  │  │     │  ├─ name: string
      │  │  │     │  └─ stateMutability
      │  │  │     ├─ name: _name
      │  │  │     ├─ identifier
      │  │  │     │  ├─ type: Identifier
      │  │  │     │  └─ name: _name
      │  │  │     ├─ storageLocation: calldata
      │  │  │     ├─ isStateVar: false
      │  │  │     ├─ isIndexed: false
      │  │  │     └─ expression
      │  │  ├─ returnParameters
      │  │  ├─ body
      │  │  │  ├─ type: Block
      │  │  │  └─ statements
      │  │  │     ├─ 0
      │  │  │     │  ├─ type: VariableDeclarationStatement
      │  │  │     │  ├─ variables
      │  │  │     │  │  └─ 0
      │  │  │     │  │     ├─ type: VariableDeclaration
      │  │  │     │  │     ├─ typeName
      │  │  │     │  │     │  ├─ type: ElementaryTypeName
      │  │  │     │  │     │  ├─ name: bytes32
      │  │  │     │  │     │  └─ stateMutability
      │  │  │     │  │     ├─ name: nameHash
      │  │  │     │  │     ├─ identifier
      │  │  │     │  │     │  ├─ type: Identifier
      │  │  │     │  │     │  └─ name: nameHash
      │  │  │     │  │     ├─ storageLocation
      │  │  │     │  │     ├─ isStateVar: false
      │  │  │     │  │     ├─ isIndexed: false
      │  │  │     │  │     └─ expression
      │  │  │     │  └─ initialValue
      │  │  │     │     ├─ type: FunctionCall
      │  │  │     │     ├─ expression
      │  │  │     │     │  ├─ type: MemberAccess
      │  │  │     │     │  ├─ expression
      │  │  │     │     │  │  ├─ type: Identifier
      │  │  │     │     │  │  └─ name: vnsUtils
      │  │  │     │     │  └─ memberName: _getNameHash
      │  │  │     │     ├─ arguments
      │  │  │     │     │  └─ 0
      │  │  │     │     │     ├─ type: Identifier
      │  │  │     │     │     └─ name: _name
      │  │  │     │     ├─ names
      │  │  │     │     └─ identifiers
      │  │  │     ├─ 1
      │  │  │     │  ├─ type: VariableDeclarationStatement
      │  │  │     │  ├─ variables
      │  │  │     │  │  └─ 0
      │  │  │     │  │     ├─ type: VariableDeclaration
      │  │  │     │  │     ├─ typeName
      │  │  │     │  │     │  ├─ type: UserDefinedTypeName
      │  │  │     │  │     │  └─ namePath: NameRegistry
      │  │  │     │  │     ├─ name: vnsReg
      │  │  │     │  │     ├─ identifier
      │  │  │     │  │     │  ├─ type: Identifier
      │  │  │     │  │     │  └─ name: vnsReg
      │  │  │     │  │     ├─ storageLocation: storage
      │  │  │     │  │     ├─ isStateVar: false
      │  │  │     │  │     ├─ isIndexed: false
      │  │  │     │  │     └─ expression
      │  │  │     │  └─ initialValue
      │  │  │     │     ├─ type: IndexAccess
      │  │  │     │     ├─ base
      │  │  │     │     │  ├─ type: Identifier
      │  │  │     │     │  └─ name: getNameRegistry
      │  │  │     │     └─ index
      │  │  │     │        ├─ type: Identifier
      │  │  │     │        └─ name: nameHash
      │  │  │     ├─ 2
      │  │  │     │  ├─ type: ExpressionStatement
      │  │  │     │  └─ expression
      │  │  │     │     ├─ type: FunctionCall
      │  │  │     │     ├─ expression
      │  │  │     │     │  ├─ type: Identifier
      │  │  │     │     │  └─ name: require
      │  │  │     │     ├─ arguments
      │  │  │     │     │  ├─ 0
      │  │  │     │     │  │  ├─ type: BinaryOperation
      │  │  │     │     │  │  ├─ operator: <
      │  │  │     │     │  │  ├─ left
      │  │  │     │     │  │  │  ├─ type: MemberAccess
      │  │  │     │     │  │  │  ├─ expression
      │  │  │     │     │  │  │  │  ├─ type: Identifier
      │  │  │     │     │  │  │  │  └─ name: block
      │  │  │     │     │  │  │  └─ memberName: timestamp
      │  │  │     │     │  │  └─ right
      │  │  │     │     │  │     ├─ type: MemberAccess
      │  │  │     │     │  │     ├─ expression
      │  │  │     │     │  │     │  ├─ type: Identifier
      │  │  │     │     │  │     │  └─ name: vnsReg
      │  │  │     │     │  │     └─ memberName: registrationExpiry
      │  │  │     │     │  └─ 1
      │  │  │     │     │     ├─ type: StringLiteral
      │  │  │     │     │     ├─ value: Expired or not registerd
      │  │  │     │     │     ├─ parts
      │  │  │     │     │     │  └─ 0: Expired or not registerd
      │  │  │     │     │     └─ isUnicode
      │  │  │     │     │        └─ 0: false
      │  │  │     │     ├─ names
      │  │  │     │     └─ identifiers
      │  │  │     ├─ 3
      │  │  │     │  ├─ type: ExpressionStatement
      │  │  │     │  └─ expression
      │  │  │     │     ├─ type: FunctionCall
      │  │  │     │     ├─ expression
      │  │  │     │     │  ├─ type: Identifier
      │  │  │     │     │  └─ name: require
      │  │  │     │     ├─ arguments
      │  │  │     │     │  ├─ 0
      │  │  │     │     │  │  ├─ type: BinaryOperation
      │  │  │     │     │  │  ├─ operator: ==
      │  │  │     │     │  │  ├─ left
      │  │  │     │     │  │  │  ├─ type: MemberAccess
      │  │  │     │     │  │  │  ├─ expression
      │  │  │     │     │  │  │  │  ├─ type: Identifier
      │  │  │     │     │  │  │  │  └─ name: vnsReg
      │  │  │     │     │  │  │  └─ memberName: registeredTo
      │  │  │     │     │  │  └─ right
      │  │  │     │     │  │     ├─ type: MemberAccess
      │  │  │     │     │  │     ├─ expression
      │  │  │     │     │  │     │  ├─ type: Identifier
      │  │  │     │     │  │     │  └─ name: msg
      │  │  │     │     │  │     └─ memberName: sender
      │  │  │     │     │  └─ 1
      │  │  │     │     │     ├─ type: StringLiteral
      │  │  │     │     │     ├─ value: ERR : AUTH FAILED
      │  │  │     │     │     ├─ parts
      │  │  │     │     │     │  └─ 0: ERR : AUTH FAILED
      │  │  │     │     │     └─ isUnicode
      │  │  │     │     │        └─ 0: false
      │  │  │     │     ├─ names
      │  │  │     │     └─ identifiers
      │  │  │     ├─ 4
      │  │  │     │  ├─ type: ExpressionStatement
      │  │  │     │  └─ expression
      │  │  │     │     ├─ type: BinaryOperation
      │  │  │     │     ├─ operator: =
      │  │  │     │     ├─ left
      │  │  │     │     │  ├─ type: MemberAccess
      │  │  │     │     │  ├─ expression
      │  │  │     │     │  │  ├─ type: Identifier
      │  │  │     │     │  │  └─ name: vnsReg
      │  │  │     │     │  └─ memberName: registrationExpiry
      │  │  │     │     └─ right
      │  │  │     │        ├─ type: BinaryOperation
      │  │  │     │        ├─ operator: +
      │  │  │     │        ├─ left
      │  │  │     │        │  ├─ type: MemberAccess
      │  │  │     │        │  ├─ expression
      │  │  │     │        │  │  ├─ type: Identifier
      │  │  │     │        │  │  └─ name: block
      │  │  │     │        │  └─ memberName: timestamp
      │  │  │     │        └─ right
      │  │  │     │           ├─ type: Identifier
      │  │  │     │           └─ name: registryDuration
      │  │  │     └─ 5
      │  │  │        ├─ type: EmitStatement
      │  │  │        └─ eventCall
      │  │  │           ├─ type: FunctionCall
      │  │  │           ├─ expression
      │  │  │           │  ├─ type: Identifier
      │  │  │           │  └─ name: LogNameRenew
      │  │  │           ├─ arguments
      │  │  │           │  ├─ 0
      │  │  │           │  │  ├─ type: MemberAccess
      │  │  │           │  │  ├─ expression
      │  │  │           │  │  │  ├─ type: Identifier
      │  │  │           │  │  │  └─ name: msg
      │  │  │           │  │  └─ memberName: sender
      │  │  │           │  ├─ 1
      │  │  │           │  │  ├─ type: Identifier
      │  │  │           │  │  └─ name: nameHash
      │  │  │           │  └─ 2
      │  │  │           │     ├─ type: MemberAccess
      │  │  │           │     ├─ expression
      │  │  │           │     │  ├─ type: Identifier
      │  │  │           │     │  └─ name: vnsReg
      │  │  │           │     └─ memberName: registrationExpiry
      │  │  │           ├─ names
      │  │  │           └─ identifiers
      │  │  ├─ visibility: external
      │  │  ├─ modifiers
      │  │  ├─ override
      │  │  ├─ isConstructor: false
      │  │  ├─ isReceiveEther: false
      │  │  ├─ isFallback: false
      │  │  ├─ isVirtual: false
      │  │  └─ stateMutability
      │  ├─ 10
      │  │  ├─ type: FunctionDefinition
      │  │  ├─ name: withdrawRegistryDeposit
      │  │  ├─ parameters
      │  │  │  └─ 0
      │  │  │     ├─ type: VariableDeclaration
      │  │  │     ├─ typeName
      │  │  │     │  ├─ type: ElementaryTypeName
      │  │  │     │  ├─ name: string
      │  │  │     │  └─ stateMutability
      │  │  │     ├─ name: _name
      │  │  │     ├─ identifier
      │  │  │     │  ├─ type: Identifier
      │  │  │     │  └─ name: _name
      │  │  │     ├─ storageLocation: calldata
      │  │  │     ├─ isStateVar: false
      │  │  │     ├─ isIndexed: false
      │  │  │     └─ expression
      │  │  ├─ returnParameters
      │  │  ├─ body
      │  │  │  ├─ type: Block
      │  │  │  └─ statements
      │  │  │     ├─ 0
      │  │  │     │  ├─ type: VariableDeclarationStatement
      │  │  │     │  ├─ variables
      │  │  │     │  │  └─ 0
      │  │  │     │  │     ├─ type: VariableDeclaration
      │  │  │     │  │     ├─ typeName
      │  │  │     │  │     │  ├─ type: ElementaryTypeName
      │  │  │     │  │     │  ├─ name: bytes32
      │  │  │     │  │     │  └─ stateMutability
      │  │  │     │  │     ├─ name: nameHash
      │  │  │     │  │     ├─ identifier
      │  │  │     │  │     │  ├─ type: Identifier
      │  │  │     │  │     │  └─ name: nameHash
      │  │  │     │  │     ├─ storageLocation
      │  │  │     │  │     ├─ isStateVar: false
      │  │  │     │  │     ├─ isIndexed: false
      │  │  │     │  │     └─ expression
      │  │  │     │  └─ initialValue
      │  │  │     │     ├─ type: FunctionCall
      │  │  │     │     ├─ expression
      │  │  │     │     │  ├─ type: MemberAccess
      │  │  │     │     │  ├─ expression
      │  │  │     │     │  │  ├─ type: Identifier
      │  │  │     │     │  │  └─ name: vnsUtils
      │  │  │     │     │  └─ memberName: _getNameHash
      │  │  │     │     ├─ arguments
      │  │  │     │     │  └─ 0
      │  │  │     │     │     ├─ type: Identifier
      │  │  │     │     │     └─ name: _name
      │  │  │     │     ├─ names
      │  │  │     │     └─ identifiers
      │  │  │     ├─ 1
      │  │  │     │  ├─ type: VariableDeclarationStatement
      │  │  │     │  ├─ variables
      │  │  │     │  │  └─ 0
      │  │  │     │  │     ├─ type: VariableDeclaration
      │  │  │     │  │     ├─ typeName
      │  │  │     │  │     │  ├─ type: UserDefinedTypeName
      │  │  │     │  │     │  └─ namePath: NameRegistry
      │  │  │     │  │     ├─ name: vnsReg
      │  │  │     │  │     ├─ identifier
      │  │  │     │  │     │  ├─ type: Identifier
      │  │  │     │  │     │  └─ name: vnsReg
      │  │  │     │  │     ├─ storageLocation: storage
      │  │  │     │  │     ├─ isStateVar: false
      │  │  │     │  │     ├─ isIndexed: false
      │  │  │     │  │     └─ expression
      │  │  │     │  └─ initialValue
      │  │  │     │     ├─ type: IndexAccess
      │  │  │     │     ├─ base
      │  │  │     │     │  ├─ type: Identifier
      │  │  │     │     │  └─ name: getNameRegistry
      │  │  │     │     └─ index
      │  │  │     │        ├─ type: Identifier
      │  │  │     │        └─ name: nameHash
      │  │  │     ├─ 2
      │  │  │     │  ├─ type: ExpressionStatement
      │  │  │     │  └─ expression
      │  │  │     │     ├─ type: FunctionCall
      │  │  │     │     ├─ expression
      │  │  │     │     │  ├─ type: Identifier
      │  │  │     │     │  └─ name: require
      │  │  │     │     ├─ arguments
      │  │  │     │     │  ├─ 0
      │  │  │     │     │  │  ├─ type: BinaryOperation
      │  │  │     │     │  │  ├─ operator: ==
      │  │  │     │     │  │  ├─ left
      │  │  │     │     │  │  │  ├─ type: MemberAccess
      │  │  │     │     │  │  │  ├─ expression
      │  │  │     │     │  │  │  │  ├─ type: Identifier
      │  │  │     │     │  │  │  │  └─ name: vnsReg
      │  │  │     │     │  │  │  └─ memberName: registeredTo
      │  │  │     │     │  │  └─ right
      │  │  │     │     │  │     ├─ type: MemberAccess
      │  │  │     │     │  │     ├─ expression
      │  │  │     │     │  │     │  ├─ type: Identifier
      │  │  │     │     │  │     │  └─ name: msg
      │  │  │     │     │  │     └─ memberName: sender
      │  │  │     │     │  └─ 1
      │  │  │     │     │     ├─ type: StringLiteral
      │  │  │     │     │     ├─ value: ERR: AUTH FAILED
      │  │  │     │     │     ├─ parts
      │  │  │     │     │     │  └─ 0: ERR: AUTH FAILED
      │  │  │     │     │     └─ isUnicode
      │  │  │     │     │        └─ 0: false
      │  │  │     │     ├─ names
      │  │  │     │     └─ identifiers
      │  │  │     ├─ 3
      │  │  │     │  ├─ type: ExpressionStatement
      │  │  │     │  └─ expression
      │  │  │     │     ├─ type: FunctionCall
      │  │  │     │     ├─ expression
      │  │  │     │     │  ├─ type: Identifier
      │  │  │     │     │  └─ name: require
      │  │  │     │     ├─ arguments
      │  │  │     │     │  ├─ 0
      │  │  │     │     │  │  ├─ type: BinaryOperation
      │  │  │     │     │  │  ├─ operator: >
      │  │  │     │     │  │  ├─ left
      │  │  │     │     │  │  │  ├─ type: MemberAccess
      │  │  │     │     │  │  │  ├─ expression
      │  │  │     │     │  │  │  │  ├─ type: Identifier
      │  │  │     │     │  │  │  │  └─ name: vnsReg
      │  │  │     │     │  │  │  └─ memberName: feePaid
      │  │  │     │     │  │  └─ right
      │  │  │     │     │  │     ├─ type: NumberLiteral
      │  │  │     │     │  │     ├─ number: 0
      │  │  │     │     │  │     └─ subdenomination
      │  │  │     │     │  └─ 1
      │  │  │     │     │     ├─ type: StringLiteral
      │  │  │     │     │     ├─ value: ERR : NO FEE
      │  │  │     │     │     ├─ parts
      │  │  │     │     │     │  └─ 0: ERR : NO FEE
      │  │  │     │     │     └─ isUnicode
      │  │  │     │     │        └─ 0: false
      │  │  │     │     ├─ names
      │  │  │     │     └─ identifiers
      │  │  │     └─ 4
      │  │  │        ├─ type: ExpressionStatement
      │  │  │        └─ expression
      │  │  │           ├─ type: FunctionCall
      │  │  │           ├─ expression
      │  │  │           │  ├─ type: Identifier
      │  │  │           │  └─ name: _withdrawRegistryDeposit
      │  │  │           ├─ arguments
      │  │  │           │  └─ 0
      │  │  │           │     ├─ type: Identifier
      │  │  │           │     └─ name: nameHash
      │  │  │           ├─ names
      │  │  │           └─ identifiers
      │  │  ├─ visibility: external
      │  │  ├─ modifiers
      │  │  ├─ override
      │  │  ├─ isConstructor: false
      │  │  ├─ isReceiveEther: false
      │  │  ├─ isFallback: false
      │  │  ├─ isVirtual: false
      │  │  └─ stateMutability: payable
      │  ├─ 11
      │  │  ├─ type: FunctionDefinition
      │  │  ├─ name: cancelReservation
      │  │  ├─ parameters
      │  │  │  └─ 0
      │  │  │     ├─ type: VariableDeclaration
      │  │  │     ├─ typeName
      │  │  │     │  ├─ type: ElementaryTypeName
      │  │  │     │  ├─ name: bytes32
      │  │  │     │  └─ stateMutability
      │  │  │     ├─ name: _reservationHash
      │  │  │     ├─ identifier
      │  │  │     │  ├─ type: Identifier
      │  │  │     │  └─ name: _reservationHash
      │  │  │     ├─ storageLocation
      │  │  │     ├─ isStateVar: false
      │  │  │     ├─ isIndexed: false
      │  │  │     └─ expression
      │  │  ├─ returnParameters
      │  │  ├─ body
      │  │  │  ├─ type: Block
      │  │  │  └─ statements
      │  │  │     ├─ 0
      │  │  │     │  ├─ type: ExpressionStatement
      │  │  │     │  └─ expression
      │  │  │     │     ├─ type: FunctionCall
      │  │  │     │     ├─ expression
      │  │  │     │     │  ├─ type: Identifier
      │  │  │     │     │  └─ name: require
      │  │  │     │     ├─ arguments
      │  │  │     │     │  ├─ 0
      │  │  │     │     │  │  ├─ type: BinaryOperation
      │  │  │     │     │  │  ├─ operator: ==
      │  │  │     │     │  │  ├─ left
      │  │  │     │     │  │  │  ├─ type: MemberAccess
      │  │  │     │     │  │  │  ├─ expression
      │  │  │     │     │  │  │  │  ├─ type: IndexAccess
      │  │  │     │     │  │  │  │  ├─ base
      │  │  │     │     │  │  │  │  │  ├─ type: Identifier
      │  │  │     │     │  │  │  │  │  └─ name: getNameReservation
      │  │  │     │     │  │  │  │  └─ index
      │  │  │     │     │  │  │  │     ├─ type: Identifier
      │  │  │     │     │  │  │  │     └─ name: _reservationHash
      │  │  │     │     │  │  │  └─ memberName: reservedBy
      │  │  │     │     │  │  └─ right
      │  │  │     │     │  │     ├─ type: MemberAccess
      │  │  │     │     │  │     ├─ expression
      │  │  │     │     │  │     │  ├─ type: Identifier
      │  │  │     │     │  │     │  └─ name: msg
      │  │  │     │     │  │     └─ memberName: sender
      │  │  │     │     │  └─ 1
      │  │  │     │     │     ├─ type: StringLiteral
      │  │  │     │     │     ├─ value: ERR: AUTH FAILED
      │  │  │     │     │     ├─ parts
      │  │  │     │     │     │  └─ 0: ERR: AUTH FAILED
      │  │  │     │     │     └─ isUnicode
      │  │  │     │     │        └─ 0: false
      │  │  │     │     ├─ names
      │  │  │     │     └─ identifiers
      │  │  │     ├─ 1
      │  │  │     │  ├─ type: ExpressionStatement
      │  │  │     │  └─ expression
      │  │  │     │     ├─ type: FunctionCall
      │  │  │     │     ├─ expression
      │  │  │     │     │  ├─ type: Identifier
      │  │  │     │     │  └─ name: require
      │  │  │     │     ├─ arguments
      │  │  │     │     │  ├─ 0
      │  │  │     │     │  │  ├─ type: BinaryOperation
      │  │  │     │     │  │  ├─ operator: &&
      │  │  │     │     │  │  ├─ left
      │  │  │     │     │  │  │  ├─ type: BinaryOperation
      │  │  │     │     │  │  │  ├─ operator: !=
      │  │  │     │     │  │  │  ├─ left
      │  │  │     │     │  │  │  │  ├─ type: MemberAccess
      │  │  │     │     │  │  │  │  ├─ expression
      │  │  │     │     │  │  │  │  │  ├─ type: IndexAccess
      │  │  │     │     │  │  │  │  │  ├─ base
      │  │  │     │     │  │  │  │  │  │  ├─ type: Identifier
      │  │  │     │     │  │  │  │  │  │  └─ name: getNameReservation
      │  │  │     │     │  │  │  │  │  └─ index
      │  │  │     │     │  │  │  │  │     ├─ type: Identifier
      │  │  │     │     │  │  │  │  │     └─ name: _reservationHash
      │  │  │     │     │  │  │  │  └─ memberName: reservationExpiry
      │  │  │     │     │  │  │  └─ right
      │  │  │     │     │  │  │     ├─ type: NumberLiteral
      │  │  │     │     │  │  │     ├─ number: 0
      │  │  │     │     │  │  │     └─ subdenomination
      │  │  │     │     │  │  └─ right
      │  │  │     │     │  │     ├─ type: BinaryOperation
      │  │  │     │     │  │     ├─ operator: !=
      │  │  │     │     │  │     ├─ left
      │  │  │     │     │  │     │  ├─ type: MemberAccess
      │  │  │     │     │  │     │  ├─ expression
      │  │  │     │     │  │     │  │  ├─ type: IndexAccess
      │  │  │     │     │  │     │  │  ├─ base
      │  │  │     │     │  │     │  │  │  ├─ type: Identifier
      │  │  │     │     │  │     │  │  │  └─ name: getNameReservation
      │  │  │     │     │  │     │  │  └─ index
      │  │  │     │     │  │     │  │     ├─ type: Identifier
      │  │  │     │     │  │     │  │     └─ name: _reservationHash
      │  │  │     │     │  │     │  └─ memberName: feePaid
      │  │  │     │     │  │     └─ right
      │  │  │     │     │  │        ├─ type: NumberLiteral
      │  │  │     │     │  │        ├─ number: 0
      │  │  │     │     │  │        └─ subdenomination
      │  │  │     │     │  └─ 1
      │  │  │     │     │     ├─ type: StringLiteral
      │  │  │     │     │     ├─ value: ERR: NOT RESERVED
      │  │  │     │     │     ├─ parts
      │  │  │     │     │     │  └─ 0: ERR: NOT RESERVED
      │  │  │     │     │     └─ isUnicode
      │  │  │     │     │        └─ 0: false
      │  │  │     │     ├─ names
      │  │  │     │     └─ identifiers
      │  │  │     └─ 2
      │  │  │        ├─ type: ExpressionStatement
      │  │  │        └─ expression
      │  │  │           ├─ type: FunctionCall
      │  │  │           ├─ expression
      │  │  │           │  ├─ type: Identifier
      │  │  │           │  └─ name: _cancelReservation
      │  │  │           ├─ arguments
      │  │  │           │  └─ 0
      │  │  │           │     ├─ type: Identifier
      │  │  │           │     └─ name: _reservationHash
      │  │  │           ├─ names
      │  │  │           └─ identifiers
      │  │  ├─ visibility: external
      │  │  ├─ modifiers
      │  │  ├─ override
      │  │  ├─ isConstructor: false
      │  │  ├─ isReceiveEther: false
      │  │  ├─ isFallback: false
      │  │  ├─ isVirtual: false
      │  │  └─ stateMutability: payable
      │  ├─ 12
      │  │  ├─ type: FunctionDefinition
      │  │  ├─ name: updateFee
      │  │  ├─ parameters
      │  │  │  ├─ 0
      │  │  │  │  ├─ type: VariableDeclaration
      │  │  │  │  ├─ typeName
      │  │  │  │  │  ├─ type: UserDefinedTypeName
      │  │  │  │  │  └─ namePath: FeeTypes
      │  │  │  │  ├─ name: _feeType
      │  │  │  │  ├─ identifier
      │  │  │  │  │  ├─ type: Identifier
      │  │  │  │  │  └─ name: _feeType
      │  │  │  │  ├─ storageLocation
      │  │  │  │  ├─ isStateVar: false
      │  │  │  │  ├─ isIndexed: false
      │  │  │  │  └─ expression
      │  │  │  └─ 1
      │  │  │     ├─ type: VariableDeclaration
      │  │  │     ├─ typeName
      │  │  │     │  ├─ type: ElementaryTypeName
      │  │  │     │  ├─ name: uint256
      │  │  │     │  └─ stateMutability
      │  │  │     ├─ name: _newFee
      │  │  │     ├─ identifier
      │  │  │     │  ├─ type: Identifier
      │  │  │     │  └─ name: _newFee
      │  │  │     ├─ storageLocation
      │  │  │     ├─ isStateVar: false
      │  │  │     ├─ isIndexed: false
      │  │  │     └─ expression
      │  │  ├─ returnParameters
      │  │  ├─ body
      │  │  │  ├─ type: Block
      │  │  │  └─ statements
      │  │  │     └─ 0
      │  │  │        ├─ type: IfStatement
      │  │  │        ├─ condition
      │  │  │        │  ├─ type: BinaryOperation
      │  │  │        │  ├─ operator: ==
      │  │  │        │  ├─ left
      │  │  │        │  │  ├─ type: Identifier
      │  │  │        │  │  └─ name: _feeType
      │  │  │        │  └─ right
      │  │  │        │     ├─ type: MemberAccess
      │  │  │        │     ├─ expression
      │  │  │        │     │  ├─ type: Identifier
      │  │  │        │     │  └─ name: FeeTypes
      │  │  │        │     └─ memberName: ReservationFee
      │  │  │        ├─ trueBody
      │  │  │        │  ├─ type: Block
      │  │  │        │  └─ statements
      │  │  │        │     └─ 0
      │  │  │        │        ├─ type: ExpressionStatement
      │  │  │        │        └─ expression
      │  │  │        │           ├─ type: BinaryOperation
      │  │  │        │           ├─ operator: =
      │  │  │        │           ├─ left
      │  │  │        │           │  ├─ type: Identifier
      │  │  │        │           │  └─ name: reservationFee
      │  │  │        │           └─ right
      │  │  │        │              ├─ type: Identifier
      │  │  │        │              └─ name: _newFee
      │  │  │        └─ falseBody
      │  │  │           ├─ type: IfStatement
      │  │  │           ├─ condition
      │  │  │           │  ├─ type: BinaryOperation
      │  │  │           │  ├─ operator: ==
      │  │  │           │  ├─ left
      │  │  │           │  │  ├─ type: Identifier
      │  │  │           │  │  └─ name: _feeType
      │  │  │           │  └─ right
      │  │  │           │     ├─ type: MemberAccess
      │  │  │           │     ├─ expression
      │  │  │           │     │  ├─ type: Identifier
      │  │  │           │     │  └─ name: FeeTypes
      │  │  │           │     └─ memberName: RegistrationFee
      │  │  │           ├─ trueBody
      │  │  │           │  ├─ type: Block
      │  │  │           │  └─ statements
      │  │  │           │     └─ 0
      │  │  │           │        ├─ type: ExpressionStatement
      │  │  │           │        └─ expression
      │  │  │           │           ├─ type: BinaryOperation
      │  │  │           │           ├─ operator: =
      │  │  │           │           ├─ left
      │  │  │           │           │  ├─ type: Identifier
      │  │  │           │           │  └─ name: perCharRegistrationFee
      │  │  │           │           └─ right
      │  │  │           │              ├─ type: Identifier
      │  │  │           │              └─ name: _newFee
      │  │  │           └─ falseBody
      │  │  │              ├─ type: Block
      │  │  │              └─ statements
      │  │  │                 └─ 0
      │  │  │                    ├─ type: ExpressionStatement
      │  │  │                    └─ expression
      │  │  │                       ├─ type: FunctionCall
      │  │  │                       ├─ expression
      │  │  │                       │  ├─ type: Identifier
      │  │  │                       │  └─ name: revert
      │  │  │                       ├─ arguments
      │  │  │                       │  └─ 0
      │  │  │                       │     ├─ type: StringLiteral
      │  │  │                       │     ├─ value: ERR : INVALID FEE TYPE
      │  │  │                       │     ├─ parts
      │  │  │                       │     │  └─ 0: ERR : INVALID FEE TYPE
      │  │  │                       │     └─ isUnicode
      │  │  │                       │        └─ 0: false
      │  │  │                       ├─ names
      │  │  │                       └─ identifiers
      │  │  ├─ visibility: external
      │  │  ├─ modifiers
      │  │  │  └─ 0
      │  │  │     ├─ type: ModifierInvocation
      │  │  │     ├─ name: onlyOwner
      │  │  │     └─ arguments
      │  │  ├─ override
      │  │  ├─ isConstructor: false
      │  │  ├─ isReceiveEther: false
      │  │  ├─ isFallback: false
      │  │  ├─ isVirtual: false
      │  │  └─ stateMutability
      │  ├─ 13
      │  │  ├─ type: FunctionDefinition
      │  │  ├─ name: updateDuration
      │  │  ├─ parameters
      │  │  │  ├─ 0
      │  │  │  │  ├─ type: VariableDeclaration
      │  │  │  │  ├─ typeName
      │  │  │  │  │  ├─ type: UserDefinedTypeName
      │  │  │  │  │  └─ namePath: DurationTypes
      │  │  │  │  ├─ name: _durationTypes
      │  │  │  │  ├─ identifier
      │  │  │  │  │  ├─ type: Identifier
      │  │  │  │  │  └─ name: _durationTypes
      │  │  │  │  ├─ storageLocation
      │  │  │  │  ├─ isStateVar: false
      │  │  │  │  ├─ isIndexed: false
      │  │  │  │  └─ expression
      │  │  │  └─ 1
      │  │  │     ├─ type: VariableDeclaration
      │  │  │     ├─ typeName
      │  │  │     │  ├─ type: ElementaryTypeName
      │  │  │     │  ├─ name: uint256
      │  │  │     │  └─ stateMutability
      │  │  │     ├─ name: _newDuration
      │  │  │     ├─ identifier
      │  │  │     │  ├─ type: Identifier
      │  │  │     │  └─ name: _newDuration
      │  │  │     ├─ storageLocation
      │  │  │     ├─ isStateVar: false
      │  │  │     ├─ isIndexed: false
      │  │  │     └─ expression
      │  │  ├─ returnParameters
      │  │  ├─ body
      │  │  │  ├─ type: Block
      │  │  │  └─ statements
      │  │  │     └─ 0
      │  │  │        ├─ type: IfStatement
      │  │  │        ├─ condition
      │  │  │        │  ├─ type: BinaryOperation
      │  │  │        │  ├─ operator: ==
      │  │  │        │  ├─ left
      │  │  │        │  │  ├─ type: Identifier
      │  │  │        │  │  └─ name: _durationTypes
      │  │  │        │  └─ right
      │  │  │        │     ├─ type: MemberAccess
      │  │  │        │     ├─ expression
      │  │  │        │     │  ├─ type: Identifier
      │  │  │        │     │  └─ name: DurationTypes
      │  │  │        │     └─ memberName: ReservationDuration
      │  │  │        ├─ trueBody
      │  │  │        │  ├─ type: Block
      │  │  │        │  └─ statements
      │  │  │        │     └─ 0
      │  │  │        │        ├─ type: ExpressionStatement
      │  │  │        │        └─ expression
      │  │  │        │           ├─ type: BinaryOperation
      │  │  │        │           ├─ operator: =
      │  │  │        │           ├─ left
      │  │  │        │           │  ├─ type: Identifier
      │  │  │        │           │  └─ name: reservationDuration
      │  │  │        │           └─ right
      │  │  │        │              ├─ type: Identifier
      │  │  │        │              └─ name: _newDuration
      │  │  │        └─ falseBody
      │  │  │           ├─ type: IfStatement
      │  │  │           ├─ condition
      │  │  │           │  ├─ type: BinaryOperation
      │  │  │           │  ├─ operator: ==
      │  │  │           │  ├─ left
      │  │  │           │  │  ├─ type: Identifier
      │  │  │           │  │  └─ name: _durationTypes
      │  │  │           │  └─ right
      │  │  │           │     ├─ type: MemberAccess
      │  │  │           │     ├─ expression
      │  │  │           │     │  ├─ type: Identifier
      │  │  │           │     │  └─ name: DurationTypes
      │  │  │           │     └─ memberName: RegistrationDuration
      │  │  │           ├─ trueBody
      │  │  │           │  ├─ type: Block
      │  │  │           │  └─ statements
      │  │  │           │     └─ 0
      │  │  │           │        ├─ type: ExpressionStatement
      │  │  │           │        └─ expression
      │  │  │           │           ├─ type: BinaryOperation
      │  │  │           │           ├─ operator: =
      │  │  │           │           ├─ left
      │  │  │           │           │  ├─ type: Identifier
      │  │  │           │           │  └─ name: registryDuration
      │  │  │           │           └─ right
      │  │  │           │              ├─ type: Identifier
      │  │  │           │              └─ name: _newDuration
      │  │  │           └─ falseBody
      │  │  │              ├─ type: Block
      │  │  │              └─ statements
      │  │  │                 └─ 0
      │  │  │                    ├─ type: ExpressionStatement
      │  │  │                    └─ expression
      │  │  │                       ├─ type: FunctionCall
      │  │  │                       ├─ expression
      │  │  │                       │  ├─ type: Identifier
      │  │  │                       │  └─ name: revert
      │  │  │                       ├─ arguments
      │  │  │                       │  └─ 0
      │  │  │                       │     ├─ type: StringLiteral
      │  │  │                       │     ├─ value: ERR : INVALID DURATION TYPE
      │  │  │                       │     ├─ parts
      │  │  │                       │     │  └─ 0: ERR : INVALID DURATION TYPE
      │  │  │                       │     └─ isUnicode
      │  │  │                       │        └─ 0: false
      │  │  │                       ├─ names
      │  │  │                       └─ identifiers
      │  │  ├─ visibility: external
      │  │  ├─ modifiers
      │  │  │  └─ 0
      │  │  │     ├─ type: ModifierInvocation
      │  │  │     ├─ name: onlyOwner
      │  │  │     └─ arguments
      │  │  ├─ override
      │  │  ├─ isConstructor: false
      │  │  ├─ isReceiveEther: false
      │  │  ├─ isFallback: false
      │  │  ├─ isVirtual: false
      │  │  └─ stateMutability
      │  ├─ 14
      │  │  ├─ type: FunctionDefinition
      │  │  ├─ name: safeTransfer
      │  │  ├─ parameters
      │  │  │  ├─ 0
      │  │  │  │  ├─ type: VariableDeclaration
      │  │  │  │  ├─ typeName
      │  │  │  │  │  ├─ type: ElementaryTypeName
      │  │  │  │  │  ├─ name: address
      │  │  │  │  │  └─ stateMutability
      │  │  │  │  ├─ name: _reciever
      │  │  │  │  ├─ identifier
      │  │  │  │  │  ├─ type: Identifier
      │  │  │  │  │  └─ name: _reciever
      │  │  │  │  ├─ storageLocation
      │  │  │  │  ├─ isStateVar: false
      │  │  │  │  ├─ isIndexed: false
      │  │  │  │  └─ expression
      │  │  │  └─ 1
      │  │  │     ├─ type: VariableDeclaration
      │  │  │     ├─ typeName
      │  │  │     │  ├─ type: ElementaryTypeName
      │  │  │     │  ├─ name: uint256
      │  │  │     │  └─ stateMutability
      │  │  │     ├─ name: _amount
      │  │  │     ├─ identifier
      │  │  │     │  ├─ type: Identifier
      │  │  │     │  └─ name: _amount
      │  │  │     ├─ storageLocation
      │  │  │     ├─ isStateVar: false
      │  │  │     ├─ isIndexed: false
      │  │  │     └─ expression
      │  │  ├─ returnParameters
      │  │  ├─ body
      │  │  │  ├─ type: Block
      │  │  │  └─ statements
      │  │  │     ├─ 0
      │  │  │     │  ├─ type: VariableDeclarationStatement
      │  │  │     │  ├─ variables
      │  │  │     │  │  └─ 0
      │  │  │     │  │     ├─ type: VariableDeclaration
      │  │  │     │  │     ├─ typeName
      │  │  │     │  │     │  ├─ type: ElementaryTypeName
      │  │  │     │  │     │  ├─ name: bool
      │  │  │     │  │     │  └─ stateMutability
      │  │  │     │  │     ├─ name: sent
      │  │  │     │  │     ├─ identifier
      │  │  │     │  │     │  ├─ type: Identifier
      │  │  │     │  │     │  └─ name: sent
      │  │  │     │  │     ├─ storageLocation
      │  │  │     │  │     ├─ isStateVar: false
      │  │  │     │  │     ├─ isIndexed: false
      │  │  │     │  │     └─ expression
      │  │  │     │  └─ initialValue
      │  │  │     │     ├─ type: FunctionCall
      │  │  │     │     ├─ expression
      │  │  │     │     │  ├─ type: MemberAccess
      │  │  │     │     │  ├─ expression
      │  │  │     │     │  │  ├─ type: FunctionCall
      │  │  │     │     │  │  ├─ expression
      │  │  │     │     │  │  │  ├─ type: Identifier
      │  │  │     │     │  │  │  └─ name: payable
      │  │  │     │     │  │  ├─ arguments
      │  │  │     │     │  │  │  └─ 0
      │  │  │     │     │  │  │     ├─ type: Identifier
      │  │  │     │     │  │  │     └─ name: _reciever
      │  │  │     │     │  │  ├─ names
      │  │  │     │     │  │  └─ identifiers
      │  │  │     │     │  └─ memberName: send
      │  │  │     │     ├─ arguments
      │  │  │     │     │  └─ 0
      │  │  │     │     │     ├─ type: Identifier
      │  │  │     │     │     └─ name: _amount
      │  │  │     │     ├─ names
      │  │  │     │     └─ identifiers
      │  │  │     └─ 1
      │  │  │        ├─ type: ExpressionStatement
      │  │  │        └─ expression
      │  │  │           ├─ type: FunctionCall
      │  │  │           ├─ expression
      │  │  │           │  ├─ type: Identifier
      │  │  │           │  └─ name: require
      │  │  │           ├─ arguments
      │  │  │           │  ├─ 0
      │  │  │           │  │  ├─ type: Identifier
      │  │  │           │  │  └─ name: sent
      │  │  │           │  └─ 1
      │  │  │           │     ├─ type: StringLiteral
      │  │  │           │     ├─ value: ERR : AMOUNT SEND FAILED
      │  │  │           │     ├─ parts
      │  │  │           │     │  └─ 0: ERR : AMOUNT SEND FAILED
      │  │  │           │     └─ isUnicode
      │  │  │           │        └─ 0: false
      │  │  │           ├─ names
      │  │  │           └─ identifiers
      │  │  ├─ visibility: internal
      │  │  ├─ modifiers
      │  │  ├─ override
      │  │  ├─ isConstructor: false
      │  │  ├─ isReceiveEther: false
      │  │  ├─ isFallback: false
      │  │  ├─ isVirtual: false
      │  │  └─ stateMutability
      │  ├─ 15
      │  │  ├─ type: FunctionDefinition
      │  │  ├─ name: _cancelReservation
      │  │  ├─ parameters
      │  │  │  └─ 0
      │  │  │     ├─ type: VariableDeclaration
      │  │  │     ├─ typeName
      │  │  │     │  ├─ type: ElementaryTypeName
      │  │  │     │  ├─ name: bytes32
      │  │  │     │  └─ stateMutability
      │  │  │     ├─ name: _reservationHash
      │  │  │     ├─ identifier
      │  │  │     │  ├─ type: Identifier
      │  │  │     │  └─ name: _reservationHash
      │  │  │     ├─ storageLocation
      │  │  │     ├─ isStateVar: false
      │  │  │     ├─ isIndexed: false
      │  │  │     └─ expression
      │  │  ├─ returnParameters
      │  │  ├─ body
      │  │  │  ├─ type: Block
      │  │  │  └─ statements
      │  │  │     ├─ 0
      │  │  │     │  ├─ type: ExpressionStatement
      │  │  │     │  └─ expression
      │  │  │     │     ├─ type: FunctionCall
      │  │  │     │     ├─ expression
      │  │  │     │     │  ├─ type: Identifier
      │  │  │     │     │  └─ name: safeTransfer
      │  │  │     │     ├─ arguments
      │  │  │     │     │  ├─ 0
      │  │  │     │     │  │  ├─ type: MemberAccess
      │  │  │     │     │  │  ├─ expression
      │  │  │     │     │  │  │  ├─ type: IndexAccess
      │  │  │     │     │  │  │  ├─ base
      │  │  │     │     │  │  │  │  ├─ type: Identifier
      │  │  │     │     │  │  │  │  └─ name: getNameReservation
      │  │  │     │     │  │  │  └─ index
      │  │  │     │     │  │  │     ├─ type: Identifier
      │  │  │     │     │  │  │     └─ name: _reservationHash
      │  │  │     │     │  │  └─ memberName: reservedBy
      │  │  │     │     │  └─ 1
      │  │  │     │     │     ├─ type: MemberAccess
      │  │  │     │     │     ├─ expression
      │  │  │     │     │     │  ├─ type: IndexAccess
      │  │  │     │     │     │  ├─ base
      │  │  │     │     │     │  │  ├─ type: Identifier
      │  │  │     │     │     │  │  └─ name: getNameReservation
      │  │  │     │     │     │  └─ index
      │  │  │     │     │     │     ├─ type: Identifier
      │  │  │     │     │     │     └─ name: _reservationHash
      │  │  │     │     │     └─ memberName: feePaid
      │  │  │     │     ├─ names
      │  │  │     │     └─ identifiers
      │  │  │     ├─ 1
      │  │  │     │  ├─ type: EmitStatement
      │  │  │     │  └─ eventCall
      │  │  │     │     ├─ type: FunctionCall
      │  │  │     │     ├─ expression
      │  │  │     │     │  ├─ type: Identifier
      │  │  │     │     │  └─ name: LogCancelReservation
      │  │  │     │     ├─ arguments
      │  │  │     │     │  ├─ 0
      │  │  │     │     │  │  ├─ type: MemberAccess
      │  │  │     │     │  │  ├─ expression
      │  │  │     │     │  │  │  ├─ type: Identifier
      │  │  │     │     │  │  │  └─ name: msg
      │  │  │     │     │  │  └─ memberName: sender
      │  │  │     │     │  ├─ 1
      │  │  │     │     │  │  ├─ type: Identifier
      │  │  │     │     │  │  └─ name: _reservationHash
      │  │  │     │     │  └─ 2
      │  │  │     │     │     ├─ type: MemberAccess
      │  │  │     │     │     ├─ expression
      │  │  │     │     │     │  ├─ type: IndexAccess
      │  │  │     │     │     │  ├─ base
      │  │  │     │     │     │  │  ├─ type: Identifier
      │  │  │     │     │     │  │  └─ name: getNameReservation
      │  │  │     │     │     │  └─ index
      │  │  │     │     │     │     ├─ type: Identifier
      │  │  │     │     │     │     └─ name: _reservationHash
      │  │  │     │     │     └─ memberName: feePaid
      │  │  │     │     ├─ names
      │  │  │     │     └─ identifiers
      │  │  │     └─ 2
      │  │  │        ├─ type: ExpressionStatement
      │  │  │        └─ expression
      │  │  │           ├─ type: UnaryOperation
      │  │  │           ├─ operator: delete
      │  │  │           ├─ subExpression
      │  │  │           │  ├─ type: TupleExpression
      │  │  │           │  ├─ components
      │  │  │           │  │  └─ 0
      │  │  │           │  │     ├─ type: IndexAccess
      │  │  │           │  │     ├─ base
      │  │  │           │  │     │  ├─ type: Identifier
      │  │  │           │  │     │  └─ name: getNameReservation
      │  │  │           │  │     └─ index
      │  │  │           │  │        ├─ type: Identifier
      │  │  │           │  │        └─ name: _reservationHash
      │  │  │           │  └─ isArray: false
      │  │  │           └─ isPrefix: true
      │  │  ├─ visibility: internal
      │  │  ├─ modifiers
      │  │  ├─ override
      │  │  ├─ isConstructor: false
      │  │  ├─ isReceiveEther: false
      │  │  ├─ isFallback: false
      │  │  ├─ isVirtual: false
      │  │  └─ stateMutability
      │  ├─ 16
      │  │  ├─ type: FunctionDefinition
      │  │  ├─ name: _withdrawRegistryDeposit
      │  │  ├─ parameters
      │  │  │  └─ 0
      │  │  │     ├─ type: VariableDeclaration
      │  │  │     ├─ typeName
      │  │  │     │  ├─ type: ElementaryTypeName
      │  │  │     │  ├─ name: bytes32
      │  │  │     │  └─ stateMutability
      │  │  │     ├─ name: _nameHash
      │  │  │     ├─ identifier
      │  │  │     │  ├─ type: Identifier
      │  │  │     │  └─ name: _nameHash
      │  │  │     ├─ storageLocation
      │  │  │     ├─ isStateVar: false
      │  │  │     ├─ isIndexed: false
      │  │  │     └─ expression
      │  │  ├─ returnParameters
      │  │  ├─ body
      │  │  │  ├─ type: Block
      │  │  │  └─ statements
      │  │  │     ├─ 0
      │  │  │     │  ├─ type: ExpressionStatement
      │  │  │     │  └─ expression
      │  │  │     │     ├─ type: FunctionCall
      │  │  │     │     ├─ expression
      │  │  │     │     │  ├─ type: Identifier
      │  │  │     │     │  └─ name: require
      │  │  │     │     ├─ arguments
      │  │  │     │     │  ├─ 0
      │  │  │     │     │  │  ├─ type: BinaryOperation
      │  │  │     │     │  │  ├─ operator: >
      │  │  │     │     │  │  ├─ left
      │  │  │     │     │  │  │  ├─ type: MemberAccess
      │  │  │     │     │  │  │  ├─ expression
      │  │  │     │     │  │  │  │  ├─ type: Identifier
      │  │  │     │     │  │  │  │  └─ name: block
      │  │  │     │     │  │  │  └─ memberName: timestamp
      │  │  │     │     │  │  └─ right
      │  │  │     │     │  │     ├─ type: MemberAccess
      │  │  │     │     │  │     ├─ expression
      │  │  │     │     │  │     │  ├─ type: IndexAccess
      │  │  │     │     │  │     │  ├─ base
      │  │  │     │     │  │     │  │  ├─ type: Identifier
      │  │  │     │     │  │     │  │  └─ name: getNameRegistry
      │  │  │     │     │  │     │  └─ index
      │  │  │     │     │  │     │     ├─ type: Identifier
      │  │  │     │     │  │     │     └─ name: _nameHash
      │  │  │     │     │  │     └─ memberName: registrationExpiry
      │  │  │     │     │  └─ 1
      │  │  │     │     │     ├─ type: StringLiteral
      │  │  │     │     │     ├─ value: NOT EXPIRED OR REGISTERED
      │  │  │     │     │     ├─ parts
      │  │  │     │     │     │  └─ 0: NOT EXPIRED OR REGISTERED
      │  │  │     │     │     └─ isUnicode
      │  │  │     │     │        └─ 0: false
      │  │  │     │     ├─ names
      │  │  │     │     └─ identifiers
      │  │  │     ├─ 1
      │  │  │     │  ├─ type: ExpressionStatement
      │  │  │     │  └─ expression
      │  │  │     │     ├─ type: FunctionCall
      │  │  │     │     ├─ expression
      │  │  │     │     │  ├─ type: Identifier
      │  │  │     │     │  └─ name: safeTransfer
      │  │  │     │     ├─ arguments
      │  │  │     │     │  ├─ 0
      │  │  │     │     │  │  ├─ type: MemberAccess
      │  │  │     │     │  │  ├─ expression
      │  │  │     │     │  │  │  ├─ type: IndexAccess
      │  │  │     │     │  │  │  ├─ base
      │  │  │     │     │  │  │  │  ├─ type: Identifier
      │  │  │     │     │  │  │  │  └─ name: getNameRegistry
      │  │  │     │     │  │  │  └─ index
      │  │  │     │     │  │  │     ├─ type: Identifier
      │  │  │     │     │  │  │     └─ name: _nameHash
      │  │  │     │     │  │  └─ memberName: registeredTo
      │  │  │     │     │  └─ 1
      │  │  │     │     │     ├─ type: MemberAccess
      │  │  │     │     │     ├─ expression
      │  │  │     │     │     │  ├─ type: IndexAccess
      │  │  │     │     │     │  ├─ base
      │  │  │     │     │     │  │  ├─ type: Identifier
      │  │  │     │     │     │  │  └─ name: getNameRegistry
      │  │  │     │     │     │  └─ index
      │  │  │     │     │     │     ├─ type: Identifier
      │  │  │     │     │     │     └─ name: _nameHash
      │  │  │     │     │     └─ memberName: feePaid
      │  │  │     │     ├─ names
      │  │  │     │     └─ identifiers
      │  │  │     ├─ 2
      │  │  │     │  ├─ type: EmitStatement
      │  │  │     │  └─ eventCall
      │  │  │     │     ├─ type: FunctionCall
      │  │  │     │     ├─ expression
      │  │  │     │     │  ├─ type: Identifier
      │  │  │     │     │  └─ name: LogUserWithdraw
      │  │  │     │     ├─ arguments
      │  │  │     │     │  ├─ 0
      │  │  │     │     │  │  ├─ type: MemberAccess
      │  │  │     │     │  │  ├─ expression
      │  │  │     │     │  │  │  ├─ type: Identifier
      │  │  │     │     │  │  │  └─ name: msg
      │  │  │     │     │  │  └─ memberName: sender
      │  │  │     │     │  ├─ 1
      │  │  │     │     │  │  ├─ type: MemberAccess
      │  │  │     │     │  │  ├─ expression
      │  │  │     │     │  │  │  ├─ type: IndexAccess
      │  │  │     │     │  │  │  ├─ base
      │  │  │     │     │  │  │  │  ├─ type: Identifier
      │  │  │     │     │  │  │  │  └─ name: getNameRegistry
      │  │  │     │     │  │  │  └─ index
      │  │  │     │     │  │  │     ├─ type: Identifier
      │  │  │     │     │  │  │     └─ name: _nameHash
      │  │  │     │     │  │  └─ memberName: registeredTo
      │  │  │     │     │  ├─ 2
      │  │  │     │     │  │  ├─ type: Identifier
      │  │  │     │     │  │  └─ name: _nameHash
      │  │  │     │     │  └─ 3
      │  │  │     │     │     ├─ type: MemberAccess
      │  │  │     │     │     ├─ expression
      │  │  │     │     │     │  ├─ type: IndexAccess
      │  │  │     │     │     │  ├─ base
      │  │  │     │     │     │  │  ├─ type: Identifier
      │  │  │     │     │     │  │  └─ name: getNameRegistry
      │  │  │     │     │     │  └─ index
      │  │  │     │     │     │     ├─ type: Identifier
      │  │  │     │     │     │     └─ name: _nameHash
      │  │  │     │     │     └─ memberName: feePaid
      │  │  │     │     ├─ names
      │  │  │     │     └─ identifiers
      │  │  │     └─ 3
      │  │  │        ├─ type: ExpressionStatement
      │  │  │        └─ expression
      │  │  │           ├─ type: UnaryOperation
      │  │  │           ├─ operator: delete
      │  │  │           ├─ subExpression
      │  │  │           │  ├─ type: TupleExpression
      │  │  │           │  ├─ components
      │  │  │           │  │  └─ 0
      │  │  │           │  │     ├─ type: IndexAccess
      │  │  │           │  │     ├─ base
      │  │  │           │  │     │  ├─ type: Identifier
      │  │  │           │  │     │  └─ name: getNameRegistry
      │  │  │           │  │     └─ index
      │  │  │           │  │        ├─ type: Identifier
      │  │  │           │  │        └─ name: _nameHash
      │  │  │           │  └─ isArray: false
      │  │  │           └─ isPrefix: true
      │  │  ├─ visibility: internal
      │  │  ├─ modifiers
      │  │  ├─ override
      │  │  ├─ isConstructor: false
      │  │  ├─ isReceiveEther: false
      │  │  ├─ isFallback: false
      │  │  ├─ isVirtual: false
      │  │  └─ stateMutability
      │  ├─ 17
      │  │  ├─ type: FunctionDefinition
      │  │  ├─ name: buildReservationHash
      │  │  ├─ parameters
      │  │  │  └─ 0
      │  │  │     ├─ type: VariableDeclaration
      │  │  │     ├─ typeName
      │  │  │     │  ├─ type: ElementaryTypeName
      │  │  │     │  ├─ name: string
      │  │  │     │  └─ stateMutability
      │  │  │     ├─ name: _name
      │  │  │     ├─ identifier
      │  │  │     │  ├─ type: Identifier
      │  │  │     │  └─ name: _name
      │  │  │     ├─ storageLocation: memory
      │  │  │     ├─ isStateVar: false
      │  │  │     ├─ isIndexed: false
      │  │  │     └─ expression
      │  │  ├─ returnParameters
      │  │  │  └─ 0
      │  │  │     ├─ type: VariableDeclaration
      │  │  │     ├─ typeName
      │  │  │     │  ├─ type: ElementaryTypeName
      │  │  │     │  ├─ name: bytes32
      │  │  │     │  └─ stateMutability
      │  │  │     ├─ name
      │  │  │     ├─ identifier
      │  │  │     ├─ storageLocation
      │  │  │     ├─ isStateVar: false
      │  │  │     ├─ isIndexed: false
      │  │  │     └─ expression
      │  │  ├─ body
      │  │  │  ├─ type: Block
      │  │  │  └─ statements
      │  │  │     └─ 0
      │  │  │        ├─ type: ReturnStatement
      │  │  │        └─ expression
      │  │  │           ├─ type: FunctionCall
      │  │  │           ├─ expression
      │  │  │           │  ├─ type: MemberAccess
      │  │  │           │  ├─ expression
      │  │  │           │  │  ├─ type: Identifier
      │  │  │           │  │  └─ name: vnsUtils
      │  │  │           │  └─ memberName: _getReservationHash
      │  │  │           ├─ arguments
      │  │  │           │  ├─ 0
      │  │  │           │  │  ├─ type: Identifier
      │  │  │           │  │  └─ name: _name
      │  │  │           │  └─ 1
      │  │  │           │     ├─ type: MemberAccess
      │  │  │           │     ├─ expression
      │  │  │           │     │  ├─ type: Identifier
      │  │  │           │     │  └─ name: msg
      │  │  │           │     └─ memberName: sender
      │  │  │           ├─ names
      │  │  │           └─ identifiers
      │  │  ├─ visibility: public
      │  │  ├─ modifiers
      │  │  ├─ override
      │  │  ├─ isConstructor: false
      │  │  ├─ isReceiveEther: false
      │  │  ├─ isFallback: false
      │  │  ├─ isVirtual: false
      │  │  └─ stateMutability: view
      │  ├─ 18
      │  │  ├─ type: FunctionDefinition
      │  │  ├─ name: getNameHash
      │  │  ├─ parameters
      │  │  │  └─ 0
      │  │  │     ├─ type: VariableDeclaration
      │  │  │     ├─ typeName
      │  │  │     │  ├─ type: ElementaryTypeName
      │  │  │     │  ├─ name: string
      │  │  │     │  └─ stateMutability
      │  │  │     ├─ name: _name
      │  │  │     ├─ identifier
      │  │  │     │  ├─ type: Identifier
      │  │  │     │  └─ name: _name
      │  │  │     ├─ storageLocation: memory
      │  │  │     ├─ isStateVar: false
      │  │  │     ├─ isIndexed: false
      │  │  │     └─ expression
      │  │  ├─ returnParameters
      │  │  │  └─ 0
      │  │  │     ├─ type: VariableDeclaration
      │  │  │     ├─ typeName
      │  │  │     │  ├─ type: ElementaryTypeName
      │  │  │     │  ├─ name: bytes32
      │  │  │     │  └─ stateMutability
      │  │  │     ├─ name
      │  │  │     ├─ identifier
      │  │  │     ├─ storageLocation
      │  │  │     ├─ isStateVar: false
      │  │  │     ├─ isIndexed: false
      │  │  │     └─ expression
      │  │  ├─ body
      │  │  │  ├─ type: Block
      │  │  │  └─ statements
      │  │  │     └─ 0
      │  │  │        ├─ type: ReturnStatement
      │  │  │        └─ expression
      │  │  │           ├─ type: FunctionCall
      │  │  │           ├─ expression
      │  │  │           │  ├─ type: MemberAccess
      │  │  │           │  ├─ expression
      │  │  │           │  │  ├─ type: Identifier
      │  │  │           │  │  └─ name: vnsUtils
      │  │  │           │  └─ memberName: _getNameHash
      │  │  │           ├─ arguments
      │  │  │           │  └─ 0
      │  │  │           │     ├─ type: Identifier
      │  │  │           │     └─ name: _name
      │  │  │           ├─ names
      │  │  │           └─ identifiers
      │  │  ├─ visibility: external
      │  │  ├─ modifiers
      │  │  ├─ override
      │  │  ├─ isConstructor: false
      │  │  ├─ isReceiveEther: false
      │  │  ├─ isFallback: false
      │  │  ├─ isVirtual: false
      │  │  └─ stateMutability: pure
      │  ├─ 19
      │  │  ├─ type: FunctionDefinition
      │  │  ├─ name: vnsBalance
      │  │  ├─ parameters
      │  │  ├─ returnParameters
      │  │  │  └─ 0
      │  │  │     ├─ type: VariableDeclaration
      │  │  │     ├─ typeName
      │  │  │     │  ├─ type: ElementaryTypeName
      │  │  │     │  ├─ name: uint256
      │  │  │     │  └─ stateMutability
      │  │  │     ├─ name
      │  │  │     ├─ identifier
      │  │  │     ├─ storageLocation
      │  │  │     ├─ isStateVar: false
      │  │  │     ├─ isIndexed: false
      │  │  │     └─ expression
      │  │  ├─ body
      │  │  │  ├─ type: Block
      │  │  │  └─ statements
      │  │  │     └─ 0
      │  │  │        ├─ type: ReturnStatement
      │  │  │        └─ expression
      │  │  │           ├─ type: MemberAccess
      │  │  │           ├─ expression
      │  │  │           │  ├─ type: FunctionCall
      │  │  │           │  ├─ expression
      │  │  │           │  │  ├─ type: TypeNameExpression
      │  │  │           │  │  └─ typeName
      │  │  │           │  │     ├─ type: ElementaryTypeName
      │  │  │           │  │     ├─ name: address
      │  │  │           │  │     └─ stateMutability
      │  │  │           │  ├─ arguments
      │  │  │           │  │  └─ 0
      │  │  │           │  │     ├─ type: Identifier
      │  │  │           │  │     └─ name: this
      │  │  │           │  ├─ names
      │  │  │           │  └─ identifiers
      │  │  │           └─ memberName: balance
      │  │  ├─ visibility: public
      │  │  ├─ modifiers
      │  │  ├─ override
      │  │  ├─ isConstructor: false
      │  │  ├─ isReceiveEther: false
      │  │  ├─ isFallback: false
      │  │  ├─ isVirtual: false
      │  │  └─ stateMutability: view
      │  ├─ 20
      │  │  ├─ type: FunctionDefinition
      │  │  ├─ name: checkNameAvailability
      │  │  ├─ parameters
      │  │  │  └─ 0
      │  │  │     ├─ type: VariableDeclaration
      │  │  │     ├─ typeName
      │  │  │     │  ├─ type: ElementaryTypeName
      │  │  │     │  ├─ name: string
      │  │  │     │  └─ stateMutability
      │  │  │     ├─ name: _name
      │  │  │     ├─ identifier
      │  │  │     │  ├─ type: Identifier
      │  │  │     │  └─ name: _name
      │  │  │     ├─ storageLocation: memory
      │  │  │     ├─ isStateVar: false
      │  │  │     ├─ isIndexed: false
      │  │  │     └─ expression
      │  │  ├─ returnParameters
      │  │  │  └─ 0
      │  │  │     ├─ type: VariableDeclaration
      │  │  │     ├─ typeName
      │  │  │     │  ├─ type: ElementaryTypeName
      │  │  │     │  ├─ name: bool
      │  │  │     │  └─ stateMutability
      │  │  │     ├─ name
      │  │  │     ├─ identifier
      │  │  │     ├─ storageLocation
      │  │  │     ├─ isStateVar: false
      │  │  │     ├─ isIndexed: false
      │  │  │     └─ expression
      │  │  ├─ body
      │  │  │  ├─ type: Block
      │  │  │  └─ statements
      │  │  │     └─ 0
      │  │  │        ├─ type: ReturnStatement
      │  │  │        └─ expression
      │  │  │           ├─ type: TupleExpression
      │  │  │           ├─ components
      │  │  │           │  └─ 0
      │  │  │           │     ├─ type: BinaryOperation
      │  │  │           │     ├─ operator: >
      │  │  │           │     ├─ left
      │  │  │           │     │  ├─ type: MemberAccess
      │  │  │           │     │  ├─ expression
      │  │  │           │     │  │  ├─ type: Identifier
      │  │  │           │     │  │  └─ name: block
      │  │  │           │     │  └─ memberName: timestamp
      │  │  │           │     └─ right
      │  │  │           │        ├─ type: MemberAccess
      │  │  │           │        ├─ expression
      │  │  │           │        │  ├─ type: IndexAccess
      │  │  │           │        │  ├─ base
      │  │  │           │        │  │  ├─ type: Identifier
      │  │  │           │        │  │  └─ name: getNameRegistry
      │  │  │           │        │  └─ index
      │  │  │           │        │     ├─ type: FunctionCall
      │  │  │           │        │     ├─ expression
      │  │  │           │        │     │  ├─ type: MemberAccess
      │  │  │           │        │     │  ├─ expression
      │  │  │           │        │     │  │  ├─ type: Identifier
      │  │  │           │        │     │  │  └─ name: vnsUtils
      │  │  │           │        │     │  └─ memberName: _getNameHash
      │  │  │           │        │     ├─ arguments
      │  │  │           │        │     │  └─ 0
      │  │  │           │        │     │     ├─ type: Identifier
      │  │  │           │        │     │     └─ name: _name
      │  │  │           │        │     ├─ names
      │  │  │           │        │     └─ identifiers
      │  │  │           │        └─ memberName: registrationExpiry
      │  │  │           └─ isArray: false
      │  │  ├─ visibility: public
      │  │  ├─ modifiers
      │  │  ├─ override
      │  │  ├─ isConstructor: false
      │  │  ├─ isReceiveEther: false
      │  │  ├─ isFallback: false
      │  │  ├─ isVirtual: false
      │  │  └─ stateMutability: view
      │  └─ 21
      │     ├─ type: FunctionDefinition
      │     ├─ name: getPayableFee
      │     ├─ parameters
      │     │  └─ 0
      │     │     ├─ type: VariableDeclaration
      │     │     ├─ typeName
      │     │     │  ├─ type: ElementaryTypeName
      │     │     │  ├─ name: string
      │     │     │  └─ stateMutability
      │     │     ├─ name: _name
      │     │     ├─ identifier
      │     │     │  ├─ type: Identifier
      │     │     │  └─ name: _name
      │     │     ├─ storageLocation: memory
      │     │     ├─ isStateVar: false
      │     │     ├─ isIndexed: false
      │     │     └─ expression
      │     ├─ returnParameters
      │     │  └─ 0
      │     │     ├─ type: VariableDeclaration
      │     │     ├─ typeName
      │     │     │  ├─ type: ElementaryTypeName
      │     │     │  ├─ name: uint256
      │     │     │  └─ stateMutability
      │     │     ├─ name
      │     │     ├─ identifier
      │     │     ├─ storageLocation
      │     │     ├─ isStateVar: false
      │     │     ├─ isIndexed: false
      │     │     └─ expression
      │     ├─ body
      │     │  ├─ type: Block
      │     │  └─ statements
      │     │     └─ 0
      │     │        ├─ type: ReturnStatement
      │     │        └─ expression
      │     │           ├─ type: FunctionCall
      │     │           ├─ expression
      │     │           │  ├─ type: MemberAccess
      │     │           │  ├─ expression
      │     │           │  │  ├─ type: Identifier
      │     │           │  │  └─ name: vnsUtils
      │     │           │  └─ memberName: _getPrice
      │     │           ├─ arguments
      │     │           │  ├─ 0
      │     │           │  │  ├─ type: Identifier
      │     │           │  │  └─ name: perCharRegistrationFee
      │     │           │  └─ 1
      │     │           │     ├─ type: Identifier
      │     │           │     └─ name: _name
      │     │           ├─ names
      │     │           └─ identifiers
      │     ├─ visibility: external
      │     ├─ modifiers
      │     ├─ override
      │     ├─ isConstructor: false
      │     ├─ isReceiveEther: false
      │     ├─ isFallback: false
      │     ├─ isVirtual: false
      │     └─ stateMutability: view
      └─ kind: contract
```