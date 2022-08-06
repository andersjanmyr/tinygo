package objfile

// This file provides an abstraction over object file writers.

import "debug/elf"

type ObjectFile interface {
	AddSymbol(name, section string, binding Binding, data []byte) int
	AddReloc(symbolIndex int, offset uint64, reloc Reloc, symbol string, addend int64)
	Bytes() []byte
}

type Binding uint8

const (
	BindLocal Binding = iota
	BindGlobal
	BindWeak
)

func (b Binding) elf() elf.SymBind {
	switch b {
	case BindLocal:
		return elf.STB_LOCAL
	case BindGlobal:
		return elf.STB_GLOBAL
	case BindWeak:
		return elf.STB_WEAK
	default:
		panic("unknown symbol binding")
	}
}

type Reloc uint8

const (
	RelocNone Reloc = iota
	RelocADDR
	RelocCALL
	RelocPCREL
	RelocTLS_LE
)

func (r Reloc) String() string {
	switch r {
	case RelocADDR:
		return "ADDR"
	case RelocCALL:
		return "CALL"
	case RelocPCREL:
		return "PCREL"
	case RelocTLS_LE:
		return "TLS_LE"
	default:
		return "UNKNOWN"
	}
}
