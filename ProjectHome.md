Sparser is a Lisp-based architecture for analyzing English text. It handles text of any length and employs a fast, efficient, constant-time algorithm for the deterministic application of semantic grammars  using context-free and context-sensitive phrase-structure rules along with limited syntactic rules, and provides hooks for regular-expression analysis, multi-words, and arbitrary state-based code.

Sparser comes "out of the box" with just a minimal grammar of function words and access to grammar modules that have already been developed for core notions like amounts and time and for some sublanguages. These modules are not at all complete, so writing a grammar for a new sublanguage usually entails extending or making modifications to the core you are building on.

There is extensive documentation for Sparser included with the code base, though much of it is old and being updated.

Right now (9/21/11) we're still populating the repository. Once this message is gone Sparser will be ready to use.