(module $casperguard_build_contract-5710ef03c02a149d.wasm
  (type (;0;) (func (param i32 i32) (result i32)))
  (type (;1;) (func (param i32 i32 i32) (result i32)))
  (type (;2;) (func (param i32 i32)))
  (type (;3;) (func (result i32)))
  (type (;4;) (func (param i32)))
  (type (;5;) (func (param i32 i32 i32)))
  (type (;6;) (func (result i64)))
  (type (;7;) (func))
  (type (;8;) (func (param i32) (result i32)))
  (type (;9;) (func (param i32 i32 i32 i32) (result i32)))
  (type (;10;) (func (param i32 i32 i32 i32)))
  (type (;11;) (func (param i32 i32 i32 i32 i32)))
  (func $__original_main (type 3) (result i32)
    (local i32 i64 i64 i64 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              i32.const 0
              i64.load offset=1052888
              i64.const 0
              i64.ne
              br_if 0 (;@5;)
              i32.const 0
              i64.load offset=1052896
              local.set 1
              loop  ;; label = @6
                local.get 1
                i64.const -1
                i64.eq
                br_if 2 (;@4;)
                i32.const 0
                local.get 1
                i64.const 1
                i64.add
                local.tee 2
                i32.const 0
                i64.load offset=1052896
                local.tee 3
                local.get 3
                local.get 1
                i64.eq
                local.tee 4
                select
                i64.store offset=1052896
                local.get 3
                local.set 1
                local.get 4
                i32.eqz
                br_if 0 (;@6;)
              end
              i32.const 0
              local.get 2
              i64.store offset=1052888
            end
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  i32.const 0
                  i32.load8_u offset=1052904
                  local.tee 4
                  i32.const 3
                  i32.eq
                  br_if 0 (;@7;)
                  block  ;; label = @8
                    local.get 4
                    br_table 0 (;@8;) 2 (;@6;) 3 (;@5;) 0 (;@8;)
                  end
                  i32.const 0
                  i32.const 2
                  i32.store8 offset=1052904
                  block  ;; label = @8
                    block  ;; label = @9
                      i32.const 0
                      i32.load8_u offset=1052424
                      local.tee 4
                      i32.const 3
                      i32.eq
                      br_if 0 (;@9;)
                      block  ;; label = @10
                        block  ;; label = @11
                          local.get 4
                          br_table 0 (;@11;) 0 (;@11;) 1 (;@10;) 0 (;@11;)
                        end
                        i32.const 0
                        i32.const 2
                        i32.store8 offset=1052424
                        local.get 0
                        i32.const 28
                        i32.add
                        call $_RNvMNtNtNtCsimTbuHakp8s_3std2io8buffered9bufwriterINtB2_9BufWriterNtNtB6_5stdio9StdoutRawE13with_capacityB8_
                        i32.const 0
                        i64.const 0
                        i64.store offset=1052384
                        i32.const 0
                        local.get 0
                        i64.load offset=32
                        i64.store offset=1052408
                        i32.const 0
                        local.get 0
                        i64.load offset=40
                        i64.store offset=1052416
                        local.get 0
                        i32.const 0
                        i32.store offset=16
                        local.get 0
                        i32.const 0
                        i32.store8 offset=20
                        i32.const 0
                        local.get 0
                        i64.load offset=16
                        i64.store offset=1052392
                        local.get 0
                        i32.const 0
                        i32.store offset=24
                        i32.const 0
                        local.get 0
                        i64.load offset=24
                        i64.store offset=1052400
                        i32.const 0
                        i32.const 3
                        i32.store8 offset=1052424
                        br 2 (;@8;)
                      end
                      i32.const 1050798
                      i32.const 113
                      i32.const 1050740
                      call $_RNvNtCs3BljEZLCQ45_4core9panicking9panic_fmt
                      unreachable
                    end
                    block  ;; label = @9
                      block  ;; label = @10
                        call $_RNvNtNtNtCsimTbuHakp8s_3std6thread7current2id11get_or_init
                        local.tee 1
                        i32.const 0
                        i64.load offset=1052384
                        i64.eq
                        br_if 0 (;@10;)
                        i32.const 0
                        i32.load8_u offset=1052396
                        local.set 5
                        i32.const 1
                        local.set 4
                        i32.const 0
                        i32.const 1
                        i32.store8 offset=1052396
                        local.get 5
                        br_if 2 (;@8;)
                        i32.const 0
                        local.get 1
                        i64.store offset=1052384
                        br 1 (;@9;)
                      end
                      i32.const 0
                      i32.load offset=1052392
                      local.tee 4
                      i32.const -1
                      i32.eq
                      br_if 1 (;@8;)
                      local.get 4
                      i32.const 1
                      i32.add
                      local.set 4
                    end
                    i32.const 0
                    local.get 4
                    i32.store offset=1052392
                    local.get 0
                    i32.const 8
                    i32.add
                    call $_RNvMNtNtNtCsimTbuHakp8s_3std2io8buffered9bufwriterINtB2_9BufWriterNtNtB6_5stdio9StdoutRawE13with_capacityB8_
                    i32.const 0
                    i32.load offset=1052400
                    br_if 5 (;@3;)
                    i32.const 0
                    i32.const -1
                    i32.store offset=1052400
                    block  ;; label = @9
                      i32.const 0
                      i32.load8_u offset=1052416
                      br_if 0 (;@9;)
                      i32.const 0
                      i32.load offset=1052412
                      local.set 5
                      i32.const 0
                      local.set 4
                      block  ;; label = @10
                        loop  ;; label = @11
                          local.get 5
                          local.get 4
                          i32.le_u
                          br_if 1 (;@10;)
                          i32.const 0
                          i32.const 0
                          i32.store8 offset=1052416
                          local.get 5
                          local.set 4
                          br 0 (;@11;)
                        end
                      end
                      local.get 4
                      i32.eqz
                      br_if 0 (;@9;)
                      block  ;; label = @10
                        local.get 5
                        local.get 4
                        i32.sub
                        local.tee 5
                        i32.eqz
                        br_if 0 (;@10;)
                        i32.const 0
                        i32.load offset=1052408
                        local.tee 6
                        local.get 6
                        local.get 4
                        i32.add
                        local.get 5
                        memory.copy
                      end
                      i32.const 0
                      local.get 5
                      i32.store offset=1052412
                    end
                    i32.const 1052404
                    call $_RNvMs2_NtCs8gIPSMQVFM6_5alloc7raw_vecNtB5_11RawVecInner10deallocateB7_
                    i32.const 0
                    local.get 0
                    i64.load offset=16 align=4
                    i64.store offset=1052412 align=4
                    i32.const 0
                    local.get 0
                    i64.load offset=8 align=4
                    i64.store offset=1052404 align=4
                    i32.const 0
                    i32.load offset=1052400
                    local.tee 4
                    i32.const 1
                    i32.add
                    local.tee 5
                    local.get 4
                    i32.lt_s
                    br_if 6 (;@2;)
                    i32.const 0
                    local.get 5
                    i32.store offset=1052400
                    i32.const 0
                    i32.load offset=1052392
                    local.tee 4
                    i32.eqz
                    br_if 7 (;@1;)
                    i32.const 0
                    local.get 4
                    i32.const -1
                    i32.add
                    local.tee 4
                    i32.store offset=1052392
                    local.get 4
                    br_if 0 (;@8;)
                    i32.const 0
                    i64.const 0
                    i64.store offset=1052384
                    i32.const 0
                    i32.const 0
                    i32.store8 offset=1052396
                  end
                  i32.const 0
                  i32.const 3
                  i32.store8 offset=1052904
                end
                local.get 0
                i32.const 48
                i32.add
                global.set $__stack_pointer
                i32.const 0
                return
              end
              i32.const 1050756
              i32.const 85
              i32.const 1052188
              call $_RNvNtCs3BljEZLCQ45_4core9panicking9panic_fmt
              unreachable
            end
            i32.const 1050798
            i32.const 113
            i32.const 1052188
            call $_RNvNtCs3BljEZLCQ45_4core9panicking9panic_fmt
            unreachable
          end
          call $_RNvNvMNtNtCsimTbuHakp8s_3std6thread2idNtB4_8ThreadId3new9exhausted
          unreachable
        end
        call $_RNvNtCs3BljEZLCQ45_4core4cell22panic_already_borrowed
        unreachable
      end
      i32.const 1052308
      call $_RNvNtNtCs3BljEZLCQ45_4core9panicking11panic_const24panic_const_add_overflow
      unreachable
    end
    i32.const 1052340
    call $_RNvNtNtCs3BljEZLCQ45_4core9panicking11panic_const24panic_const_sub_overflow
    unreachable)
  (func $_RNvMNtNtNtCsimTbuHakp8s_3std2io8buffered9bufwriterINtB2_9BufWriterNtNtB6_5stdio9StdoutRawE13with_capacityB8_ (type 4) (param i32)
    local.get 0
    i32.const 0
    i32.store8 offset=12
    local.get 0
    i32.const 0
    i32.store offset=8
    local.get 0
    i64.const 4294967296
    i64.store align=4)
  (func $_RNvNtCs3BljEZLCQ45_4core9panicking9panic_fmt (type 5) (param i32 i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    local.get 3
    local.get 1
    i32.store offset=16
    local.get 3
    local.get 0
    i32.store offset=12
    local.get 3
    i32.const 1
    i32.store16 offset=28
    local.get 3
    local.get 2
    i32.store offset=24
    local.get 3
    local.get 3
    i32.const 12
    i32.add
    i32.store offset=20
    local.get 3
    i32.const 20
    i32.add
    call $_RNvCsit533lh8FIi_7___rustc17rust_begin_unwind
    unreachable)
  (func $_RNvNtNtNtCsimTbuHakp8s_3std6thread7current2id11get_or_init (type 6) (result i64)
    (local i64 i64 i64 i32)
    block  ;; label = @1
      block  ;; label = @2
        i32.const 0
        i64.load offset=1052888
        local.tee 0
        i64.const 0
        i64.ne
        br_if 0 (;@2;)
        i32.const 0
        i64.load offset=1052896
        local.set 1
        loop  ;; label = @3
          local.get 1
          i64.const -1
          i64.eq
          br_if 2 (;@1;)
          i32.const 0
          local.get 1
          i64.const 1
          i64.add
          local.tee 0
          i32.const 0
          i64.load offset=1052896
          local.tee 2
          local.get 2
          local.get 1
          i64.eq
          local.tee 3
          select
          i64.store offset=1052896
          local.get 2
          local.set 1
          local.get 3
          i32.eqz
          br_if 0 (;@3;)
        end
        i32.const 0
        local.get 0
        i64.store offset=1052888
      end
      local.get 0
      return
    end
    call $_RNvNvMNtNtCsimTbuHakp8s_3std6thread2idNtB4_8ThreadId3new9exhausted
    unreachable)
  (func $_RNvMs2_NtCs8gIPSMQVFM6_5alloc7raw_vecNtB5_11RawVecInner10deallocateB7_ (type 4) (param i32)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        i32.load
        local.tee 2
        br_if 0 (;@2;)
        i32.const 0
        local.set 2
        local.get 1
        i32.const 12
        i32.add
        local.set 0
        br 1 (;@1;)
      end
      local.get 1
      i32.const 1
      i32.store offset=12
      local.get 0
      i32.load offset=4
      local.set 3
      local.get 1
      i32.const 8
      i32.add
      local.set 0
    end
    local.get 0
    local.get 2
    i32.store
    block  ;; label = @1
      local.get 1
      i32.load offset=12
      i32.eqz
      br_if 0 (;@1;)
      local.get 1
      i32.load offset=8
      local.tee 0
      i32.eqz
      br_if 0 (;@1;)
      local.get 3
      local.get 0
      call $_RNvMs0_Csb0q38IY8roO_8dlmallocNtB5_8Dlmalloc4freeCsimTbuHakp8s_3std
    end
    local.get 1
    i32.const 16
    i32.add
    global.set $__stack_pointer)
  (func $_RNvNvMNtNtCsimTbuHakp8s_3std6thread2idNtB4_8ThreadId3new9exhausted (type 7)
    i32.const 1052220
    i32.const 111
    i32.const 1052276
    call $_RNvNtCs3BljEZLCQ45_4core9panicking9panic_fmt
    unreachable)
  (func $_RNvNtCs3BljEZLCQ45_4core4cell22panic_already_borrowed (type 7)
    call $_RNvNvNvNtCs3BljEZLCQ45_4core4cell22panic_already_borrowed8do_panic7runtime
    unreachable)
  (func $_RNvNtNtCs3BljEZLCQ45_4core9panicking11panic_const24panic_const_add_overflow (type 4) (param i32)
    i32.const 1050484
    i32.const 57
    local.get 0
    call $_RNvNtCs3BljEZLCQ45_4core9panicking9panic_fmt
    unreachable)
  (func $_RNvNtNtCs3BljEZLCQ45_4core9panicking11panic_const24panic_const_sub_overflow (type 4) (param i32)
    i32.const 1050616
    i32.const 67
    local.get 0
    call $_RNvNtCs3BljEZLCQ45_4core9panicking9panic_fmt
    unreachable)
  (func $_RNvMNtCs8gIPSMQVFM6_5alloc5allocNtB2_6Global10alloc_impl (type 5) (param i32 i32 i32)
    block  ;; label = @1
      local.get 2
      i32.eqz
      br_if 0 (;@1;)
      local.get 2
      local.get 1
      call $_RNvMs0_Csb0q38IY8roO_8dlmallocNtB5_8Dlmalloc6mallocCsimTbuHakp8s_3std
      local.set 1
    end
    local.get 0
    local.get 2
    i32.store offset=4
    local.get 0
    local.get 1
    i32.store)
  (func $_RNvMs0_Csb0q38IY8roO_8dlmallocNtB5_8Dlmalloc6mallocCsimTbuHakp8s_3std (type 0) (param i32 i32) (result i32)
    (local i32 i32 i32 i32)
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      block  ;; label = @10
                        block  ;; label = @11
                          local.get 1
                          i32.const 9
                          i32.lt_u
                          br_if 0 (;@11;)
                          i32.const 0
                          local.set 2
                          local.get 0
                          i32.const -65587
                          local.get 1
                          i32.const 16
                          local.get 1
                          i32.const 16
                          i32.gt_u
                          select
                          local.tee 1
                          i32.sub
                          i32.ge_u
                          br_if 1 (;@10;)
                          local.get 0
                          call $_RNvMs0_NtCsb0q38IY8roO_8dlmalloc8dlmallocINtB5_8DlmallocNtNtB7_3sys6SystemE12request2sizeCsimTbuHakp8s_3std
                          local.tee 0
                          local.get 1
                          i32.add
                          local.tee 3
                          local.get 0
                          i32.lt_u
                          br_if 2 (;@9;)
                          local.get 3
                          i32.const -17
                          i32.gt_u
                          br_if 3 (;@8;)
                          local.get 3
                          i32.const 12
                          i32.add
                          call $_RNvMs0_NtCsb0q38IY8roO_8dlmalloc8dlmallocINtB5_8DlmallocNtNtB7_3sys6SystemE6mallocCsimTbuHakp8s_3std
                          local.tee 3
                          i32.eqz
                          br_if 1 (;@10;)
                          local.get 3
                          i32.const -8
                          i32.add
                          local.set 2
                          block  ;; label = @12
                            local.get 1
                            i32.const -1
                            i32.add
                            local.get 3
                            i32.and
                            br_if 0 (;@12;)
                            local.get 2
                            local.set 1
                            br 11 (;@1;)
                          end
                          local.get 1
                          local.get 3
                          i32.add
                          local.tee 4
                          local.get 1
                          i32.lt_u
                          br_if 4 (;@7;)
                          local.get 4
                          i32.eqz
                          br_if 5 (;@6;)
                          i32.const 0
                          local.get 1
                          i32.sub
                          local.tee 5
                          local.get 1
                          i32.const -1
                          i32.xor
                          i32.lt_u
                          br_if 6 (;@5;)
                          local.get 4
                          i32.const -1
                          i32.add
                          local.get 5
                          i32.and
                          i32.const -8
                          i32.add
                          local.tee 4
                          local.get 2
                          i32.lt_u
                          br_if 7 (;@4;)
                          local.get 4
                          i32.const 0
                          local.get 1
                          local.get 4
                          local.get 2
                          i32.sub
                          i32.const 16
                          i32.gt_u
                          select
                          i32.add
                          local.tee 1
                          local.get 2
                          i32.lt_u
                          br_if 8 (;@3;)
                          local.get 3
                          i32.const -4
                          i32.add
                          i32.load
                          local.tee 4
                          i32.const -8
                          i32.and
                          local.tee 5
                          local.get 1
                          local.get 2
                          i32.sub
                          local.tee 3
                          i32.lt_u
                          br_if 9 (;@2;)
                          local.get 5
                          local.get 3
                          i32.sub
                          local.set 5
                          block  ;; label = @12
                            local.get 4
                            i32.const 3
                            i32.and
                            i32.eqz
                            br_if 0 (;@12;)
                            local.get 1
                            local.get 5
                            call $_RNvMs1_NtCsb0q38IY8roO_8dlmalloc8dlmallocNtB5_5Chunk9set_inuse
                            local.get 2
                            local.get 3
                            call $_RNvMs1_NtCsb0q38IY8roO_8dlmalloc8dlmallocNtB5_5Chunk9set_inuse
                            local.get 2
                            local.get 3
                            call $_RNvMs0_NtCsb0q38IY8roO_8dlmalloc8dlmallocINtB5_8DlmallocNtNtB7_3sys6SystemE13dispose_chunkCsimTbuHakp8s_3std
                            br 11 (;@1;)
                          end
                          block  ;; label = @12
                            local.get 2
                            i32.load
                            local.tee 2
                            local.get 3
                            i32.add
                            local.tee 3
                            local.get 2
                            i32.lt_u
                            br_if 0 (;@12;)
                            local.get 1
                            local.get 5
                            i32.store offset=4
                            local.get 1
                            local.get 3
                            i32.store
                            br 11 (;@1;)
                          end
                          i32.const 1051896
                          call $_RNvNtNtCs3BljEZLCQ45_4core9panicking11panic_const24panic_const_add_overflow
                          unreachable
                        end
                        local.get 0
                        call $_RNvMs0_NtCsb0q38IY8roO_8dlmalloc8dlmallocINtB5_8DlmallocNtNtB7_3sys6SystemE6mallocCsimTbuHakp8s_3std
                        local.set 2
                      end
                      local.get 2
                      return
                    end
                    i32.const 1051784
                    call $_RNvNtNtCs3BljEZLCQ45_4core9panicking11panic_const24panic_const_add_overflow
                    unreachable
                  end
                  i32.const 1051784
                  call $_RNvNtNtCs3BljEZLCQ45_4core9panicking11panic_const24panic_const_add_overflow
                  unreachable
                end
                i32.const 1051800
                call $_RNvNtNtCs3BljEZLCQ45_4core9panicking11panic_const24panic_const_add_overflow
                unreachable
              end
              i32.const 1051816
              call $_RNvNtNtCs3BljEZLCQ45_4core9panicking11panic_const24panic_const_sub_overflow
              unreachable
            end
            i32.const 1051832
            call $_RNvNtNtCs3BljEZLCQ45_4core9panicking11panic_const24panic_const_add_overflow
            unreachable
          end
          i32.const 1051848
          call $_RNvNtNtCs3BljEZLCQ45_4core9panicking11panic_const24panic_const_sub_overflow
          unreachable
        end
        i32.const 1051864
        call $_RNvNtNtCs3BljEZLCQ45_4core9panicking11panic_const24panic_const_sub_overflow
        unreachable
      end
      i32.const 1051880
      call $_RNvNtNtCs3BljEZLCQ45_4core9panicking11panic_const24panic_const_sub_overflow
      unreachable
    end
    block  ;; label = @1
      block  ;; label = @2
        local.get 1
        i32.load offset=4
        local.tee 2
        i32.const 3
        i32.and
        i32.eqz
        br_if 0 (;@2;)
        local.get 2
        i32.const -8
        i32.and
        local.tee 2
        local.get 0
        i32.const 16
        i32.add
        i32.le_u
        br_if 0 (;@2;)
        local.get 2
        local.get 0
        i32.lt_u
        br_if 1 (;@1;)
        local.get 1
        local.get 0
        call $_RNvMs1_NtCsb0q38IY8roO_8dlmalloc8dlmallocNtB5_5Chunk9set_inuse
        local.get 1
        local.get 0
        i32.add
        local.tee 3
        local.get 2
        local.get 0
        i32.sub
        local.tee 0
        call $_RNvMs1_NtCsb0q38IY8roO_8dlmalloc8dlmallocNtB5_5Chunk9set_inuse
        local.get 3
        local.get 0
        call $_RNvMs0_NtCsb0q38IY8roO_8dlmalloc8dlmallocINtB5_8DlmallocNtNtB7_3sys6SystemE13dispose_chunkCsimTbuHakp8s_3std
      end
      local.get 1
      i32.const 8
      i32.add
      return
    end
    i32.const 1051912
    call $_RNvNtNtCs3BljEZLCQ45_4core9panicking11panic_const24panic_const_sub_overflow
    unreachable)
  (func $_RNvMs0_Csb0q38IY8roO_8dlmallocNtB5_8Dlmalloc4freeCsimTbuHakp8s_3std (type 2) (param i32 i32)
    local.get 0
    i32.const -4
    i32.add
    i32.load
    local.get 1
    call $_RNvMs0_NtCsb0q38IY8roO_8dlmalloc8dlmallocINtB5_8DlmallocNtNtB7_3sys6SystemE13validate_sizeCsimTbuHakp8s_3std
    local.get 0
    call $_RNvMs0_NtCsb0q38IY8roO_8dlmalloc8dlmallocINtB5_8DlmallocNtNtB7_3sys6SystemE4freeCsimTbuHakp8s_3std)
  (func $_RNvMs_NtCs8gIPSMQVFM6_5alloc3vecINtB4_3VechE7reserveB6_ (type 2) (param i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    block  ;; label = @1
      local.get 1
      local.get 0
      i32.load
      local.tee 3
      local.get 0
      i32.load offset=8
      local.tee 4
      i32.sub
      i32.le_u
      br_if 0 (;@1;)
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            local.get 1
            local.get 4
            i32.add
            local.tee 4
            local.get 1
            i32.ge_u
            br_if 0 (;@4;)
            i32.const 0
            local.set 5
            br 1 (;@3;)
          end
          i32.const 0
          local.set 5
          local.get 4
          local.get 3
          i32.const 1
          i32.shl
          local.tee 1
          local.get 4
          local.get 1
          i32.gt_u
          select
          local.tee 1
          i32.const 8
          local.get 1
          i32.const 8
          i32.gt_u
          select
          local.tee 4
          i32.const 0
          i32.lt_s
          br_if 0 (;@3;)
          block  ;; label = @4
            block  ;; label = @5
              local.get 3
              br_if 0 (;@5;)
              i32.const 0
              local.set 3
              local.get 2
              i32.const 28
              i32.add
              local.set 5
              br 1 (;@4;)
            end
            local.get 0
            i32.load offset=4
            local.set 1
            local.get 2
            i32.const 1
            i32.store offset=28
            local.get 2
            i32.const 24
            i32.add
            local.set 5
          end
          local.get 5
          local.get 3
          i32.store
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      block  ;; label = @10
                        block  ;; label = @11
                          block  ;; label = @12
                            block  ;; label = @13
                              local.get 2
                              i32.load offset=28
                              i32.eqz
                              br_if 0 (;@13;)
                              block  ;; label = @14
                                local.get 2
                                i32.load offset=24
                                local.tee 3
                                br_if 0 (;@14;)
                                local.get 2
                                i32.const 16
                                i32.add
                                i32.const 1
                                local.get 4
                                call $_RNvMNtCs8gIPSMQVFM6_5alloc5allocNtB2_6Global10alloc_impl
                                local.get 2
                                i32.load offset=16
                                local.set 1
                                br 10 (;@4;)
                              end
                              local.get 1
                              i32.const -4
                              i32.add
                              local.tee 6
                              i32.load
                              local.get 3
                              call $_RNvMs0_NtCsb0q38IY8roO_8dlmalloc8dlmallocINtB5_8DlmallocNtNtB7_3sys6SystemE13validate_sizeCsimTbuHakp8s_3std
                              local.get 1
                              i32.const -8
                              i32.add
                              local.set 7
                              local.get 4
                              call $_RNvMs0_NtCsb0q38IY8roO_8dlmalloc8dlmallocINtB5_8DlmallocNtNtB7_3sys6SystemE12request2sizeCsimTbuHakp8s_3std
                              local.set 3
                              local.get 6
                              i32.load
                              local.tee 8
                              i32.const -8
                              i32.and
                              local.set 5
                              block  ;; label = @14
                                block  ;; label = @15
                                  block  ;; label = @16
                                    block  ;; label = @17
                                      block  ;; label = @18
                                        block  ;; label = @19
                                          block  ;; label = @20
                                            local.get 8
                                            i32.const 3
                                            i32.and
                                            i32.eqz
                                            br_if 0 (;@20;)
                                            local.get 5
                                            local.get 3
                                            i32.ge_u
                                            br_if 3 (;@17;)
                                            local.get 7
                                            local.get 5
                                            i32.add
                                            local.tee 8
                                            i32.const 0
                                            i32.load offset=1052864
                                            i32.eq
                                            br_if 2 (;@18;)
                                            local.get 8
                                            i32.const 0
                                            i32.load offset=1052860
                                            i32.eq
                                            br_if 1 (;@19;)
                                            local.get 8
                                            i32.load offset=4
                                            local.tee 9
                                            i32.const 2
                                            i32.and
                                            br_if 5 (;@15;)
                                            local.get 9
                                            i32.const -8
                                            i32.and
                                            local.tee 9
                                            local.get 5
                                            i32.add
                                            local.tee 5
                                            local.get 9
                                            i32.lt_u
                                            br_if 12 (;@8;)
                                            local.get 5
                                            local.get 3
                                            i32.lt_u
                                            br_if 5 (;@15;)
                                            local.get 8
                                            local.get 9
                                            call $_RNvMs0_NtCsb0q38IY8roO_8dlmalloc8dlmallocINtB5_8DlmallocNtNtB7_3sys6SystemE12unlink_chunkCsimTbuHakp8s_3std
                                            local.get 5
                                            local.get 3
                                            i32.sub
                                            local.tee 6
                                            i32.const 16
                                            i32.lt_u
                                            br_if 6 (;@14;)
                                            local.get 7
                                            local.get 3
                                            call $_RNvMs1_NtCsb0q38IY8roO_8dlmalloc8dlmallocNtB5_5Chunk9set_inuse
                                            local.get 7
                                            local.get 3
                                            i32.add
                                            local.tee 3
                                            local.get 6
                                            call $_RNvMs1_NtCsb0q38IY8roO_8dlmalloc8dlmallocNtB5_5Chunk9set_inuse
                                            local.get 3
                                            local.get 6
                                            call $_RNvMs0_NtCsb0q38IY8roO_8dlmalloc8dlmallocINtB5_8DlmallocNtNtB7_3sys6SystemE13dispose_chunkCsimTbuHakp8s_3std
                                            br 16 (;@4;)
                                          end
                                          local.get 3
                                          i32.const 256
                                          i32.lt_u
                                          br_if 4 (;@15;)
                                          block  ;; label = @20
                                            local.get 5
                                            local.get 3
                                            i32.const 4
                                            i32.add
                                            i32.lt_u
                                            br_if 0 (;@20;)
                                            local.get 5
                                            local.get 3
                                            i32.sub
                                            i32.const 131073
                                            i32.lt_u
                                            br_if 4 (;@16;)
                                          end
                                          local.get 7
                                          i32.load
                                          local.tee 7
                                          local.get 5
                                          i32.add
                                          local.tee 5
                                          local.get 7
                                          i32.lt_u
                                          br_if 7 (;@12;)
                                          local.get 5
                                          i32.const -17
                                          i32.gt_u
                                          br_if 8 (;@11;)
                                          local.get 3
                                          i32.const -25
                                          i32.gt_u
                                          br_if 9 (;@10;)
                                          local.get 3
                                          i32.const 32
                                          i32.add
                                          local.get 3
                                          i32.const 24
                                          i32.add
                                          i32.lt_u
                                          br_if 10 (;@9;)
                                          local.get 3
                                          i32.const 31
                                          i32.add
                                          i32.const 65536
                                          call $_RNvNtCsb0q38IY8roO_8dlmalloc8dlmalloc8align_up
                                          drop
                                          br 4 (;@15;)
                                        end
                                        i32.const 0
                                        i32.load offset=1052852
                                        local.tee 8
                                        local.get 5
                                        i32.add
                                        local.tee 5
                                        local.get 8
                                        i32.lt_u
                                        br_if 11 (;@7;)
                                        local.get 5
                                        local.get 3
                                        i32.lt_u
                                        br_if 3 (;@15;)
                                        block  ;; label = @19
                                          block  ;; label = @20
                                            local.get 5
                                            local.get 3
                                            i32.sub
                                            local.tee 6
                                            i32.const 16
                                            i32.lt_u
                                            br_if 0 (;@20;)
                                            local.get 7
                                            local.get 3
                                            call $_RNvMs1_NtCsb0q38IY8roO_8dlmalloc8dlmallocNtB5_5Chunk9set_inuse
                                            local.get 7
                                            local.get 3
                                            i32.add
                                            local.tee 3
                                            local.get 6
                                            i32.const 1
                                            i32.or
                                            i32.store offset=4
                                            local.get 7
                                            local.get 5
                                            i32.add
                                            local.tee 5
                                            local.get 6
                                            i32.store
                                            local.get 5
                                            local.get 5
                                            i32.load offset=4
                                            i32.const -2
                                            i32.and
                                            i32.store offset=4
                                            br 1 (;@19;)
                                          end
                                          local.get 7
                                          local.get 5
                                          call $_RNvMs1_NtCsb0q38IY8roO_8dlmalloc8dlmallocNtB5_5Chunk9set_inuse
                                          i32.const 0
                                          local.set 3
                                          i32.const 0
                                          local.set 6
                                        end
                                        i32.const 0
                                        local.get 3
                                        i32.store offset=1052860
                                        i32.const 0
                                        local.get 6
                                        i32.store offset=1052852
                                        br 14 (;@4;)
                                      end
                                      i32.const 0
                                      i32.load offset=1052856
                                      local.tee 8
                                      local.get 5
                                      i32.add
                                      local.tee 5
                                      local.get 8
                                      i32.lt_u
                                      br_if 11 (;@6;)
                                      local.get 5
                                      local.get 3
                                      i32.le_u
                                      br_if 2 (;@15;)
                                      local.get 7
                                      local.get 3
                                      call $_RNvMs1_NtCsb0q38IY8roO_8dlmalloc8dlmallocNtB5_5Chunk9set_inuse
                                      local.get 7
                                      local.get 3
                                      i32.add
                                      local.tee 6
                                      local.get 5
                                      local.get 3
                                      i32.sub
                                      local.tee 3
                                      i32.const 1
                                      i32.or
                                      i32.store offset=4
                                      i32.const 0
                                      local.get 3
                                      i32.store offset=1052856
                                      i32.const 0
                                      local.get 6
                                      i32.store offset=1052864
                                      br 13 (;@4;)
                                    end
                                    local.get 5
                                    local.get 3
                                    i32.sub
                                    local.tee 5
                                    i32.const 16
                                    i32.ge_u
                                    br_if 11 (;@5;)
                                  end
                                  local.get 7
                                  br_if 11 (;@4;)
                                end
                                block  ;; label = @15
                                  local.get 4
                                  call $_RNvMs0_NtCsb0q38IY8roO_8dlmalloc8dlmallocINtB5_8DlmallocNtNtB7_3sys6SystemE6mallocCsimTbuHakp8s_3std
                                  local.tee 3
                                  br_if 0 (;@15;)
                                  i32.const 0
                                  local.set 1
                                  br 11 (;@4;)
                                end
                                block  ;; label = @15
                                  local.get 6
                                  i32.load
                                  local.tee 5
                                  i32.const -8
                                  i32.and
                                  local.tee 6
                                  i32.const 4
                                  i32.const 8
                                  local.get 5
                                  i32.const 3
                                  i32.and
                                  select
                                  local.tee 5
                                  i32.lt_u
                                  br_if 0 (;@15;)
                                  block  ;; label = @16
                                    local.get 4
                                    local.get 6
                                    local.get 5
                                    i32.sub
                                    local.tee 5
                                    local.get 4
                                    local.get 5
                                    i32.lt_u
                                    select
                                    local.tee 5
                                    i32.eqz
                                    br_if 0 (;@16;)
                                    local.get 3
                                    local.get 1
                                    local.get 5
                                    memory.copy
                                  end
                                  local.get 1
                                  call $_RNvMs0_NtCsb0q38IY8roO_8dlmalloc8dlmallocINtB5_8DlmallocNtNtB7_3sys6SystemE4freeCsimTbuHakp8s_3std
                                  local.get 3
                                  local.set 1
                                  br 11 (;@4;)
                                end
                                i32.const 1051752
                                call $_RNvNtNtCs3BljEZLCQ45_4core9panicking11panic_const24panic_const_sub_overflow
                                unreachable
                              end
                              local.get 7
                              local.get 5
                              call $_RNvMs1_NtCsb0q38IY8roO_8dlmalloc8dlmallocNtB5_5Chunk9set_inuse
                              br 9 (;@4;)
                            end
                            local.get 2
                            i32.const 8
                            i32.add
                            i32.const 1
                            local.get 4
                            call $_RNvMNtCs8gIPSMQVFM6_5alloc5allocNtB2_6Global10alloc_impl
                            local.get 2
                            i32.load offset=8
                            local.set 1
                            br 8 (;@4;)
                          end
                          i32.const 1051032
                          call $_RNvNtNtCs3BljEZLCQ45_4core9panicking11panic_const24panic_const_add_overflow
                          unreachable
                        end
                        i32.const 1051032
                        call $_RNvNtNtCs3BljEZLCQ45_4core9panicking11panic_const24panic_const_add_overflow
                        unreachable
                      end
                      i32.const 1051048
                      call $_RNvNtNtCs3BljEZLCQ45_4core9panicking11panic_const24panic_const_add_overflow
                      unreachable
                    end
                    i32.const 1051048
                    call $_RNvNtNtCs3BljEZLCQ45_4core9panicking11panic_const24panic_const_add_overflow
                    unreachable
                  end
                  i32.const 1051512
                  call $_RNvNtNtCs3BljEZLCQ45_4core9panicking11panic_const24panic_const_add_overflow
                  unreachable
                end
                i32.const 1051528
                call $_RNvNtNtCs3BljEZLCQ45_4core9panicking11panic_const24panic_const_add_overflow
                unreachable
              end
              i32.const 1051544
              call $_RNvNtNtCs3BljEZLCQ45_4core9panicking11panic_const24panic_const_add_overflow
              unreachable
            end
            local.get 7
            local.get 3
            call $_RNvMs1_NtCsb0q38IY8roO_8dlmalloc8dlmallocNtB5_5Chunk9set_inuse
            local.get 7
            local.get 3
            i32.add
            local.tee 3
            local.get 5
            call $_RNvMs1_NtCsb0q38IY8roO_8dlmalloc8dlmallocNtB5_5Chunk9set_inuse
            local.get 3
            local.get 5
            call $_RNvMs0_NtCsb0q38IY8roO_8dlmalloc8dlmallocINtB5_8DlmallocNtNtB7_3sys6SystemE13dispose_chunkCsimTbuHakp8s_3std
          end
          local.get 1
          br_if 1 (;@2;)
          i32.const 1
          local.set 5
        end
        local.get 5
        local.get 4
        call $_RNvNtCs8gIPSMQVFM6_5alloc7raw_vec12handle_error
        unreachable
      end
      local.get 0
      local.get 4
      i32.store
      local.get 0
      local.get 1
      i32.store offset=4
    end
    local.get 2
    i32.const 32
    i32.add
    global.set $__stack_pointer)
  (func $_RNvMs0_NtCsb0q38IY8roO_8dlmalloc8dlmallocINtB5_8DlmallocNtNtB7_3sys6SystemE13validate_sizeCsimTbuHakp8s_3std (type 2) (param i32 i32)
    (local i32 i32 i32)
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            i32.const 4
            i32.const 8
            local.get 0
            i32.const 3
            i32.and
            local.tee 2
            select
            local.tee 3
            local.get 1
            i32.add
            local.tee 4
            local.get 3
            i32.lt_u
            br_if 0 (;@4;)
            local.get 0
            i32.const -8
            i32.and
            local.tee 0
            local.get 4
            i32.lt_u
            br_if 1 (;@3;)
            local.get 2
            i32.eqz
            br_if 2 (;@2;)
            local.get 1
            i32.const -40
            i32.gt_u
            br_if 3 (;@1;)
            local.get 0
            local.get 1
            i32.const 39
            i32.add
            i32.le_u
            br_if 2 (;@2;)
            i32.const 1051432
            i32.const 46
            i32.const 1051480
            call $_RNvNtCs3BljEZLCQ45_4core9panicking5panic
            unreachable
          end
          i32.const 1051336
          call $_RNvNtNtCs3BljEZLCQ45_4core9panicking11panic_const24panic_const_add_overflow
          unreachable
        end
        i32.const 1051352
        i32.const 46
        i32.const 1051400
        call $_RNvNtCs3BljEZLCQ45_4core9panicking5panic
        unreachable
      end
      return
    end
    i32.const 1051416
    call $_RNvNtNtCs3BljEZLCQ45_4core9panicking11panic_const24panic_const_add_overflow
    unreachable)
  (func $_RNvMs0_NtCsb0q38IY8roO_8dlmalloc8dlmallocINtB5_8DlmallocNtNtB7_3sys6SystemE12request2sizeCsimTbuHakp8s_3std (type 8) (param i32) (result i32)
    (local i32)
    i32.const 16
    local.set 1
    block  ;; label = @1
      local.get 0
      i32.const 11
      i32.lt_u
      br_if 0 (;@1;)
      local.get 0
      call $_RNvMs0_NtCsb0q38IY8roO_8dlmalloc8dlmallocINtB5_8DlmallocNtNtB7_3sys6SystemE11pad_requestCsimTbuHakp8s_3std
      local.set 1
    end
    local.get 1)
  (func $_RNvMs0_NtCsb0q38IY8roO_8dlmalloc8dlmallocINtB5_8DlmallocNtNtB7_3sys6SystemE12unlink_chunkCsimTbuHakp8s_3std (type 2) (param i32 i32)
    (local i32)
    block  ;; label = @1
      local.get 1
      i32.const 256
      i32.lt_u
      br_if 0 (;@1;)
      local.get 0
      call $_RNvMs0_NtCsb0q38IY8roO_8dlmalloc8dlmallocINtB5_8DlmallocNtNtB7_3sys6SystemE18unlink_large_chunkCsimTbuHakp8s_3std
      return
    end
    block  ;; label = @1
      local.get 0
      i32.load offset=12
      local.tee 2
      local.get 0
      i32.load offset=8
      local.tee 0
      i32.eq
      br_if 0 (;@1;)
      local.get 0
      local.get 2
      i32.store offset=12
      local.get 2
      local.get 0
      i32.store offset=8
      return
    end
    local.get 1
    i32.const 3
    i32.shr_u
    call $_RNvMs0_NtCsb0q38IY8roO_8dlmalloc8dlmallocINtB5_8DlmallocNtNtB7_3sys6SystemE14clear_smallmapCsimTbuHakp8s_3std)
  (func $_RNvMs1_NtCsb0q38IY8roO_8dlmalloc8dlmallocNtB5_5Chunk9set_inuse (type 2) (param i32 i32)
    local.get 0
    local.get 1
    local.get 0
    i32.load offset=4
    i32.const 1
    i32.and
    i32.or
    i32.const 2
    i32.or
    i32.store offset=4
    local.get 0
    local.get 1
    i32.add
    local.tee 0
    local.get 0
    i32.load offset=4
    i32.const 1
    i32.or
    i32.store offset=4)
  (func $_RNvMs0_NtCsb0q38IY8roO_8dlmalloc8dlmallocINtB5_8DlmallocNtNtB7_3sys6SystemE13dispose_chunkCsimTbuHakp8s_3std (type 2) (param i32 i32)
    (local i32 i32 i32)
    local.get 0
    local.get 1
    i32.add
    local.set 2
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      block  ;; label = @10
                        block  ;; label = @11
                          local.get 0
                          i32.load offset=4
                          local.tee 3
                          i32.const 1
                          i32.and
                          br_if 0 (;@11;)
                          local.get 0
                          i32.load
                          local.set 4
                          local.get 3
                          i32.const 2
                          i32.and
                          i32.eqz
                          br_if 1 (;@10;)
                          local.get 4
                          local.get 1
                          i32.add
                          local.tee 1
                          local.get 4
                          i32.lt_u
                          br_if 8 (;@3;)
                          block  ;; label = @12
                            local.get 0
                            local.get 4
                            i32.sub
                            local.tee 0
                            i32.const 0
                            i32.load offset=1052860
                            i32.ne
                            br_if 0 (;@12;)
                            local.get 2
                            i32.load offset=4
                            i32.const 3
                            i32.and
                            i32.const 3
                            i32.ne
                            br_if 1 (;@11;)
                            i32.const 0
                            local.get 1
                            i32.store offset=1052852
                            local.get 2
                            local.get 2
                            i32.load offset=4
                            i32.const -2
                            i32.and
                            i32.store offset=4
                            local.get 0
                            local.get 1
                            i32.const 1
                            i32.or
                            i32.store offset=4
                            local.get 2
                            local.get 1
                            i32.store
                            return
                          end
                          local.get 0
                          local.get 4
                          call $_RNvMs0_NtCsb0q38IY8roO_8dlmalloc8dlmallocINtB5_8DlmallocNtNtB7_3sys6SystemE12unlink_chunkCsimTbuHakp8s_3std
                        end
                        local.get 2
                        i32.load offset=4
                        local.tee 4
                        i32.const 2
                        i32.and
                        br_if 2 (;@8;)
                        local.get 2
                        i32.const 0
                        i32.load offset=1052864
                        i32.eq
                        br_if 5 (;@5;)
                        local.get 2
                        i32.const 0
                        i32.load offset=1052860
                        i32.eq
                        br_if 4 (;@6;)
                        local.get 4
                        i32.const -8
                        i32.and
                        local.tee 4
                        local.get 1
                        i32.add
                        local.tee 1
                        local.get 4
                        i32.lt_u
                        br_if 1 (;@9;)
                        local.get 2
                        local.get 4
                        call $_RNvMs0_NtCsb0q38IY8roO_8dlmalloc8dlmallocINtB5_8DlmallocNtNtB7_3sys6SystemE12unlink_chunkCsimTbuHakp8s_3std
                        local.get 0
                        local.get 1
                        i32.const 1
                        i32.or
                        i32.store offset=4
                        local.get 0
                        local.get 1
                        i32.add
                        local.get 1
                        i32.store
                        local.get 0
                        i32.const 0
                        i32.load offset=1052860
                        i32.ne
                        br_if 3 (;@7;)
                        i32.const 0
                        local.get 1
                        i32.store offset=1052852
                        return
                      end
                      local.get 4
                      i32.const -17
                      i32.gt_u
                      br_if 7 (;@2;)
                      i32.const -17
                      local.get 4
                      i32.sub
                      local.get 1
                      i32.ge_u
                      br_if 5 (;@4;)
                      i32.const 1051128
                      call $_RNvNtNtCs3BljEZLCQ45_4core9panicking11panic_const24panic_const_add_overflow
                      unreachable
                    end
                    i32.const 1051144
                    call $_RNvNtNtCs3BljEZLCQ45_4core9panicking11panic_const24panic_const_add_overflow
                    unreachable
                  end
                  local.get 2
                  local.get 4
                  i32.const -2
                  i32.and
                  i32.store offset=4
                  local.get 0
                  local.get 1
                  i32.const 1
                  i32.or
                  i32.store offset=4
                  local.get 0
                  local.get 1
                  i32.add
                  local.get 1
                  i32.store
                end
                local.get 0
                local.get 1
                call $_RNvMs0_NtCsb0q38IY8roO_8dlmalloc8dlmallocINtB5_8DlmallocNtNtB7_3sys6SystemE12insert_chunkCsimTbuHakp8s_3std
                return
              end
              block  ;; label = @6
                i32.const 0
                i32.load offset=1052852
                local.tee 2
                local.get 1
                i32.add
                local.tee 1
                local.get 2
                i32.lt_u
                br_if 0 (;@6;)
                i32.const 0
                local.get 0
                i32.store offset=1052860
                i32.const 0
                local.get 1
                i32.store offset=1052852
                local.get 0
                local.get 1
                i32.const 1
                i32.or
                i32.store offset=4
                local.get 0
                local.get 1
                i32.add
                local.get 1
                i32.store
                return
              end
              i32.const 1051160
              call $_RNvNtNtCs3BljEZLCQ45_4core9panicking11panic_const24panic_const_add_overflow
              unreachable
            end
            i32.const 0
            i32.load offset=1052856
            local.tee 2
            local.get 1
            i32.add
            local.tee 1
            local.get 2
            i32.lt_u
            br_if 3 (;@1;)
            i32.const 0
            local.get 0
            i32.store offset=1052864
            i32.const 0
            local.get 1
            i32.store offset=1052856
            local.get 0
            local.get 1
            i32.const 1
            i32.or
            i32.store offset=4
            local.get 0
            i32.const 0
            i32.load offset=1052860
            i32.ne
            br_if 0 (;@4;)
            i32.const 0
            i32.const 0
            i32.store offset=1052852
            i32.const 0
            i32.const 0
            i32.store offset=1052860
          end
          return
        end
        i32.const 1051096
        call $_RNvNtNtCs3BljEZLCQ45_4core9panicking11panic_const24panic_const_add_overflow
        unreachable
      end
      i32.const 1051112
      call $_RNvNtNtCs3BljEZLCQ45_4core9panicking11panic_const24panic_const_add_overflow
      unreachable
    end
    i32.const 1051176
    call $_RNvNtNtCs3BljEZLCQ45_4core9panicking11panic_const24panic_const_add_overflow
    unreachable)
  (func $_RNvNtCsb0q38IY8roO_8dlmalloc8dlmalloc8align_up (type 0) (param i32 i32) (result i32)
    (local i32)
    block  ;; label = @1
      local.get 0
      local.get 1
      i32.add
      i32.const -1
      i32.add
      local.tee 2
      local.get 0
      i32.ge_u
      br_if 0 (;@1;)
      i32.const 1052156
      call $_RNvNtNtCs3BljEZLCQ45_4core9panicking11panic_const24panic_const_add_overflow
      unreachable
    end
    local.get 2
    i32.const 0
    local.get 1
    i32.sub
    i32.and)
  (func $_RNvMs0_NtCsb0q38IY8roO_8dlmalloc8dlmallocINtB5_8DlmallocNtNtB7_3sys6SystemE6mallocCsimTbuHakp8s_3std (type 8) (param i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i64)
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      block  ;; label = @10
                        block  ;; label = @11
                          block  ;; label = @12
                            block  ;; label = @13
                              block  ;; label = @14
                                block  ;; label = @15
                                  block  ;; label = @16
                                    block  ;; label = @17
                                      block  ;; label = @18
                                        block  ;; label = @19
                                          block  ;; label = @20
                                            block  ;; label = @21
                                              block  ;; label = @22
                                                block  ;; label = @23
                                                  local.get 0
                                                  i32.const 245
                                                  i32.lt_u
                                                  br_if 0 (;@23;)
                                                  i32.const 0
                                                  local.set 1
                                                  local.get 0
                                                  i32.const -65587
                                                  i32.ge_u
                                                  br_if 22 (;@1;)
                                                  local.get 0
                                                  call $_RNvMs0_NtCsb0q38IY8roO_8dlmalloc8dlmallocINtB5_8DlmallocNtNtB7_3sys6SystemE11pad_requestCsimTbuHakp8s_3std
                                                  local.set 2
                                                  i32.const 0
                                                  i32.load offset=1052848
                                                  i32.eqz
                                                  br_if 3 (;@20;)
                                                  block  ;; label = @24
                                                    i32.const 0
                                                    local.get 2
                                                    i32.sub
                                                    local.tee 1
                                                    local.get 2
                                                    i32.const -1
                                                    i32.xor
                                                    i32.lt_u
                                                    br_if 0 (;@24;)
                                                    block  ;; label = @25
                                                      local.get 2
                                                      call $_RNvMs0_NtCsb0q38IY8roO_8dlmalloc8dlmallocINtB5_8DlmallocNtNtB7_3sys6SystemE18compute_tree_indexCsimTbuHakp8s_3std
                                                      local.tee 3
                                                      i32.const 2
                                                      i32.shl
                                                      i32.const 1052436
                                                      i32.add
                                                      i32.load
                                                      local.tee 0
                                                      i32.eqz
                                                      br_if 0 (;@25;)
                                                      i32.const 0
                                                      local.set 4
                                                      local.get 2
                                                      i32.const 0
                                                      i32.const 25
                                                      local.get 3
                                                      i32.const 1
                                                      i32.shr_u
                                                      i32.sub
                                                      local.get 3
                                                      i32.const 31
                                                      i32.eq
                                                      select
                                                      i32.shl
                                                      local.set 5
                                                      i32.const 0
                                                      local.set 6
                                                      loop  ;; label = @26
                                                        block  ;; label = @27
                                                          local.get 0
                                                          local.tee 0
                                                          i32.load offset=4
                                                          i32.const -8
                                                          i32.and
                                                          local.tee 7
                                                          local.get 2
                                                          i32.lt_u
                                                          br_if 0 (;@27;)
                                                          local.get 7
                                                          local.get 2
                                                          i32.sub
                                                          local.tee 7
                                                          local.get 1
                                                          i32.ge_u
                                                          br_if 0 (;@27;)
                                                          local.get 0
                                                          local.set 4
                                                          local.get 7
                                                          local.set 1
                                                          local.get 7
                                                          br_if 0 (;@27;)
                                                          i32.const 0
                                                          local.set 1
                                                          local.get 0
                                                          local.set 6
                                                          br 6 (;@21;)
                                                        end
                                                        local.get 6
                                                        local.get 0
                                                        i32.load offset=20
                                                        local.tee 7
                                                        local.get 7
                                                        local.get 0
                                                        local.get 5
                                                        i32.const 29
                                                        i32.shr_u
                                                        i32.const 4
                                                        i32.and
                                                        i32.add
                                                        i32.load offset=16
                                                        local.tee 0
                                                        i32.eq
                                                        select
                                                        local.get 6
                                                        local.get 7
                                                        select
                                                        local.set 6
                                                        local.get 5
                                                        i32.const 1
                                                        i32.shl
                                                        local.set 5
                                                        local.get 0
                                                        br_if 0 (;@26;)
                                                      end
                                                      local.get 6
                                                      br_if 3 (;@22;)
                                                      local.get 4
                                                      i32.eqz
                                                      br_if 0 (;@25;)
                                                      i32.const 0
                                                      local.set 6
                                                      br 3 (;@22;)
                                                    end
                                                    i32.const 0
                                                    local.set 0
                                                    block  ;; label = @25
                                                      i32.const 0
                                                      i32.load offset=1052848
                                                      i32.const 2
                                                      local.get 3
                                                      i32.shl
                                                      local.tee 5
                                                      i32.const 0
                                                      local.get 5
                                                      i32.sub
                                                      i32.or
                                                      i32.and
                                                      local.tee 5
                                                      br_if 0 (;@25;)
                                                      i32.const 0
                                                      local.set 6
                                                      br 4 (;@21;)
                                                    end
                                                    local.get 5
                                                    call $_RNvNtCsb0q38IY8roO_8dlmalloc8dlmalloc9least_bit
                                                    i32.ctz
                                                    i32.const 2
                                                    i32.shl
                                                    i32.const 1052436
                                                    i32.add
                                                    i32.load
                                                    local.set 6
                                                    br 3 (;@21;)
                                                  end
                                                  i32.const 1051272
                                                  call $_RNvNtNtCs3BljEZLCQ45_4core9panicking11panic_const24panic_const_add_overflow
                                                  unreachable
                                                end
                                                block  ;; label = @23
                                                  local.get 0
                                                  call $_RNvMs0_NtCsb0q38IY8roO_8dlmalloc8dlmallocINtB5_8DlmallocNtNtB7_3sys6SystemE12request2sizeCsimTbuHakp8s_3std
                                                  local.tee 2
                                                  i32.const 256
                                                  i32.lt_u
                                                  br_if 0 (;@23;)
                                                  call $_RNvNtNtCs3BljEZLCQ45_4core9panicking11panic_const24panic_const_shr_overflow
                                                  unreachable
                                                end
                                                block  ;; label = @23
                                                  i32.const 0
                                                  i32.load offset=1052844
                                                  local.get 2
                                                  i32.const 3
                                                  i32.shr_u
                                                  local.tee 1
                                                  i32.shr_u
                                                  local.tee 0
                                                  i32.const 3
                                                  i32.and
                                                  i32.eqz
                                                  br_if 0 (;@23;)
                                                  local.get 0
                                                  i32.const -1
                                                  i32.xor
                                                  i32.const 1
                                                  i32.and
                                                  local.get 1
                                                  i32.add
                                                  local.tee 0
                                                  call $_RNvMs0_NtCsb0q38IY8roO_8dlmalloc8dlmallocINtB5_8DlmallocNtNtB7_3sys6SystemE11smallbin_atCsimTbuHakp8s_3std
                                                  local.tee 1
                                                  local.get 1
                                                  i32.load offset=8
                                                  local.tee 5
                                                  i32.const 8
                                                  i32.add
                                                  local.tee 1
                                                  i32.load
                                                  local.get 0
                                                  call $_RNvMs0_NtCsb0q38IY8roO_8dlmalloc8dlmallocINtB5_8DlmallocNtNtB7_3sys6SystemE24unlink_first_small_chunkCsimTbuHakp8s_3std
                                                  local.get 5
                                                  local.get 0
                                                  i32.const 3
                                                  i32.shl
                                                  local.tee 0
                                                  i32.const 3
                                                  i32.or
                                                  i32.store offset=4
                                                  local.get 5
                                                  local.get 0
                                                  i32.add
                                                  local.tee 0
                                                  local.get 0
                                                  i32.load offset=4
                                                  i32.const 1
                                                  i32.or
                                                  i32.store offset=4
                                                  br 22 (;@1;)
                                                end
                                                local.get 2
                                                i32.const 0
                                                i32.load offset=1052852
                                                i32.le_u
                                                br_if 2 (;@20;)
                                                block  ;; label = @23
                                                  block  ;; label = @24
                                                    local.get 0
                                                    br_if 0 (;@24;)
                                                    i32.const 0
                                                    i32.load offset=1052848
                                                    local.tee 0
                                                    i32.eqz
                                                    br_if 4 (;@20;)
                                                    local.get 0
                                                    call $_RNvNtCsb0q38IY8roO_8dlmalloc8dlmalloc9least_bit
                                                    i32.ctz
                                                    i32.const 2
                                                    i32.shl
                                                    i32.const 1052436
                                                    i32.add
                                                    i32.load
                                                    local.tee 5
                                                    i32.load offset=4
                                                    i32.const -8
                                                    i32.and
                                                    local.tee 0
                                                    local.get 2
                                                    i32.lt_u
                                                    br_if 1 (;@23;)
                                                    local.get 0
                                                    local.get 2
                                                    i32.sub
                                                    local.set 1
                                                    local.get 5
                                                    local.set 6
                                                    block  ;; label = @25
                                                      loop  ;; label = @26
                                                        block  ;; label = @27
                                                          local.get 5
                                                          i32.load offset=16
                                                          local.tee 0
                                                          br_if 0 (;@27;)
                                                          local.get 5
                                                          i32.load offset=20
                                                          local.tee 0
                                                          i32.eqz
                                                          br_if 2 (;@25;)
                                                        end
                                                        block  ;; label = @27
                                                          local.get 0
                                                          i32.load offset=4
                                                          i32.const -8
                                                          i32.and
                                                          local.tee 5
                                                          local.get 2
                                                          i32.lt_u
                                                          br_if 0 (;@27;)
                                                          local.get 5
                                                          local.get 2
                                                          i32.sub
                                                          local.tee 5
                                                          local.get 1
                                                          local.get 5
                                                          local.get 1
                                                          i32.lt_u
                                                          local.tee 5
                                                          select
                                                          local.set 1
                                                          local.get 0
                                                          local.get 6
                                                          local.get 5
                                                          select
                                                          local.set 6
                                                          local.get 0
                                                          local.set 5
                                                          br 1 (;@26;)
                                                        end
                                                      end
                                                      i32.const 1051320
                                                      call $_RNvNtNtCs3BljEZLCQ45_4core9panicking11panic_const24panic_const_sub_overflow
                                                      unreachable
                                                    end
                                                    local.get 6
                                                    call $_RNvMs0_NtCsb0q38IY8roO_8dlmalloc8dlmallocINtB5_8DlmallocNtNtB7_3sys6SystemE18unlink_large_chunkCsimTbuHakp8s_3std
                                                    block  ;; label = @25
                                                      block  ;; label = @26
                                                        local.get 1
                                                        i32.const 16
                                                        i32.lt_u
                                                        br_if 0 (;@26;)
                                                        local.get 6
                                                        local.get 2
                                                        i32.const 3
                                                        i32.or
                                                        i32.store offset=4
                                                        local.get 6
                                                        local.get 2
                                                        i32.add
                                                        local.tee 0
                                                        local.get 1
                                                        i32.const 1
                                                        i32.or
                                                        i32.store offset=4
                                                        local.get 0
                                                        local.get 1
                                                        i32.add
                                                        local.get 1
                                                        i32.store
                                                        local.get 0
                                                        local.get 1
                                                        call $_RNvMs0_NtCsb0q38IY8roO_8dlmalloc8dlmallocINtB5_8DlmallocNtNtB7_3sys6SystemE10replace_dvCsimTbuHakp8s_3std
                                                        br 1 (;@25;)
                                                      end
                                                      local.get 6
                                                      local.get 1
                                                      local.get 2
                                                      i32.add
                                                      local.tee 0
                                                      i32.const 3
                                                      i32.or
                                                      i32.store offset=4
                                                      local.get 6
                                                      local.get 0
                                                      i32.add
                                                      local.tee 0
                                                      local.get 0
                                                      i32.load offset=4
                                                      i32.const 1
                                                      i32.or
                                                      i32.store offset=4
                                                    end
                                                    local.get 6
                                                    i32.const 8
                                                    i32.add
                                                    local.tee 1
                                                    i32.eqz
                                                    br_if 4 (;@20;)
                                                    br 23 (;@1;)
                                                  end
                                                  i32.const 2
                                                  local.get 1
                                                  i32.shl
                                                  local.tee 5
                                                  i32.const 0
                                                  local.get 5
                                                  i32.sub
                                                  i32.or
                                                  local.get 0
                                                  local.get 1
                                                  i32.shl
                                                  i32.and
                                                  call $_RNvNtCsb0q38IY8roO_8dlmalloc8dlmalloc9least_bit
                                                  i32.ctz
                                                  local.tee 1
                                                  call $_RNvMs0_NtCsb0q38IY8roO_8dlmalloc8dlmallocINtB5_8DlmallocNtNtB7_3sys6SystemE11smallbin_atCsimTbuHakp8s_3std
                                                  local.tee 0
                                                  local.get 0
                                                  i32.load offset=8
                                                  local.tee 0
                                                  i32.const 8
                                                  i32.add
                                                  local.tee 6
                                                  i32.load
                                                  local.get 1
                                                  call $_RNvMs0_NtCsb0q38IY8roO_8dlmalloc8dlmallocINtB5_8DlmallocNtNtB7_3sys6SystemE24unlink_first_small_chunkCsimTbuHakp8s_3std
                                                  block  ;; label = @24
                                                    local.get 1
                                                    i32.const 3
                                                    i32.shl
                                                    local.tee 1
                                                    local.get 2
                                                    i32.lt_u
                                                    br_if 0 (;@24;)
                                                    local.get 0
                                                    local.get 2
                                                    i32.const 3
                                                    i32.or
                                                    i32.store offset=4
                                                    local.get 0
                                                    local.get 2
                                                    i32.add
                                                    local.tee 7
                                                    local.get 1
                                                    local.get 2
                                                    i32.sub
                                                    local.tee 5
                                                    i32.const 1
                                                    i32.or
                                                    i32.store offset=4
                                                    local.get 0
                                                    local.get 1
                                                    i32.add
                                                    local.get 5
                                                    i32.store
                                                    local.get 7
                                                    local.get 5
                                                    call $_RNvMs0_NtCsb0q38IY8roO_8dlmalloc8dlmallocINtB5_8DlmallocNtNtB7_3sys6SystemE10replace_dvCsimTbuHakp8s_3std
                                                    local.get 6
                                                    return
                                                  end
                                                  i32.const 1051736
                                                  call $_RNvNtNtCs3BljEZLCQ45_4core9panicking11panic_const24panic_const_sub_overflow
                                                  unreachable
                                                end
                                                i32.const 1051304
                                                call $_RNvNtNtCs3BljEZLCQ45_4core9panicking11panic_const24panic_const_sub_overflow
                                                unreachable
                                              end
                                              local.get 4
                                              local.set 0
                                            end
                                            block  ;; label = @21
                                              loop  ;; label = @22
                                                local.get 6
                                                local.tee 5
                                                i32.eqz
                                                br_if 1 (;@21;)
                                                local.get 1
                                                local.get 5
                                                i32.load offset=4
                                                i32.const -8
                                                i32.and
                                                local.tee 6
                                                local.get 2
                                                i32.sub
                                                local.tee 7
                                                local.get 1
                                                local.get 7
                                                local.get 1
                                                i32.lt_u
                                                local.tee 7
                                                select
                                                local.get 6
                                                local.get 2
                                                i32.lt_u
                                                local.tee 6
                                                select
                                                local.set 1
                                                local.get 0
                                                local.get 5
                                                local.get 0
                                                local.get 7
                                                select
                                                local.get 6
                                                select
                                                local.set 0
                                                local.get 5
                                                i32.load offset=16
                                                local.tee 6
                                                br_if 0 (;@22;)
                                                local.get 5
                                                i32.load offset=20
                                                local.set 6
                                                br 0 (;@22;)
                                              end
                                            end
                                            local.get 0
                                            i32.eqz
                                            br_if 0 (;@20;)
                                            block  ;; label = @21
                                              i32.const 0
                                              i32.load offset=1052852
                                              local.tee 5
                                              local.get 2
                                              i32.lt_u
                                              br_if 0 (;@21;)
                                              local.get 1
                                              local.get 5
                                              local.get 2
                                              i32.sub
                                              i32.ge_u
                                              br_if 1 (;@20;)
                                            end
                                            local.get 0
                                            call $_RNvMs0_NtCsb0q38IY8roO_8dlmalloc8dlmallocINtB5_8DlmallocNtNtB7_3sys6SystemE18unlink_large_chunkCsimTbuHakp8s_3std
                                            block  ;; label = @21
                                              block  ;; label = @22
                                                local.get 1
                                                i32.const 16
                                                i32.lt_u
                                                br_if 0 (;@22;)
                                                local.get 0
                                                local.get 2
                                                i32.const 3
                                                i32.or
                                                i32.store offset=4
                                                local.get 0
                                                local.get 2
                                                i32.add
                                                local.tee 5
                                                local.get 1
                                                i32.const 1
                                                i32.or
                                                i32.store offset=4
                                                local.get 5
                                                local.get 1
                                                i32.add
                                                local.get 1
                                                i32.store
                                                local.get 5
                                                local.get 1
                                                call $_RNvMs0_NtCsb0q38IY8roO_8dlmalloc8dlmallocINtB5_8DlmallocNtNtB7_3sys6SystemE12insert_chunkCsimTbuHakp8s_3std
                                                br 1 (;@21;)
                                              end
                                              local.get 1
                                              local.get 2
                                              i32.add
                                              local.tee 5
                                              local.get 1
                                              i32.lt_u
                                              br_if 2 (;@19;)
                                              local.get 0
                                              local.get 5
                                              i32.const 3
                                              i32.or
                                              i32.store offset=4
                                              local.get 0
                                              local.get 5
                                              i32.add
                                              local.tee 1
                                              local.get 1
                                              i32.load offset=4
                                              i32.const 1
                                              i32.or
                                              i32.store offset=4
                                            end
                                            local.get 0
                                            i32.const 8
                                            i32.add
                                            local.tee 1
                                            br_if 19 (;@1;)
                                          end
                                          block  ;; label = @20
                                            i32.const 0
                                            i32.load offset=1052852
                                            local.tee 0
                                            local.get 2
                                            i32.ge_u
                                            br_if 0 (;@20;)
                                            block  ;; label = @21
                                              i32.const 0
                                              i32.load offset=1052856
                                              local.tee 0
                                              local.get 2
                                              i32.le_u
                                              br_if 0 (;@21;)
                                              i32.const 0
                                              local.get 0
                                              local.get 2
                                              i32.sub
                                              local.tee 1
                                              i32.store offset=1052856
                                              i32.const 0
                                              i32.const 0
                                              i32.load offset=1052864
                                              local.tee 0
                                              local.get 2
                                              i32.add
                                              local.tee 5
                                              i32.store offset=1052864
                                              local.get 5
                                              local.get 1
                                              i32.const 1
                                              i32.or
                                              i32.store offset=4
                                              local.get 0
                                              local.get 2
                                              i32.const 3
                                              i32.or
                                              i32.store offset=4
                                              local.get 0
                                              i32.const 8
                                              i32.add
                                              return
                                            end
                                            local.get 2
                                            i32.const -41
                                            i32.gt_u
                                            br_if 2 (;@18;)
                                            local.get 2
                                            i32.const -49
                                            i32.gt_u
                                            br_if 3 (;@17;)
                                            local.get 2
                                            i32.const 48
                                            i32.add
                                            i32.const 65536
                                            call $_RNvNtCsb0q38IY8roO_8dlmalloc8dlmalloc8align_up
                                            local.tee 0
                                            i32.eqz
                                            br_if 6 (;@14;)
                                            i32.const 0
                                            i32.load8_u offset=1052360
                                            local.set 1
                                            i32.const 0
                                            i32.const 1
                                            i32.store8 offset=1052360
                                            i32.const 1052912
                                            local.set 5
                                            i32.const 1114112
                                            i32.const 1052912
                                            i32.le_u
                                            br_if 6 (;@14;)
                                            local.get 0
                                            i32.const 1114112
                                            i32.const 1052912
                                            i32.sub
                                            i32.gt_u
                                            br_if 6 (;@14;)
                                            local.get 1
                                            i32.const 255
                                            i32.and
                                            br_if 6 (;@14;)
                                            i32.const 1114112
                                            i32.const 1052912
                                            i32.sub
                                            local.set 7
                                            br 7 (;@13;)
                                          end
                                          i32.const 0
                                          i32.load offset=1052860
                                          local.set 1
                                          local.get 0
                                          local.get 2
                                          i32.sub
                                          local.tee 5
                                          i32.const 16
                                          i32.lt_u
                                          br_if 3 (;@16;)
                                          i32.const 0
                                          local.get 5
                                          i32.store offset=1052852
                                          i32.const 0
                                          local.get 1
                                          local.get 2
                                          i32.add
                                          local.tee 6
                                          i32.store offset=1052860
                                          local.get 6
                                          local.get 5
                                          i32.const 1
                                          i32.or
                                          i32.store offset=4
                                          local.get 1
                                          local.get 0
                                          i32.add
                                          local.get 5
                                          i32.store
                                          local.get 1
                                          local.get 2
                                          i32.const 3
                                          i32.or
                                          i32.store offset=4
                                          br 4 (;@15;)
                                        end
                                        i32.const 1051288
                                        call $_RNvNtNtCs3BljEZLCQ45_4core9panicking11panic_const24panic_const_add_overflow
                                        unreachable
                                      end
                                      i32.const 1051944
                                      call $_RNvNtNtCs3BljEZLCQ45_4core9panicking11panic_const24panic_const_add_overflow
                                      unreachable
                                    end
                                    i32.const 1051944
                                    call $_RNvNtNtCs3BljEZLCQ45_4core9panicking11panic_const24panic_const_add_overflow
                                    unreachable
                                  end
                                  i32.const 0
                                  i32.const 0
                                  i32.store offset=1052860
                                  i32.const 0
                                  i32.const 0
                                  i32.store offset=1052852
                                  local.get 1
                                  local.get 0
                                  i32.const 3
                                  i32.or
                                  i32.store offset=4
                                  local.get 1
                                  local.get 0
                                  i32.add
                                  local.tee 0
                                  local.get 0
                                  i32.load offset=4
                                  i32.const 1
                                  i32.or
                                  i32.store offset=4
                                end
                                local.get 1
                                i32.const 8
                                i32.add
                                return
                              end
                              i32.const 0
                              local.set 1
                              local.get 0
                              i32.const 16
                              i32.shr_u
                              local.get 0
                              i32.const 65535
                              i32.and
                              i32.const 0
                              i32.ne
                              i32.add
                              local.tee 6
                              memory.grow
                              local.tee 0
                              i32.const -1
                              i32.eq
                              br_if 12 (;@1;)
                              local.get 0
                              i32.const 65535
                              i32.gt_u
                              br_if 1 (;@12;)
                              local.get 6
                              i32.const 65535
                              i32.gt_u
                              br_if 2 (;@11;)
                              i32.const 0
                              local.set 1
                              block  ;; label = @14
                                block  ;; label = @15
                                  local.get 0
                                  i32.const 16
                                  i32.shl
                                  local.tee 5
                                  i32.const 0
                                  local.get 6
                                  i32.const 16
                                  i32.shl
                                  local.tee 7
                                  i32.sub
                                  i32.ne
                                  br_if 0 (;@15;)
                                  local.get 7
                                  i32.eqz
                                  br_if 1 (;@14;)
                                  local.get 7
                                  i32.const -16
                                  i32.add
                                  local.set 7
                                end
                                local.get 5
                                br_if 1 (;@13;)
                                br 13 (;@1;)
                              end
                              i32.const 1050724
                              call $_RNvNtNtCs3BljEZLCQ45_4core9panicking11panic_const24panic_const_sub_overflow
                              unreachable
                            end
                            block  ;; label = @13
                              block  ;; label = @14
                                block  ;; label = @15
                                  block  ;; label = @16
                                    block  ;; label = @17
                                      block  ;; label = @18
                                        block  ;; label = @19
                                          block  ;; label = @20
                                            block  ;; label = @21
                                              i32.const 0
                                              i32.load offset=1052868
                                              local.tee 1
                                              local.get 7
                                              i32.add
                                              local.tee 0
                                              local.get 1
                                              i32.lt_u
                                              br_if 0 (;@21;)
                                              i32.const 0
                                              local.get 0
                                              i32.store offset=1052868
                                              i32.const 0
                                              local.get 0
                                              i32.const 0
                                              i32.load offset=1052872
                                              local.tee 1
                                              local.get 0
                                              local.get 1
                                              i32.gt_u
                                              select
                                              i32.store offset=1052872
                                              i32.const 0
                                              i32.load offset=1052864
                                              local.tee 4
                                              i32.eqz
                                              br_if 1 (;@20;)
                                              i32.const 1052564
                                              local.set 0
                                              loop  ;; label = @22
                                                local.get 0
                                                i32.eqz
                                                br_if 4 (;@18;)
                                                local.get 5
                                                local.get 0
                                                i32.load
                                                local.tee 6
                                                local.get 0
                                                i32.const 4
                                                i32.add
                                                i32.load
                                                local.tee 1
                                                i32.add
                                                i32.eq
                                                br_if 3 (;@19;)
                                                local.get 0
                                                i32.load offset=8
                                                local.set 0
                                                br 0 (;@22;)
                                              end
                                            end
                                            i32.const 1051960
                                            call $_RNvNtNtCs3BljEZLCQ45_4core9panicking11panic_const24panic_const_add_overflow
                                            unreachable
                                          end
                                          i32.const 0
                                          i32.load offset=1052880
                                          local.tee 0
                                          i32.eqz
                                          br_if 6 (;@13;)
                                          local.get 5
                                          local.get 0
                                          i32.lt_u
                                          br_if 6 (;@13;)
                                          br 16 (;@3;)
                                        end
                                        local.get 0
                                        i32.load offset=12
                                        br_if 0 (;@18;)
                                        local.get 6
                                        local.get 4
                                        i32.gt_u
                                        br_if 0 (;@18;)
                                        local.get 4
                                        local.get 5
                                        i32.lt_u
                                        br_if 1 (;@17;)
                                      end
                                      i32.const 0
                                      i32.const 0
                                      i32.load offset=1052880
                                      local.tee 0
                                      local.get 5
                                      local.get 0
                                      local.get 5
                                      i32.lt_u
                                      select
                                      i32.store offset=1052880
                                      local.get 5
                                      local.get 7
                                      i32.add
                                      local.set 1
                                      i32.const 1052564
                                      local.set 0
                                      loop  ;; label = @18
                                        local.get 0
                                        i32.eqz
                                        br_if 3 (;@15;)
                                        local.get 0
                                        i32.load
                                        local.tee 6
                                        local.get 1
                                        i32.eq
                                        br_if 2 (;@16;)
                                        local.get 0
                                        i32.load offset=8
                                        local.set 0
                                        br 0 (;@18;)
                                      end
                                    end
                                    local.get 1
                                    local.get 7
                                    i32.add
                                    local.tee 5
                                    local.get 1
                                    i32.lt_u
                                    br_if 6 (;@10;)
                                    local.get 0
                                    i32.const 4
                                    i32.add
                                    local.get 5
                                    i32.store
                                    block  ;; label = @17
                                      i32.const 0
                                      i32.load offset=1052856
                                      local.tee 0
                                      local.get 7
                                      i32.add
                                      local.tee 1
                                      local.get 0
                                      i32.lt_u
                                      br_if 0 (;@17;)
                                      i32.const 0
                                      i32.load offset=1052864
                                      local.get 1
                                      call $_RNvMs0_NtCsb0q38IY8roO_8dlmalloc8dlmallocINtB5_8DlmallocNtNtB7_3sys6SystemE8init_topCsimTbuHakp8s_3std
                                      br 15 (;@2;)
                                    end
                                    i32.const 1051992
                                    call $_RNvNtNtCs3BljEZLCQ45_4core9panicking11panic_const24panic_const_add_overflow
                                    unreachable
                                  end
                                  local.get 0
                                  i32.load offset=12
                                  br_if 0 (;@15;)
                                  local.get 0
                                  local.get 5
                                  i32.store
                                  local.get 0
                                  i32.load offset=4
                                  local.tee 1
                                  local.get 7
                                  i32.add
                                  local.tee 7
                                  local.get 1
                                  i32.ge_u
                                  br_if 1 (;@14;)
                                  i32.const 1052008
                                  call $_RNvNtNtCs3BljEZLCQ45_4core9panicking11panic_const24panic_const_add_overflow
                                  unreachable
                                end
                                local.get 4
                                call $_RNvMs0_NtCsb0q38IY8roO_8dlmalloc8dlmallocINtB5_8DlmallocNtNtB7_3sys6SystemE15segment_holdingCsimTbuHakp8s_3std
                                local.set 0
                                local.get 7
                                i32.const 40
                                i32.lt_u
                                br_if 5 (;@9;)
                                local.get 0
                                i32.const 4
                                i32.add
                                i32.load
                                local.set 1
                                local.get 0
                                i32.load
                                local.set 0
                                local.get 5
                                local.get 7
                                i32.const -40
                                i32.add
                                call $_RNvMs0_NtCsb0q38IY8roO_8dlmalloc8dlmallocINtB5_8DlmallocNtNtB7_3sys6SystemE8init_topCsimTbuHakp8s_3std
                                local.get 4
                                local.get 0
                                local.get 1
                                i32.add
                                local.tee 6
                                i32.const -32
                                i32.add
                                i32.const -8
                                i32.and
                                i32.const -8
                                i32.add
                                local.tee 0
                                local.get 0
                                local.get 4
                                i32.const 16
                                i32.add
                                i32.lt_u
                                select
                                local.tee 3
                                i32.const 27
                                i32.store offset=4
                                i32.const 0
                                local.set 0
                                i32.const 0
                                i64.load offset=1052564 align=4
                                local.set 8
                                local.get 3
                                i32.const 16
                                i32.add
                                i32.const 0
                                i64.load offset=1052572 align=4
                                i64.store align=4
                                local.get 3
                                i32.const 8
                                i32.add
                                local.tee 1
                                local.get 8
                                i64.store align=4
                                i32.const 0
                                local.get 7
                                i32.store offset=1052568
                                i32.const 0
                                local.get 5
                                i32.store offset=1052564
                                i32.const 0
                                local.get 1
                                i32.store offset=1052572
                                i32.const 0
                                i32.const 0
                                i32.store offset=1052576
                                local.get 3
                                i32.const 28
                                i32.add
                                local.set 1
                                loop  ;; label = @15
                                  local.get 1
                                  i32.const 7
                                  i32.store
                                  local.get 0
                                  i32.const 1
                                  i32.add
                                  local.tee 5
                                  local.get 0
                                  i32.lt_s
                                  br_if 7 (;@8;)
                                  local.get 5
                                  local.set 0
                                  local.get 1
                                  i32.const 4
                                  i32.add
                                  local.tee 1
                                  local.get 6
                                  i32.lt_u
                                  br_if 0 (;@15;)
                                end
                                local.get 3
                                local.get 4
                                i32.eq
                                br_if 12 (;@2;)
                                block  ;; label = @15
                                  local.get 3
                                  local.get 4
                                  i32.lt_u
                                  br_if 0 (;@15;)
                                  local.get 3
                                  local.get 3
                                  i32.load offset=4
                                  i32.const -2
                                  i32.and
                                  i32.store offset=4
                                  local.get 4
                                  local.get 3
                                  local.get 4
                                  i32.sub
                                  local.tee 0
                                  i32.const 1
                                  i32.or
                                  i32.store offset=4
                                  local.get 3
                                  local.get 0
                                  i32.store
                                  local.get 4
                                  local.get 0
                                  call $_RNvMs0_NtCsb0q38IY8roO_8dlmalloc8dlmallocINtB5_8DlmallocNtNtB7_3sys6SystemE12insert_chunkCsimTbuHakp8s_3std
                                  br 13 (;@2;)
                                end
                                i32.const 1051016
                                call $_RNvNtNtCs3BljEZLCQ45_4core9panicking11panic_const24panic_const_sub_overflow
                                unreachable
                              end
                              local.get 0
                              local.get 7
                              i32.store offset=4
                              local.get 6
                              i32.const 15
                              i32.add
                              i32.const -8
                              i32.and
                              i32.const -8
                              i32.add
                              local.tee 1
                              local.get 5
                              i32.const 15
                              i32.add
                              i32.const -8
                              i32.and
                              i32.const -8
                              i32.add
                              local.tee 0
                              i32.lt_u
                              br_if 6 (;@7;)
                              local.get 1
                              local.get 0
                              i32.sub
                              local.tee 6
                              local.get 2
                              i32.lt_u
                              br_if 7 (;@6;)
                              local.get 0
                              local.get 2
                              i32.add
                              local.set 5
                              local.get 6
                              local.get 2
                              i32.sub
                              local.set 6
                              local.get 0
                              local.get 2
                              i32.const 3
                              i32.or
                              i32.store offset=4
                              block  ;; label = @14
                                block  ;; label = @15
                                  local.get 1
                                  i32.const 0
                                  i32.load offset=1052864
                                  i32.eq
                                  br_if 0 (;@15;)
                                  block  ;; label = @16
                                    local.get 1
                                    i32.const 0
                                    i32.load offset=1052860
                                    i32.eq
                                    br_if 0 (;@16;)
                                    block  ;; label = @17
                                      local.get 1
                                      i32.load offset=4
                                      local.tee 2
                                      i32.const 3
                                      i32.and
                                      i32.const 1
                                      i32.ne
                                      br_if 0 (;@17;)
                                      local.get 1
                                      local.get 2
                                      i32.const -8
                                      i32.and
                                      local.tee 2
                                      call $_RNvMs0_NtCsb0q38IY8roO_8dlmalloc8dlmallocINtB5_8DlmallocNtNtB7_3sys6SystemE12unlink_chunkCsimTbuHakp8s_3std
                                      local.get 2
                                      local.get 6
                                      i32.add
                                      local.tee 6
                                      local.get 2
                                      i32.lt_u
                                      br_if 12 (;@5;)
                                      local.get 1
                                      local.get 2
                                      i32.add
                                      local.tee 1
                                      i32.load offset=4
                                      local.set 2
                                    end
                                    local.get 1
                                    local.get 2
                                    i32.const -2
                                    i32.and
                                    i32.store offset=4
                                    local.get 5
                                    local.get 6
                                    i32.const 1
                                    i32.or
                                    i32.store offset=4
                                    local.get 5
                                    local.get 6
                                    i32.add
                                    local.get 6
                                    i32.store
                                    local.get 5
                                    local.get 6
                                    call $_RNvMs0_NtCsb0q38IY8roO_8dlmalloc8dlmallocINtB5_8DlmallocNtNtB7_3sys6SystemE12insert_chunkCsimTbuHakp8s_3std
                                    br 2 (;@14;)
                                  end
                                  block  ;; label = @16
                                    i32.const 0
                                    i32.load offset=1052852
                                    local.tee 2
                                    local.get 6
                                    i32.add
                                    local.tee 1
                                    local.get 2
                                    i32.lt_u
                                    br_if 0 (;@16;)
                                    i32.const 0
                                    local.get 5
                                    i32.store offset=1052860
                                    i32.const 0
                                    local.get 1
                                    i32.store offset=1052852
                                    local.get 5
                                    local.get 1
                                    i32.const 1
                                    i32.or
                                    i32.store offset=4
                                    local.get 5
                                    local.get 1
                                    i32.add
                                    local.get 1
                                    i32.store
                                    br 2 (;@14;)
                                  end
                                  i32.const 1051240
                                  call $_RNvNtNtCs3BljEZLCQ45_4core9panicking11panic_const24panic_const_add_overflow
                                  unreachable
                                end
                                i32.const 0
                                i32.load offset=1052856
                                local.tee 2
                                local.get 6
                                i32.add
                                local.tee 1
                                local.get 2
                                i32.lt_u
                                br_if 10 (;@4;)
                                i32.const 0
                                local.get 5
                                i32.store offset=1052864
                                i32.const 0
                                local.get 1
                                i32.store offset=1052856
                                local.get 5
                                local.get 1
                                i32.const 1
                                i32.or
                                i32.store offset=4
                              end
                              local.get 0
                              i32.const 8
                              i32.add
                              return
                            end
                            i32.const 0
                            local.get 5
                            i32.store offset=1052880
                            br 9 (;@3;)
                          end
                          i32.const 1050692
                          call $_RNvNtNtCs3BljEZLCQ45_4core9panicking11panic_const24panic_const_mul_overflow
                          unreachable
                        end
                        i32.const 1050708
                        call $_RNvNtNtCs3BljEZLCQ45_4core9panicking11panic_const24panic_const_mul_overflow
                        unreachable
                      end
                      i32.const 1051976
                      call $_RNvNtNtCs3BljEZLCQ45_4core9panicking11panic_const24panic_const_add_overflow
                      unreachable
                    end
                    i32.const 1050984
                    call $_RNvNtNtCs3BljEZLCQ45_4core9panicking11panic_const24panic_const_sub_overflow
                    unreachable
                  end
                  i32.const 1051000
                  call $_RNvNtNtCs3BljEZLCQ45_4core9panicking11panic_const24panic_const_add_overflow
                  unreachable
                end
                i32.const 1051192
                call $_RNvNtNtCs3BljEZLCQ45_4core9panicking11panic_const24panic_const_sub_overflow
                unreachable
              end
              i32.const 1051208
              call $_RNvNtNtCs3BljEZLCQ45_4core9panicking11panic_const24panic_const_sub_overflow
              unreachable
            end
            i32.const 1051224
            call $_RNvNtNtCs3BljEZLCQ45_4core9panicking11panic_const24panic_const_add_overflow
            unreachable
          end
          i32.const 1051256
          call $_RNvNtNtCs3BljEZLCQ45_4core9panicking11panic_const24panic_const_add_overflow
          unreachable
        end
        i32.const 0
        local.set 0
        i32.const 0
        i32.const 4095
        i32.store offset=1052884
        i32.const 0
        local.get 7
        i32.store offset=1052568
        i32.const 0
        local.get 5
        i32.store offset=1052564
        i32.const 0
        i32.const 0
        i32.store offset=1052576
        block  ;; label = @3
          loop  ;; label = @4
            local.get 0
            i32.const 32
            i32.eq
            br_if 1 (;@3;)
            local.get 0
            call $_RNvMs0_NtCsb0q38IY8roO_8dlmalloc8dlmallocINtB5_8DlmallocNtNtB7_3sys6SystemE11smallbin_atCsimTbuHakp8s_3std
            local.tee 1
            local.get 1
            i32.store offset=8
            local.get 1
            local.get 1
            i32.store offset=12
            local.get 0
            i32.const 1
            i32.add
            local.set 0
            br 0 (;@4;)
          end
        end
        block  ;; label = @3
          local.get 7
          i32.const 40
          i32.lt_u
          br_if 0 (;@3;)
          local.get 5
          local.get 7
          i32.const -40
          i32.add
          call $_RNvMs0_NtCsb0q38IY8roO_8dlmalloc8dlmallocINtB5_8DlmallocNtNtB7_3sys6SystemE8init_topCsimTbuHakp8s_3std
          br 1 (;@2;)
        end
        i32.const 1052024
        call $_RNvNtNtCs3BljEZLCQ45_4core9panicking11panic_const24panic_const_sub_overflow
        unreachable
      end
      i32.const 0
      local.set 1
      i32.const 0
      i32.load offset=1052856
      local.tee 0
      local.get 2
      i32.le_u
      br_if 0 (;@1;)
      i32.const 0
      local.get 0
      local.get 2
      i32.sub
      local.tee 1
      i32.store offset=1052856
      i32.const 0
      i32.const 0
      i32.load offset=1052864
      local.tee 0
      local.get 2
      i32.add
      local.tee 5
      i32.store offset=1052864
      local.get 5
      local.get 1
      i32.const 1
      i32.or
      i32.store offset=4
      local.get 0
      local.get 2
      i32.const 3
      i32.or
      i32.store offset=4
      local.get 0
      i32.const 8
      i32.add
      return
    end
    local.get 1)
  (func $_RNvMs0_NtCsb0q38IY8roO_8dlmalloc8dlmallocINtB5_8DlmallocNtNtB7_3sys6SystemE4freeCsimTbuHakp8s_3std (type 4) (param i32)
    (local i32 i32 i32 i32)
    local.get 0
    i32.const -8
    i32.add
    local.tee 1
    local.get 0
    i32.const -4
    i32.add
    i32.load
    local.tee 2
    i32.const -8
    i32.and
    local.tee 0
    i32.add
    local.set 3
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      block  ;; label = @10
                        block  ;; label = @11
                          block  ;; label = @12
                            block  ;; label = @13
                              block  ;; label = @14
                                block  ;; label = @15
                                  local.get 2
                                  i32.const 1
                                  i32.and
                                  br_if 0 (;@15;)
                                  local.get 1
                                  i32.load
                                  local.set 4
                                  local.get 2
                                  i32.const 2
                                  i32.and
                                  i32.eqz
                                  br_if 1 (;@14;)
                                  local.get 4
                                  local.get 0
                                  i32.add
                                  local.tee 0
                                  local.get 4
                                  i32.lt_u
                                  br_if 9 (;@6;)
                                  block  ;; label = @16
                                    local.get 1
                                    local.get 4
                                    i32.sub
                                    local.tee 1
                                    i32.const 0
                                    i32.load offset=1052860
                                    i32.ne
                                    br_if 0 (;@16;)
                                    local.get 3
                                    i32.load offset=4
                                    i32.const 3
                                    i32.and
                                    i32.const 3
                                    i32.ne
                                    br_if 1 (;@15;)
                                    i32.const 0
                                    local.get 0
                                    i32.store offset=1052852
                                    local.get 3
                                    local.get 3
                                    i32.load offset=4
                                    i32.const -2
                                    i32.and
                                    i32.store offset=4
                                    local.get 1
                                    local.get 0
                                    i32.const 1
                                    i32.or
                                    i32.store offset=4
                                    local.get 3
                                    local.get 0
                                    i32.store
                                    return
                                  end
                                  local.get 1
                                  local.get 4
                                  call $_RNvMs0_NtCsb0q38IY8roO_8dlmalloc8dlmallocINtB5_8DlmallocNtNtB7_3sys6SystemE12unlink_chunkCsimTbuHakp8s_3std
                                end
                                local.get 3
                                i32.load offset=4
                                local.tee 2
                                i32.const 2
                                i32.and
                                br_if 2 (;@12;)
                                local.get 3
                                i32.const 0
                                i32.load offset=1052864
                                i32.eq
                                br_if 5 (;@9;)
                                local.get 3
                                i32.const 0
                                i32.load offset=1052860
                                i32.eq
                                br_if 4 (;@10;)
                                local.get 2
                                i32.const -8
                                i32.and
                                local.tee 2
                                local.get 0
                                i32.add
                                local.tee 0
                                local.get 2
                                i32.lt_u
                                br_if 1 (;@13;)
                                local.get 3
                                local.get 2
                                call $_RNvMs0_NtCsb0q38IY8roO_8dlmalloc8dlmallocINtB5_8DlmallocNtNtB7_3sys6SystemE12unlink_chunkCsimTbuHakp8s_3std
                                local.get 1
                                local.get 0
                                i32.const 1
                                i32.or
                                i32.store offset=4
                                local.get 1
                                local.get 0
                                i32.add
                                local.get 0
                                i32.store
                                local.get 1
                                i32.const 0
                                i32.load offset=1052860
                                i32.ne
                                br_if 3 (;@11;)
                                i32.const 0
                                local.get 0
                                i32.store offset=1052852
                                return
                              end
                              local.get 4
                              i32.const -17
                              i32.gt_u
                              br_if 8 (;@5;)
                              i32.const -17
                              local.get 4
                              i32.sub
                              local.get 0
                              i32.ge_u
                              br_if 12 (;@1;)
                              i32.const 1051640
                              call $_RNvNtNtCs3BljEZLCQ45_4core9panicking11panic_const24panic_const_add_overflow
                              unreachable
                            end
                            i32.const 1051656
                            call $_RNvNtNtCs3BljEZLCQ45_4core9panicking11panic_const24panic_const_add_overflow
                            unreachable
                          end
                          local.get 3
                          local.get 2
                          i32.const -2
                          i32.and
                          i32.store offset=4
                          local.get 1
                          local.get 0
                          i32.const 1
                          i32.or
                          i32.store offset=4
                          local.get 1
                          local.get 0
                          i32.add
                          local.get 0
                          i32.store
                        end
                        local.get 0
                        i32.const 256
                        i32.lt_u
                        br_if 2 (;@8;)
                        local.get 1
                        local.get 0
                        call $_RNvMs0_NtCsb0q38IY8roO_8dlmalloc8dlmallocINtB5_8DlmallocNtNtB7_3sys6SystemE18insert_large_chunkCsimTbuHakp8s_3std
                        i32.const 0
                        i32.load offset=1052884
                        local.tee 0
                        i32.eqz
                        br_if 3 (;@7;)
                        i32.const 0
                        local.get 0
                        i32.const -1
                        i32.add
                        local.tee 0
                        i32.store offset=1052884
                        local.get 0
                        br_if 9 (;@1;)
                        call $_RNvMs0_NtCsb0q38IY8roO_8dlmalloc8dlmallocINtB5_8DlmallocNtNtB7_3sys6SystemE23release_unused_segmentsCsimTbuHakp8s_3std
                        return
                      end
                      block  ;; label = @10
                        i32.const 0
                        i32.load offset=1052852
                        local.tee 3
                        local.get 0
                        i32.add
                        local.tee 0
                        local.get 3
                        i32.lt_u
                        br_if 0 (;@10;)
                        i32.const 0
                        local.get 1
                        i32.store offset=1052860
                        i32.const 0
                        local.get 0
                        i32.store offset=1052852
                        local.get 1
                        local.get 0
                        i32.const 1
                        i32.or
                        i32.store offset=4
                        local.get 1
                        local.get 0
                        i32.add
                        local.get 0
                        i32.store
                        return
                      end
                      i32.const 1051672
                      call $_RNvNtNtCs3BljEZLCQ45_4core9panicking11panic_const24panic_const_add_overflow
                      unreachable
                    end
                    i32.const 0
                    i32.load offset=1052856
                    local.tee 3
                    local.get 0
                    i32.add
                    local.tee 0
                    local.get 3
                    i32.lt_u
                    br_if 4 (;@4;)
                    i32.const 0
                    local.get 1
                    i32.store offset=1052864
                    i32.const 0
                    local.get 0
                    i32.store offset=1052856
                    local.get 1
                    local.get 0
                    i32.const 1
                    i32.or
                    i32.store offset=4
                    block  ;; label = @9
                      local.get 1
                      i32.const 0
                      i32.load offset=1052860
                      i32.ne
                      br_if 0 (;@9;)
                      i32.const 0
                      i32.const 0
                      i32.store offset=1052852
                      i32.const 0
                      i32.const 0
                      i32.store offset=1052860
                    end
                    local.get 0
                    i32.const 0
                    i32.load offset=1052876
                    i32.le_u
                    br_if 7 (;@1;)
                    i32.const 0
                    i32.load offset=1052864
                    local.tee 0
                    i32.eqz
                    br_if 7 (;@1;)
                    i32.const 0
                    i32.load offset=1052856
                    local.tee 1
                    i32.const 40
                    i32.le_u
                    br_if 6 (;@2;)
                    local.get 1
                    i32.const -65496
                    i32.ge_u
                    br_if 5 (;@3;)
                    local.get 0
                    call $_RNvMs0_NtCsb0q38IY8roO_8dlmalloc8dlmallocINtB5_8DlmallocNtNtB7_3sys6SystemE15segment_holdingCsimTbuHakp8s_3std
                    drop
                    br 6 (;@2;)
                  end
                  local.get 1
                  local.get 0
                  call $_RNvMs0_NtCsb0q38IY8roO_8dlmalloc8dlmallocINtB5_8DlmallocNtNtB7_3sys6SystemE18insert_small_chunkCsimTbuHakp8s_3std
                  br 6 (;@1;)
                end
                i32.const 1051704
                call $_RNvNtNtCs3BljEZLCQ45_4core9panicking11panic_const24panic_const_sub_overflow
                unreachable
              end
              i32.const 1051608
              call $_RNvNtNtCs3BljEZLCQ45_4core9panicking11panic_const24panic_const_add_overflow
              unreachable
            end
            i32.const 1051624
            call $_RNvNtNtCs3BljEZLCQ45_4core9panicking11panic_const24panic_const_add_overflow
            unreachable
          end
          i32.const 1051688
          call $_RNvNtNtCs3BljEZLCQ45_4core9panicking11panic_const24panic_const_add_overflow
          unreachable
        end
        i32.const 1051928
        call $_RNvNtNtCs3BljEZLCQ45_4core9panicking11panic_const24panic_const_add_overflow
        unreachable
      end
      call $_RNvMs0_NtCsb0q38IY8roO_8dlmalloc8dlmallocINtB5_8DlmallocNtNtB7_3sys6SystemE23release_unused_segmentsCsimTbuHakp8s_3std
      i32.const 0
      i32.load offset=1052856
      i32.const 0
      i32.load offset=1052876
      i32.le_u
      br_if 0 (;@1;)
      i32.const 0
      i32.const -1
      i32.store offset=1052876
      return
    end)
  (func $_RNvNtCs8gIPSMQVFM6_5alloc7raw_vec12handle_error (type 2) (param i32 i32)
    block  ;; label = @1
      local.get 0
      i32.eqz
      br_if 0 (;@1;)
      i32.const 0
      i32.const 1
      i32.store8 offset=1052905
      unreachable
    end
    call $_RNvNtCs8gIPSMQVFM6_5alloc7raw_vec17capacity_overflow
    unreachable)
  (func $_RNvNtCs8gIPSMQVFM6_5alloc7raw_vec17capacity_overflow (type 7)
    i32.const 1050297
    i32.const 35
    i32.const 1050316
    call $_RNvNtCs3BljEZLCQ45_4core9panicking9panic_fmt
    unreachable)
  (func $_RNvMs1_NtCs8gIPSMQVFM6_5alloc3vecINtB5_3VechE17extend_from_sliceB7_ (type 5) (param i32 i32 i32)
    (local i32)
    local.get 0
    local.get 2
    call $_RNvMs_NtCs8gIPSMQVFM6_5alloc3vecINtB4_3VechE7reserveB6_
    local.get 0
    i32.load offset=8
    local.set 3
    block  ;; label = @1
      local.get 2
      i32.eqz
      br_if 0 (;@1;)
      local.get 2
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      i32.load offset=4
      local.get 3
      i32.add
      local.get 1
      local.get 2
      memory.copy
    end
    local.get 0
    local.get 3
    local.get 2
    i32.add
    i32.store offset=8)
  (func $_RNvYNtNtCs8gIPSMQVFM6_5alloc6string6StringNtNtCs3BljEZLCQ45_4core3fmt5Write9write_fmtB6_ (type 1) (param i32 i32 i32) (result i32)
    local.get 0
    i32.const 1050332
    local.get 1
    local.get 2
    call $_RNvNtCs3BljEZLCQ45_4core3fmt5write)
  (func $_RNvNtCs3BljEZLCQ45_4core3fmt5write (type 9) (param i32 i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i64 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 4
    global.set $__stack_pointer
    block  ;; label = @1
      block  ;; label = @2
        local.get 3
        i32.const 1
        i32.and
        br_if 0 (;@2;)
        local.get 1
        i32.load offset=12
        local.set 5
        i32.const 0
        local.set 6
        i32.const 0
        local.set 7
        block  ;; label = @3
          loop  ;; label = @4
            local.get 2
            i32.load8_u
            local.tee 8
            i32.eqz
            br_if 3 (;@1;)
            local.get 2
            i32.const 1
            i32.add
            local.set 9
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    local.get 8
                    i32.extend8_s
                    local.tee 10
                    i32.const -1
                    i32.gt_s
                    br_if 0 (;@8;)
                    local.get 8
                    i32.const 128
                    i32.eq
                    br_if 1 (;@7;)
                    local.get 8
                    i32.const 192
                    i32.ne
                    br_if 3 (;@5;)
                    local.get 4
                    local.get 1
                    i32.store offset=4
                    local.get 4
                    local.get 0
                    i32.store
                    local.get 4
                    i64.const 1610612768
                    i64.store offset=8 align=4
                    local.get 3
                    local.get 7
                    i32.const 3
                    i32.shl
                    i32.add
                    local.tee 2
                    i32.load
                    local.get 4
                    local.get 2
                    i32.load offset=4
                    call_indirect (type 0)
                    br_if 5 (;@3;)
                    local.get 7
                    i32.const -1
                    i32.eq
                    br_if 2 (;@6;)
                    local.get 7
                    i32.const 1
                    i32.add
                    local.set 7
                    local.get 9
                    local.set 2
                    br 4 (;@4;)
                  end
                  local.get 9
                  local.get 8
                  i32.add
                  local.set 2
                  local.get 0
                  local.get 9
                  local.get 8
                  local.get 5
                  call_indirect (type 1)
                  i32.eqz
                  br_if 3 (;@4;)
                  br 4 (;@3;)
                end
                local.get 2
                i32.const 3
                i32.add
                local.tee 8
                local.get 2
                i32.load16_u offset=1 align=1
                local.tee 9
                i32.add
                local.set 2
                local.get 0
                local.get 8
                local.get 9
                local.get 5
                call_indirect (type 1)
                i32.eqz
                br_if 2 (;@4;)
                br 3 (;@3;)
              end
              i32.const 1050388
              call $_RNvNtNtCs3BljEZLCQ45_4core9panicking11panic_const24panic_const_add_overflow
              unreachable
            end
            i64.const 1610612768
            local.set 11
            block  ;; label = @5
              local.get 10
              i32.const 1
              i32.and
              i32.eqz
              br_if 0 (;@5;)
              local.get 2
              i32.const 5
              i32.add
              local.set 9
              local.get 2
              i64.load32_u offset=1 align=1
              local.set 11
            end
            i32.const 0
            local.set 8
            block  ;; label = @5
              block  ;; label = @6
                local.get 10
                i32.const 2
                i32.and
                br_if 0 (;@6;)
                i32.const 0
                local.set 12
                local.get 9
                local.set 2
                br 1 (;@5;)
              end
              local.get 9
              i32.const 2
              i32.add
              local.set 2
              local.get 9
              i32.load16_u align=1
              local.set 12
            end
            block  ;; label = @5
              block  ;; label = @6
                local.get 10
                i32.const 4
                i32.and
                br_if 0 (;@6;)
                local.get 2
                local.set 9
                br 1 (;@5;)
              end
              local.get 2
              i32.const 2
              i32.add
              local.set 9
              local.get 2
              i32.load16_u align=1
              local.set 8
            end
            block  ;; label = @5
              block  ;; label = @6
                local.get 10
                i32.const 8
                i32.and
                br_if 0 (;@6;)
                local.get 9
                local.set 2
                br 1 (;@5;)
              end
              local.get 9
              i32.const 2
              i32.add
              local.set 2
              local.get 9
              i32.load16_u align=1
              local.set 7
            end
            block  ;; label = @5
              local.get 10
              i32.const 16
              i32.and
              i32.eqz
              br_if 0 (;@5;)
              local.get 3
              local.get 12
              i32.const 65535
              i32.and
              i32.const 3
              i32.shl
              i32.add
              i32.load16_u offset=4
              local.set 12
            end
            block  ;; label = @5
              local.get 10
              i32.const 32
              i32.and
              i32.eqz
              br_if 0 (;@5;)
              local.get 3
              local.get 8
              i32.const 65535
              i32.and
              i32.const 3
              i32.shl
              i32.add
              i32.load16_u offset=4
              local.set 8
            end
            local.get 4
            local.get 1
            i32.store offset=4
            local.get 4
            local.get 0
            i32.store
            local.get 4
            local.get 8
            i64.extend_i32_u
            i64.const 48
            i64.shl
            local.get 12
            i64.extend_i32_u
            i64.const 65535
            i64.and
            i64.const 32
            i64.shl
            i64.or
            local.get 11
            i64.or
            i64.store offset=8 align=4
            local.get 3
            local.get 7
            i32.const 3
            i32.shl
            i32.add
            local.tee 8
            i32.load
            local.get 4
            local.get 8
            i32.load offset=4
            call_indirect (type 0)
            br_if 1 (;@3;)
            block  ;; label = @5
              local.get 7
              i32.const -1
              i32.eq
              br_if 0 (;@5;)
              local.get 7
              i32.const 1
              i32.add
              local.set 7
              br 1 (;@4;)
            end
          end
          i32.const 1050404
          call $_RNvNtNtCs3BljEZLCQ45_4core9panicking11panic_const24panic_const_add_overflow
          unreachable
        end
        i32.const 1
        local.set 6
        br 1 (;@1;)
      end
      local.get 0
      local.get 2
      local.get 3
      i32.const 1
      i32.shr_u
      local.get 1
      i32.load offset=12
      call_indirect (type 1)
      local.set 6
    end
    local.get 4
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 6)
  (func $_RINvNtCs3BljEZLCQ45_4core3ptr9drop_glueNtNtCs8gIPSMQVFM6_5alloc6string6StringEBF_ (type 4) (param i32)
    local.get 0
    call $_RNvMs2_NtCs8gIPSMQVFM6_5alloc7raw_vecNtB5_11RawVecInner10deallocateB7_)
  (func $_RNvXsZ_NtCs8gIPSMQVFM6_5alloc6stringNtB5_6StringNtNtCs3BljEZLCQ45_4core3fmt5Write9write_str (type 1) (param i32 i32 i32) (result i32)
    local.get 0
    local.get 1
    local.get 2
    call $_RNvMs1_NtCs8gIPSMQVFM6_5alloc3vecINtB5_3VechE17extend_from_sliceB7_
    i32.const 0)
  (func $_RNvXsZ_NtCs8gIPSMQVFM6_5alloc6stringNtB5_6StringNtNtCs3BljEZLCQ45_4core3fmt5Write10write_char (type 0) (param i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32)
    local.get 0
    i32.load offset=8
    local.set 2
    block  ;; label = @1
      block  ;; label = @2
        local.get 1
        i32.const 128
        i32.lt_u
        local.tee 3
        i32.eqz
        br_if 0 (;@2;)
        i32.const 1
        local.set 4
        br 1 (;@1;)
      end
      block  ;; label = @2
        local.get 1
        i32.const 2048
        i32.ge_u
        br_if 0 (;@2;)
        i32.const 2
        local.set 4
        br 1 (;@1;)
      end
      i32.const 3
      i32.const 4
      local.get 1
      i32.const 65536
      i32.lt_u
      select
      local.set 4
    end
    local.get 0
    local.get 4
    call $_RNvMs_NtCs8gIPSMQVFM6_5alloc3vecINtB4_3VechE7reserveB6_
    local.get 0
    i32.load offset=4
    local.get 2
    i32.add
    local.set 5
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            local.get 3
            br_if 0 (;@4;)
            local.get 1
            i32.const 2048
            i32.lt_u
            br_if 1 (;@3;)
            local.get 1
            i32.const 12
            i32.shr_u
            local.set 3
            local.get 1
            i32.const 63
            i32.and
            i32.const -128
            i32.or
            local.set 6
            local.get 1
            i32.const 6
            i32.shr_u
            i32.const 63
            i32.and
            i32.const -128
            i32.or
            local.set 7
            local.get 1
            i32.const 65536
            i32.ge_u
            br_if 2 (;@2;)
            local.get 5
            local.get 6
            i32.store8 offset=2
            local.get 5
            local.get 7
            i32.store8 offset=1
            local.get 5
            local.get 3
            i32.const 224
            i32.or
            i32.store8
            br 3 (;@1;)
          end
          local.get 5
          local.get 1
          i32.store8
          br 2 (;@1;)
        end
        local.get 5
        local.get 1
        i32.const 63
        i32.and
        i32.const 128
        i32.or
        i32.store8 offset=1
        local.get 5
        local.get 1
        i32.const 6
        i32.shr_u
        i32.const 192
        i32.or
        i32.store8
        br 1 (;@1;)
      end
      local.get 5
      local.get 6
      i32.store8 offset=3
      local.get 5
      local.get 7
      i32.store8 offset=2
      local.get 5
      local.get 3
      i32.const 63
      i32.and
      i32.const 128
      i32.or
      i32.store8 offset=1
      local.get 5
      local.get 1
      i32.const 18
      i32.shr_u
      i32.const 240
      i32.or
      i32.store8
    end
    local.get 0
    local.get 4
    local.get 2
    i32.add
    i32.store offset=8
    i32.const 0)
  (func $_RNvCsit533lh8FIi_7___rustc17rust_begin_unwind (type 4) (param i32)
    (local i32 i64)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    local.get 0
    i64.load align=4
    local.set 2
    local.get 1
    local.get 0
    i32.store offset=12
    local.get 1
    local.get 2
    i64.store offset=4 align=4
    local.get 1
    i32.const 4
    i32.add
    call $_RINvNtNtCsimTbuHakp8s_3std3sys9backtrace26___rust_end_short_backtraceNCNvNtB6_9panicking13panic_handler0zEB6_
    unreachable)
  (func $_RNvXNtNtCs3BljEZLCQ45_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator5count (type 0) (param i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    block  ;; label = @1
      block  ;; label = @2
        local.get 1
        local.get 0
        i32.sub
        local.tee 1
        i32.const 16
        i32.lt_u
        br_if 0 (;@2;)
        local.get 0
        local.get 0
        i32.const 3
        i32.add
        i32.const -4
        i32.and
        local.tee 2
        local.get 0
        i32.sub
        local.tee 3
        call $_RNvNtNtCs3BljEZLCQ45_4core3str5count23char_count_general_case
        local.get 2
        local.get 1
        local.get 3
        i32.sub
        local.tee 0
        i32.const -4
        i32.and
        i32.add
        local.get 0
        i32.const 3
        i32.and
        call $_RNvNtNtCs3BljEZLCQ45_4core3str5count23char_count_general_case
        i32.add
        local.set 4
        local.get 0
        i32.const 2
        i32.shr_u
        local.set 5
        block  ;; label = @3
          loop  ;; label = @4
            local.get 2
            local.set 6
            local.get 5
            i32.eqz
            br_if 3 (;@1;)
            local.get 5
            i32.const 192
            local.get 5
            i32.const 192
            i32.lt_u
            select
            local.tee 7
            i32.const 3
            i32.and
            local.set 8
            local.get 5
            local.get 7
            i32.sub
            local.set 5
            local.get 6
            local.get 7
            i32.const 2
            i32.shl
            local.tee 0
            i32.add
            local.set 2
            local.get 6
            local.get 0
            i32.const 1008
            i32.and
            i32.add
            local.set 9
            i32.const 0
            local.set 1
            local.get 6
            local.set 10
            block  ;; label = @5
              loop  ;; label = @6
                local.get 10
                local.get 9
                i32.eq
                br_if 1 (;@5;)
                local.get 10
                i32.const 16
                i32.add
                local.set 11
                i32.const 0
                local.set 0
                loop  ;; label = @7
                  block  ;; label = @8
                    local.get 0
                    i32.const 16
                    i32.ne
                    br_if 0 (;@8;)
                    local.get 11
                    local.set 10
                    br 2 (;@6;)
                  end
                  local.get 10
                  local.get 0
                  i32.add
                  local.set 3
                  local.get 0
                  i32.const 4
                  i32.add
                  local.set 0
                  local.get 3
                  i32.load
                  local.tee 3
                  i32.const -1
                  i32.xor
                  i32.const 7
                  i32.shr_u
                  local.get 3
                  i32.const 6
                  i32.shr_u
                  i32.or
                  i32.const 16843009
                  i32.and
                  local.tee 3
                  local.get 1
                  i32.add
                  local.tee 1
                  local.get 3
                  i32.ge_u
                  br_if 0 (;@7;)
                end
              end
              i32.const 1050468
              call $_RNvNtNtCs3BljEZLCQ45_4core9panicking11panic_const24panic_const_add_overflow
              unreachable
            end
            local.get 1
            i32.const 8
            i32.shr_u
            i32.const 16711935
            i32.and
            local.get 1
            i32.const 16711935
            i32.and
            i32.add
            i32.const 65537
            i32.mul
            i32.const 16
            i32.shr_u
            local.tee 0
            local.get 4
            i32.add
            local.tee 4
            local.get 0
            i32.lt_u
            br_if 1 (;@3;)
            local.get 8
            i32.eqz
            br_if 0 (;@4;)
          end
          local.get 8
          i32.const 2
          i32.shl
          local.set 0
          local.get 6
          local.get 7
          i32.const 252
          i32.and
          i32.const 2
          i32.shl
          i32.add
          local.set 1
          i32.const 0
          local.set 10
          block  ;; label = @4
            loop  ;; label = @5
              local.get 0
              i32.eqz
              br_if 1 (;@4;)
              local.get 1
              i32.load
              local.set 3
              local.get 0
              i32.const -4
              i32.add
              local.set 0
              local.get 1
              i32.const 4
              i32.add
              local.set 1
              local.get 3
              i32.const -1
              i32.xor
              i32.const 7
              i32.shr_u
              local.get 3
              i32.const 6
              i32.shr_u
              i32.or
              i32.const 16843009
              i32.and
              local.tee 3
              local.get 10
              i32.add
              local.tee 10
              local.get 3
              i32.ge_u
              br_if 0 (;@5;)
            end
            i32.const 1050452
            call $_RNvNtNtCs3BljEZLCQ45_4core9panicking11panic_const24panic_const_add_overflow
            unreachable
          end
          local.get 10
          i32.const 8
          i32.shr_u
          i32.const 16711935
          i32.and
          local.get 10
          i32.const 16711935
          i32.and
          i32.add
          i32.const 65537
          i32.mul
          i32.const 16
          i32.shr_u
          local.tee 0
          local.get 4
          i32.add
          local.tee 4
          local.get 0
          i32.ge_u
          br_if 2 (;@1;)
          i32.const 1050436
          call $_RNvNtNtCs3BljEZLCQ45_4core9panicking11panic_const24panic_const_add_overflow
          unreachable
        end
        i32.const 1050420
        call $_RNvNtNtCs3BljEZLCQ45_4core9panicking11panic_const24panic_const_add_overflow
        unreachable
      end
      local.get 0
      local.get 1
      call $_RNvNtNtCs3BljEZLCQ45_4core3str5count23char_count_general_case
      local.set 4
    end
    local.get 4)
  (func $_RNvNtNtCs3BljEZLCQ45_4core3str5count23char_count_general_case (type 0) (param i32 i32) (result i32)
    (local i32 i32)
    block  ;; label = @1
      local.get 1
      br_if 0 (;@1;)
      i32.const 0
      return
    end
    i32.const 0
    local.set 2
    block  ;; label = @1
      loop  ;; label = @2
        local.get 2
        local.get 0
        i32.load8_s
        i32.const -65
        i32.gt_s
        i32.add
        local.tee 3
        local.get 2
        i32.lt_u
        br_if 1 (;@1;)
        local.get 0
        i32.const 1
        i32.add
        local.set 0
        local.get 3
        local.set 2
        local.get 1
        i32.const -1
        i32.add
        local.tee 1
        br_if 0 (;@2;)
      end
      local.get 3
      return
    end
    i32.const 1050356
    call $_RNvNtNtCs3BljEZLCQ45_4core9panicking11panic_const24panic_const_add_overflow
    unreachable)
  (func $_RNvMsa_NtCs3BljEZLCQ45_4core3fmtNtB5_9Formatter7padding (type 10) (param i32 i32 i32 i32)
    (local i32 i32 i32)
    i32.const 0
    local.set 4
    i32.const 0
    local.set 5
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            local.get 1
            i32.load offset=8
            local.tee 6
            i32.const 29
            i32.shr_u
            i32.const 3
            i32.and
            br_table 3 (;@1;) 0 (;@4;) 2 (;@2;) 1 (;@3;) 3 (;@1;)
          end
          local.get 2
          local.set 5
          br 2 (;@1;)
        end
        local.get 2
        i32.const 0
        local.get 3
        i32.const 255
        i32.and
        select
        local.set 5
        br 1 (;@1;)
      end
      local.get 2
      i32.const 65534
      i32.and
      i32.const 1
      i32.shr_u
      local.set 5
    end
    local.get 6
    i32.const 2097151
    i32.and
    local.set 6
    local.get 1
    i32.load offset=4
    local.set 3
    local.get 1
    i32.load
    local.set 1
    block  ;; label = @1
      block  ;; label = @2
        loop  ;; label = @3
          local.get 4
          i32.const 65535
          i32.and
          local.get 5
          i32.const 65535
          i32.and
          i32.ge_u
          br_if 1 (;@2;)
          local.get 4
          i32.const 1
          i32.add
          local.set 4
          local.get 1
          local.get 6
          local.get 3
          i32.load offset=16
          call_indirect (type 0)
          i32.eqz
          br_if 0 (;@3;)
        end
        i32.const -1
        local.set 6
        br 1 (;@1;)
      end
      local.get 2
      local.get 5
      i32.sub
      local.set 4
    end
    local.get 0
    local.get 4
    i32.store16 offset=4
    local.get 0
    local.get 6
    i32.store)
  (func $_RNvMs9_NtCs3BljEZLCQ45_4core3fmtNtB5_11PostPadding5write (type 9) (param i32 i32 i32 i32) (result i32)
    (local i32 i32)
    i32.const 0
    local.set 4
    block  ;; label = @1
      loop  ;; label = @2
        local.get 4
        local.tee 5
        i32.const 65535
        i32.and
        local.get 1
        i32.const 65535
        i32.and
        i32.ge_u
        br_if 1 (;@1;)
        local.get 5
        i32.const 1
        i32.add
        local.set 4
        local.get 2
        local.get 0
        local.get 3
        i32.load offset=16
        call_indirect (type 0)
        i32.eqz
        br_if 0 (;@2;)
      end
    end
    local.get 5
    i32.const 65535
    i32.and
    local.get 1
    i32.const 65535
    i32.and
    i32.lt_u)
  (func $_RNvXs1i_NtCs3BljEZLCQ45_4core3fmtReNtB6_7Display3fmtB8_ (type 0) (param i32 i32) (result i32)
    local.get 1
    local.get 0
    i32.load
    local.get 0
    i32.load offset=4
    call $_RNvMsa_NtCs3BljEZLCQ45_4core3fmtNtB5_9Formatter3pad)
  (func $_RNvMsa_NtCs3BljEZLCQ45_4core3fmtNtB5_9Formatter3pad (type 1) (param i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        i32.load offset=8
        local.tee 4
        i32.const 402653184
        i32.and
        br_if 0 (;@2;)
        local.get 0
        i32.load
        local.get 1
        local.get 2
        local.get 0
        i32.load offset=4
        i32.load offset=12
        call_indirect (type 1)
        local.set 4
        br 1 (;@1;)
      end
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            local.get 4
            i32.const 268435456
            i32.and
            i32.eqz
            br_if 0 (;@4;)
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      local.get 0
                      i32.load16_u offset=14
                      local.tee 5
                      br_if 0 (;@9;)
                      i32.const 0
                      local.set 2
                      br 1 (;@8;)
                    end
                    local.get 1
                    local.get 2
                    i32.add
                    local.set 6
                    i32.const 0
                    local.set 2
                    local.get 1
                    local.set 4
                    local.get 5
                    local.set 7
                    loop  ;; label = @9
                      local.get 4
                      local.get 6
                      i32.eq
                      br_if 2 (;@7;)
                      block  ;; label = @10
                        block  ;; label = @11
                          local.get 4
                          i32.load8_s
                          local.tee 8
                          i32.const -1
                          i32.le_s
                          br_if 0 (;@11;)
                          local.get 4
                          i32.const 1
                          i32.add
                          local.set 8
                          br 1 (;@10;)
                        end
                        block  ;; label = @11
                          local.get 8
                          i32.const -32
                          i32.ge_u
                          br_if 0 (;@11;)
                          local.get 4
                          i32.const 2
                          i32.add
                          local.set 8
                          br 1 (;@10;)
                        end
                        local.get 4
                        i32.const 4
                        i32.const 3
                        local.get 8
                        i32.const -17
                        i32.gt_u
                        select
                        i32.add
                        local.set 8
                      end
                      local.get 8
                      local.get 4
                      i32.sub
                      local.tee 4
                      local.get 2
                      i32.add
                      local.tee 2
                      local.get 4
                      i32.lt_u
                      br_if 7 (;@2;)
                      local.get 8
                      local.set 4
                      local.get 7
                      i32.const -1
                      i32.add
                      local.tee 7
                      br_if 0 (;@9;)
                    end
                  end
                  i32.const 0
                  local.set 7
                  br 1 (;@6;)
                end
                local.get 7
                local.get 5
                i32.gt_u
                br_if 1 (;@5;)
              end
              local.get 5
              local.get 7
              i32.sub
              local.set 4
              br 2 (;@3;)
            end
            i32.const 1050372
            call $_RNvNtNtCs3BljEZLCQ45_4core9panicking11panic_const24panic_const_sub_overflow
            unreachable
          end
          local.get 1
          local.get 1
          local.get 2
          i32.add
          call $_RNvXNtNtCs3BljEZLCQ45_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator5count
          local.set 4
        end
        block  ;; label = @3
          local.get 4
          local.get 0
          i32.load16_u offset=12
          local.tee 8
          i32.lt_u
          br_if 0 (;@3;)
          local.get 0
          i32.load
          local.get 1
          local.get 2
          local.get 0
          i32.load offset=4
          i32.load offset=12
          call_indirect (type 1)
          local.set 4
          br 2 (;@1;)
        end
        local.get 3
        i32.const 8
        i32.add
        local.get 0
        local.get 8
        local.get 4
        i32.sub
        i32.const 0
        call $_RNvMsa_NtCs3BljEZLCQ45_4core3fmtNtB5_9Formatter7padding
        i32.const 1
        local.set 4
        local.get 3
        i32.load offset=8
        local.tee 8
        i32.const -1
        i32.eq
        br_if 1 (;@1;)
        local.get 3
        i32.load16_u offset=12
        local.set 7
        local.get 0
        i32.load
        local.tee 6
        local.get 1
        local.get 2
        local.get 0
        i32.load offset=4
        local.tee 0
        i32.load offset=12
        call_indirect (type 1)
        br_if 1 (;@1;)
        local.get 8
        local.get 7
        local.get 6
        local.get 0
        call $_RNvMs9_NtCs3BljEZLCQ45_4core3fmtNtB5_11PostPadding5write
        local.set 4
        br 1 (;@1;)
      end
      i32.const 1050652
      call $_RNvNtNtCs3BljEZLCQ45_4core9panicking11panic_const24panic_const_add_overflow
      unreachable
    end
    local.get 3
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 4)
  (func $_RNvNtCs3BljEZLCQ45_4core9panicking5panic (type 5) (param i32 i32 i32)
    local.get 0
    local.get 1
    i32.const 1
    i32.shl
    i32.const 1
    i32.or
    local.get 2
    call $_RNvNtCs3BljEZLCQ45_4core9panicking9panic_fmt
    unreachable)
  (func $_RNvNtNtCs3BljEZLCQ45_4core9panicking11panic_const24panic_const_mul_overflow (type 4) (param i32)
    i32.const 1050512
    i32.const 67
    local.get 0
    call $_RNvNtCs3BljEZLCQ45_4core9panicking9panic_fmt
    unreachable)
  (func $_RNvNtNtCs3BljEZLCQ45_4core9panicking11panic_const24panic_const_shr_overflow (type 7)
    i32.const 1050580
    i32.const 73
    i32.const 1051720
    call $_RNvNtCs3BljEZLCQ45_4core9panicking9panic_fmt
    unreachable)
  (func $_RNvNtNtCs3BljEZLCQ45_4core9panicking11panic_const24panic_const_shl_overflow (type 4) (param i32)
    i32.const 1050545
    i32.const 71
    local.get 0
    call $_RNvNtCs3BljEZLCQ45_4core9panicking9panic_fmt
    unreachable)
  (func $_RNvNvNvNtCs3BljEZLCQ45_4core4cell22panic_already_borrowed8do_panic7runtime (type 7)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    local.get 0
    i32.const 1
    i32.store offset=8
    local.get 0
    local.get 0
    i32.const 15
    i32.add
    i32.store offset=4
    i32.const 1048576
    local.get 0
    i32.const 4
    i32.add
    i32.const 1052204
    call $_RNvNtCs3BljEZLCQ45_4core9panicking9panic_fmt
    unreachable)
  (func $_RNvXsr_NtCs3BljEZLCQ45_4core4cellNtB5_14BorrowMutErrorNtNtB7_3fmt7Display3fmt (type 0) (param i32 i32) (result i32)
    local.get 1
    i32.const 1050668
    i32.const 24
    call $_RNvMsa_NtCs3BljEZLCQ45_4core3fmtNtB5_9Formatter3pad)
  (func $_RNvNtCs3BljEZLCQ45_4core6option13expect_failed (type 7)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    local.get 0
    i32.const 28
    i32.store offset=12
    local.get 0
    i32.const 1052112
    i32.store offset=8
    local.get 0
    i32.const 8
    i32.add
    call $_RINvNtCs3BljEZLCQ45_4core9panicking13panic_displayReEB4_
    unreachable)
  (func $_RINvNtCs3BljEZLCQ45_4core9panicking13panic_displayReEB4_ (type 4) (param i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    local.get 1
    i32.const 2
    i32.store offset=12
    local.get 1
    local.get 0
    i32.store offset=8
    i32.const 1048576
    local.get 1
    i32.const 8
    i32.add
    i32.const 1052140
    call $_RNvNtCs3BljEZLCQ45_4core9panicking9panic_fmt
    unreachable)
  (func $_RNvNtCsimTbuHakp8s_3std9panicking15panic_with_hook (type 11) (param i32 i32 i32 i32 i32)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 5
    global.set $__stack_pointer
    i32.const 0
    i32.const 0
    i32.load offset=1052432
    local.tee 6
    i32.const 1
    i32.add
    i32.store offset=1052432
    block  ;; label = @1
      local.get 6
      i32.const 0
      i32.lt_s
      br_if 0 (;@1;)
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                i32.const 0
                i32.load8_u offset=1052368
                br_if 0 (;@6;)
                i32.const 0
                i32.load offset=1052364
                local.tee 6
                i32.const -1
                i32.eq
                br_if 2 (;@4;)
                i32.const 0
                i32.const 1
                i32.store8 offset=1052368
                i32.const 0
                local.get 6
                i32.const 1
                i32.add
                i32.store offset=1052364
                i32.const 0
                i32.load offset=1052372
                local.tee 7
                i32.const 0
                i32.lt_s
                br_if 5 (;@1;)
                local.get 7
                i32.const 1
                i32.add
                local.tee 6
                local.get 7
                i32.ge_s
                br_if 1 (;@5;)
                call $_RNvNtCs3BljEZLCQ45_4core6option13expect_failed
                br 5 (;@1;)
              end
              local.get 5
              local.get 0
              local.get 1
              i32.load offset=24
              call_indirect (type 2)
              unreachable
            end
            i32.const 0
            local.get 6
            i32.store offset=1052372
            block  ;; label = @5
              i32.const 0
              i32.load offset=1052376
              i32.eqz
              br_if 0 (;@5;)
              local.get 5
              i32.const 8
              i32.add
              local.get 0
              local.get 1
              i32.load offset=20
              call_indirect (type 2)
              local.get 5
              local.get 4
              i32.store8 offset=29
              local.get 5
              local.get 3
              i32.store8 offset=28
              local.get 5
              local.get 2
              i32.store offset=24
              local.get 5
              local.get 5
              i64.load offset=8
              i64.store offset=16 align=4
              i32.const 0
              i32.load offset=1052376
              local.get 5
              i32.const 16
              i32.add
              i32.const 0
              i32.load offset=1052380
              i32.load offset=20
              call_indirect (type 2)
              i32.const 0
              i32.load offset=1052372
              local.set 6
            end
            local.get 6
            i32.const -1
            i32.add
            local.tee 5
            local.get 6
            i32.ge_s
            br_if 1 (;@3;)
            i32.const 0
            local.get 5
            i32.store offset=1052372
            local.get 6
            i32.const 0
            i32.le_s
            br_if 2 (;@2;)
            i32.const 0
            i32.const 0
            i32.store8 offset=1052368
            local.get 3
            i32.eqz
            br_if 3 (;@1;)
            call $_RNvCsit533lh8FIi_7___rustc10rust_panic
            unreachable
          end
          i32.const 1050968
          call $_RNvNtNtCs3BljEZLCQ45_4core9panicking11panic_const24panic_const_add_overflow
          unreachable
        end
        i32.const 1052040
        call $_RNvNtNtCs3BljEZLCQ45_4core9panicking11panic_const24panic_const_sub_overflow
        unreachable
      end
      i32.const 1052056
      i32.const 77
      i32.const 1052096
      call $_RNvNtCs3BljEZLCQ45_4core9panicking9panic_fmt
      unreachable
    end
    unreachable)
  (func $_RNvCsit533lh8FIi_7___rustc10rust_panic (type 7)
    unreachable)
  (func $_RNvNtCs8gIPSMQVFM6_5alloc5boxed14box_new_uninit.100 (type 8) (param i32) (result i32)
    block  ;; label = @1
      local.get 0
      call $_RNvMs0_NtCsb0q38IY8roO_8dlmalloc8dlmallocINtB5_8DlmallocNtNtB7_3sys6SystemE6mallocCsimTbuHakp8s_3std
      local.tee 0
      br_if 0 (;@1;)
      i32.const 0
      i32.const 1
      i32.store8 offset=1052905
      unreachable
    end
    local.get 0)
  (func $_RNvYINtNvNtCsimTbuHakp8s_3std9panicking11begin_panic7PayloadReENtNtCs3BljEZLCQ45_4core5panic12PanicPayload6as_strB9_ (type 2) (param i32 i32)
    local.get 0
    i32.const 0
    i32.store)
  (func $_RNvXNtCs3BljEZLCQ45_4core3anyReNtB2_3Any7type_idCsimTbuHakp8s_3std (type 2) (param i32 i32)
    local.get 0
    i32.const 0
    i64.load offset=1050880 align=4
    i64.store offset=8 align=4
    local.get 0
    i32.const 0
    i64.load offset=1050872 align=4
    i64.store align=4)
  (func $_RNvMs0_NtCsb0q38IY8roO_8dlmalloc8dlmallocINtB5_8DlmallocNtNtB7_3sys6SystemE11pad_requestCsimTbuHakp8s_3std (type 8) (param i32) (result i32)
    local.get 0
    i32.const 4
    i32.add
    i32.const 8
    call $_RNvNtCsb0q38IY8roO_8dlmalloc8dlmalloc8align_up)
  (func $_RNvMs0_NtCsb0q38IY8roO_8dlmalloc8dlmallocINtB5_8DlmallocNtNtB7_3sys6SystemE18compute_tree_indexCsimTbuHakp8s_3std (type 8) (param i32) (result i32)
    (local i32 i32)
    block  ;; label = @1
      local.get 0
      i32.const 8
      i32.shr_u
      local.tee 1
      br_if 0 (;@1;)
      i32.const 0
      return
    end
    block  ;; label = @1
      local.get 0
      i32.const 16777216
      i32.lt_u
      br_if 0 (;@1;)
      i32.const 31
      return
    end
    block  ;; label = @1
      i32.const 39
      local.get 1
      i32.clz
      local.tee 1
      i32.sub
      local.get 1
      i32.const 31
      i32.xor
      local.tee 2
      i32.lt_u
      br_if 0 (;@1;)
      local.get 0
      i32.const 38
      local.get 1
      i32.sub
      i32.shr_u
      i32.const 1
      i32.and
      local.get 2
      i32.const 1
      i32.shl
      i32.or
      return
    end
    i32.const 1051560
    call $_RNvNtNtCs3BljEZLCQ45_4core9panicking11panic_const24panic_const_add_overflow
    unreachable)
  (func $_RNvNtCsb0q38IY8roO_8dlmalloc8dlmalloc9least_bit (type 8) (param i32) (result i32)
    (local i32)
    block  ;; label = @1
      i32.const 0
      local.get 0
      i32.sub
      local.tee 1
      local.get 0
      i32.const -1
      i32.xor
      i32.lt_u
      br_if 0 (;@1;)
      local.get 0
      local.get 1
      i32.and
      return
    end
    i32.const 1052172
    call $_RNvNtNtCs3BljEZLCQ45_4core9panicking11panic_const24panic_const_add_overflow
    unreachable)
  (func $_RNvMs0_NtCsb0q38IY8roO_8dlmalloc8dlmallocINtB5_8DlmallocNtNtB7_3sys6SystemE11smallbin_atCsimTbuHakp8s_3std (type 8) (param i32) (result i32)
    block  ;; label = @1
      local.get 0
      i32.const 0
      i32.lt_s
      br_if 0 (;@1;)
      local.get 0
      i32.const 3
      i32.shl
      i32.const 1052580
      i32.add
      return
    end
    i32.const 1051064
    call $_RNvNtNtCs3BljEZLCQ45_4core9panicking11panic_const24panic_const_mul_overflow
    unreachable)
  (func $_RNvMs0_NtCsb0q38IY8roO_8dlmalloc8dlmallocINtB5_8DlmallocNtNtB7_3sys6SystemE24unlink_first_small_chunkCsimTbuHakp8s_3std (type 5) (param i32 i32 i32)
    block  ;; label = @1
      local.get 0
      local.get 1
      i32.eq
      br_if 0 (;@1;)
      local.get 1
      local.get 0
      i32.store offset=12
      local.get 0
      local.get 1
      i32.store offset=8
      return
    end
    local.get 2
    call $_RNvMs0_NtCsb0q38IY8roO_8dlmalloc8dlmallocINtB5_8DlmallocNtNtB7_3sys6SystemE14clear_smallmapCsimTbuHakp8s_3std)
  (func $_RNvMs0_NtCsb0q38IY8roO_8dlmalloc8dlmallocINtB5_8DlmallocNtNtB7_3sys6SystemE18unlink_large_chunkCsimTbuHakp8s_3std (type 4) (param i32)
    (local i32 i32 i32 i32 i32)
    local.get 0
    i32.load offset=24
    local.set 1
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 0
          i32.const 12
          i32.add
          i32.load
          local.tee 2
          local.get 0
          i32.ne
          br_if 0 (;@3;)
          local.get 0
          i32.const 20
          i32.const 16
          local.get 0
          i32.load offset=20
          local.tee 2
          select
          i32.add
          i32.load
          local.tee 3
          br_if 1 (;@2;)
          i32.const 0
          local.set 2
          br 2 (;@1;)
        end
        local.get 0
        i32.const 8
        i32.add
        i32.load
        local.tee 3
        local.get 2
        i32.store offset=12
        local.get 2
        local.get 3
        i32.store offset=8
        br 1 (;@1;)
      end
      local.get 0
      i32.const 20
      i32.add
      local.get 0
      i32.const 16
      i32.add
      local.get 2
      select
      local.set 4
      loop  ;; label = @2
        local.get 4
        local.set 5
        local.get 3
        local.tee 2
        i32.const 20
        i32.add
        local.set 4
        local.get 2
        i32.load offset=20
        local.tee 3
        br_if 0 (;@2;)
        local.get 2
        i32.const 16
        i32.add
        local.set 4
        local.get 2
        i32.load offset=16
        local.tee 3
        br_if 0 (;@2;)
      end
      local.get 5
      i32.const 0
      i32.store
    end
    block  ;; label = @1
      block  ;; label = @2
        local.get 1
        i32.eqz
        br_if 0 (;@2;)
        block  ;; label = @3
          block  ;; label = @4
            local.get 0
            local.get 0
            i32.load offset=28
            local.tee 4
            i32.const 2
            i32.shl
            i32.const 1052436
            i32.add
            local.tee 3
            i32.load
            i32.eq
            br_if 0 (;@4;)
            block  ;; label = @5
              block  ;; label = @6
                local.get 1
                i32.load offset=16
                local.get 0
                i32.eq
                br_if 0 (;@6;)
                local.get 1
                local.get 2
                i32.store offset=20
                br 1 (;@5;)
              end
              local.get 1
              local.get 2
              i32.store offset=16
            end
            local.get 2
            br_if 1 (;@3;)
            br 2 (;@2;)
          end
          local.get 3
          local.get 2
          i32.store
          local.get 2
          i32.eqz
          br_if 2 (;@1;)
        end
        local.get 2
        local.get 1
        i32.store offset=24
        block  ;; label = @3
          local.get 0
          i32.load offset=16
          local.tee 3
          i32.eqz
          br_if 0 (;@3;)
          local.get 2
          local.get 3
          i32.store offset=16
          local.get 3
          local.get 2
          i32.store offset=24
        end
        local.get 0
        i32.load offset=20
        local.tee 3
        i32.eqz
        br_if 0 (;@2;)
        local.get 2
        local.get 3
        i32.store offset=20
        local.get 3
        local.get 2
        i32.store offset=24
      end
      return
    end
    block  ;; label = @1
      local.get 4
      i32.const 32
      i32.ge_u
      br_if 0 (;@1;)
      i32.const 0
      i32.const 0
      i32.load offset=1052848
      i32.const -2
      local.get 4
      i32.rotl
      i32.and
      i32.store offset=1052848
      return
    end
    i32.const 1051080
    call $_RNvNtNtCs3BljEZLCQ45_4core9panicking11panic_const24panic_const_shl_overflow
    unreachable)
  (func $_RNvMs0_NtCsb0q38IY8roO_8dlmalloc8dlmallocINtB5_8DlmallocNtNtB7_3sys6SystemE10replace_dvCsimTbuHakp8s_3std (type 2) (param i32 i32)
    (local i32)
    block  ;; label = @1
      i32.const 0
      i32.load offset=1052852
      local.tee 2
      i32.eqz
      br_if 0 (;@1;)
      i32.const 0
      i32.load offset=1052860
      local.get 2
      call $_RNvMs0_NtCsb0q38IY8roO_8dlmalloc8dlmallocINtB5_8DlmallocNtNtB7_3sys6SystemE18insert_small_chunkCsimTbuHakp8s_3std
    end
    i32.const 0
    local.get 0
    i32.store offset=1052860
    i32.const 0
    local.get 1
    i32.store offset=1052852)
  (func $_RNvMs0_NtCsb0q38IY8roO_8dlmalloc8dlmallocINtB5_8DlmallocNtNtB7_3sys6SystemE12insert_chunkCsimTbuHakp8s_3std (type 2) (param i32 i32)
    block  ;; label = @1
      local.get 1
      i32.const 256
      i32.lt_u
      br_if 0 (;@1;)
      local.get 0
      local.get 1
      call $_RNvMs0_NtCsb0q38IY8roO_8dlmalloc8dlmallocINtB5_8DlmallocNtNtB7_3sys6SystemE18insert_large_chunkCsimTbuHakp8s_3std
      return
    end
    local.get 0
    local.get 1
    call $_RNvMs0_NtCsb0q38IY8roO_8dlmalloc8dlmallocINtB5_8DlmallocNtNtB7_3sys6SystemE18insert_small_chunkCsimTbuHakp8s_3std)
  (func $_RNvMs0_NtCsb0q38IY8roO_8dlmalloc8dlmallocINtB5_8DlmallocNtNtB7_3sys6SystemE8init_topCsimTbuHakp8s_3std (type 2) (param i32 i32)
    (local i32 i32)
    block  ;; label = @1
      local.get 1
      local.get 0
      i32.const 15
      i32.add
      i32.const -8
      i32.and
      local.get 0
      i32.sub
      i32.const -8
      i32.add
      local.tee 2
      i32.lt_u
      br_if 0 (;@1;)
      i32.const 0
      local.get 1
      local.get 2
      i32.sub
      local.tee 3
      i32.store offset=1052856
      i32.const 0
      local.get 0
      local.get 2
      i32.add
      local.tee 2
      i32.store offset=1052864
      local.get 2
      local.get 3
      i32.const 1
      i32.or
      i32.store offset=4
      local.get 0
      local.get 1
      i32.add
      i32.const 40
      i32.store offset=4
      i32.const 0
      i32.const 2097152
      i32.store offset=1052876
      return
    end
    i32.const 1051768
    call $_RNvNtNtCs3BljEZLCQ45_4core9panicking11panic_const24panic_const_sub_overflow
    unreachable)
  (func $_RNvMs0_NtCsb0q38IY8roO_8dlmalloc8dlmallocINtB5_8DlmallocNtNtB7_3sys6SystemE15segment_holdingCsimTbuHakp8s_3std (type 8) (param i32) (result i32)
    (local i32 i32)
    i32.const 1052564
    local.set 1
    block  ;; label = @1
      loop  ;; label = @2
        block  ;; label = @3
          local.get 1
          br_if 0 (;@3;)
          i32.const 0
          local.set 1
          br 2 (;@1;)
        end
        block  ;; label = @3
          local.get 1
          i32.load
          local.tee 2
          local.get 0
          i32.gt_u
          br_if 0 (;@3;)
          local.get 0
          local.get 2
          local.get 1
          i32.const 4
          i32.add
          i32.load
          i32.add
          i32.lt_u
          br_if 2 (;@1;)
        end
        local.get 1
        i32.load offset=8
        local.set 1
        br 0 (;@2;)
      end
    end
    local.get 1)
  (func $_RNvMs0_NtCsb0q38IY8roO_8dlmalloc8dlmallocINtB5_8DlmallocNtNtB7_3sys6SystemE14clear_smallmapCsimTbuHakp8s_3std (type 4) (param i32)
    block  ;; label = @1
      local.get 0
      i32.const 31
      i32.gt_u
      br_if 0 (;@1;)
      i32.const 0
      i32.const 0
      i32.load offset=1052844
      i32.const -2
      local.get 0
      i32.rotl
      i32.and
      i32.store offset=1052844
      return
    end
    i32.const 1051496
    call $_RNvNtNtCs3BljEZLCQ45_4core9panicking11panic_const24panic_const_shl_overflow
    unreachable)
  (func $_RNvMs0_NtCsb0q38IY8roO_8dlmalloc8dlmallocINtB5_8DlmallocNtNtB7_3sys6SystemE18insert_small_chunkCsimTbuHakp8s_3std (type 2) (param i32 i32)
    (local i32 i32)
    block  ;; label = @1
      local.get 1
      i32.const 256
      i32.ge_u
      br_if 0 (;@1;)
      block  ;; label = @2
        block  ;; label = @3
          i32.const 0
          i32.load offset=1052844
          local.tee 2
          i32.const 1
          local.get 1
          i32.const 3
          i32.shr_u
          local.tee 1
          i32.shl
          local.tee 3
          i32.and
          br_if 0 (;@3;)
          i32.const 0
          local.get 2
          local.get 3
          i32.or
          i32.store offset=1052844
          local.get 1
          call $_RNvMs0_NtCsb0q38IY8roO_8dlmalloc8dlmallocINtB5_8DlmallocNtNtB7_3sys6SystemE11smallbin_atCsimTbuHakp8s_3std
          local.tee 1
          local.set 2
          br 1 (;@2;)
        end
        local.get 1
        call $_RNvMs0_NtCsb0q38IY8roO_8dlmalloc8dlmallocINtB5_8DlmallocNtNtB7_3sys6SystemE11smallbin_atCsimTbuHakp8s_3std
        local.tee 2
        i32.load offset=8
        local.set 1
      end
      local.get 2
      local.get 0
      i32.store offset=8
      local.get 1
      local.get 0
      i32.store offset=12
      local.get 0
      local.get 2
      i32.store offset=12
      local.get 0
      local.get 1
      i32.store offset=8
      return
    end
    i32.const 1051576
    call $_RNvNtNtCs3BljEZLCQ45_4core9panicking11panic_const24panic_const_shl_overflow
    unreachable)
  (func $_RNvMs0_NtCsb0q38IY8roO_8dlmalloc8dlmallocINtB5_8DlmallocNtNtB7_3sys6SystemE18insert_large_chunkCsimTbuHakp8s_3std (type 2) (param i32 i32)
    (local i32 i32 i32 i32)
    local.get 1
    call $_RNvMs0_NtCsb0q38IY8roO_8dlmalloc8dlmallocINtB5_8DlmallocNtNtB7_3sys6SystemE18compute_tree_indexCsimTbuHakp8s_3std
    local.set 2
    local.get 0
    i64.const 0
    i64.store offset=16 align=4
    local.get 0
    local.get 2
    i32.store offset=28
    local.get 2
    i32.const 2
    i32.shl
    i32.const 1052436
    i32.add
    local.set 3
    block  ;; label = @1
      i32.const 0
      i32.load offset=1052848
      local.tee 4
      i32.const 1
      local.get 2
      i32.shl
      local.tee 5
      i32.and
      br_if 0 (;@1;)
      local.get 3
      local.get 0
      i32.store
      local.get 0
      local.get 3
      i32.store offset=24
      local.get 0
      local.get 0
      i32.store offset=12
      local.get 0
      local.get 0
      i32.store offset=8
      i32.const 0
      local.get 4
      local.get 5
      i32.or
      i32.store offset=1052848
      return
    end
    local.get 1
    i32.const 0
    i32.const 25
    local.get 2
    i32.const 1
    i32.shr_u
    i32.sub
    local.get 2
    i32.const 31
    i32.eq
    select
    i32.shl
    local.set 2
    local.get 3
    i32.load
    local.set 4
    loop  ;; label = @1
      block  ;; label = @2
        local.get 4
        local.tee 3
        i32.load offset=4
        i32.const -8
        i32.and
        local.get 1
        i32.ne
        br_if 0 (;@2;)
        local.get 3
        i32.load offset=8
        local.tee 2
        local.get 0
        i32.store offset=12
        local.get 3
        local.get 0
        i32.store offset=8
        local.get 0
        i32.const 0
        i32.store offset=24
        local.get 0
        local.get 3
        i32.store offset=12
        local.get 0
        local.get 2
        i32.store offset=8
        return
      end
      local.get 2
      i32.const 29
      i32.shr_u
      local.set 4
      local.get 2
      i32.const 1
      i32.shl
      local.set 2
      local.get 3
      local.get 4
      i32.const 4
      i32.and
      i32.add
      local.tee 5
      i32.load offset=16
      local.tee 4
      br_if 0 (;@1;)
    end
    local.get 5
    i32.const 16
    i32.add
    local.get 0
    i32.store
    local.get 0
    local.get 3
    i32.store offset=24
    local.get 0
    local.get 0
    i32.store offset=12
    local.get 0
    local.get 0
    i32.store offset=8)
  (func $_RINvNtNtCsimTbuHakp8s_3std3sys9backtrace26___rust_end_short_backtraceNCNvNtB6_9panicking13panic_handler0zEB6_ (type 4) (param i32)
    local.get 0
    call $_RNCNvNtCsimTbuHakp8s_3std9panicking13panic_handler0B5_
    unreachable)
  (func $_RNCNvNtCsimTbuHakp8s_3std9panicking13panic_handler0B5_ (type 4) (param i32)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    block  ;; label = @1
      local.get 0
      i32.load
      local.tee 2
      i32.const 4
      i32.add
      i32.load
      local.tee 3
      i32.const 1
      i32.and
      i32.eqz
      br_if 0 (;@1;)
      local.get 2
      i32.load
      local.tee 2
      i32.eqz
      br_if 0 (;@1;)
      local.get 1
      local.get 2
      i32.store
      local.get 1
      local.get 3
      i32.const 1
      i32.shr_u
      i32.store offset=4
      local.get 1
      i32.const 1050912
      local.get 0
      i32.load offset=4
      local.get 0
      i32.load offset=8
      local.tee 0
      i32.load8_u offset=8
      local.get 0
      i32.load8_u offset=9
      call $_RNvNtCsimTbuHakp8s_3std9panicking15panic_with_hook
      unreachable
    end
    local.get 1
    i32.const -1
    i32.store
    local.get 1
    local.get 0
    i32.store offset=12
    local.get 1
    i32.const 1050940
    local.get 0
    i32.load offset=4
    local.get 0
    i32.load offset=8
    local.tee 0
    i32.load8_u offset=8
    local.get 0
    i32.load8_u offset=9
    call $_RNvNtCsimTbuHakp8s_3std9panicking15panic_with_hook
    unreachable)
  (func $_RINvNtCs3BljEZLCQ45_4core3ptr9drop_glueNtNvNtCsimTbuHakp8s_3std9panicking13panic_handler19FormatStringPayloadEBH_ (type 4) (param i32)
    block  ;; label = @1
      local.get 0
      i32.load
      i32.const -1
      i32.eq
      br_if 0 (;@1;)
      local.get 0
      call $_RNvMs2_NtCs8gIPSMQVFM6_5alloc7raw_vecNtB5_11RawVecInner10deallocateB7_
    end)
  (func $_RNvXs0_NvNtCsimTbuHakp8s_3std9panicking13panic_handlerNtB5_19FormatStringPayloadNtNtCs3BljEZLCQ45_4core3fmt7Display3fmt (type 0) (param i32 i32) (result i32)
    block  ;; label = @1
      local.get 0
      i32.load
      i32.const -1
      i32.eq
      br_if 0 (;@1;)
      local.get 1
      i32.load
      local.get 0
      i32.load offset=4
      local.get 0
      i32.load offset=8
      local.get 1
      i32.load offset=4
      i32.load offset=12
      call_indirect (type 1)
      return
    end
    local.get 0
    i32.load offset=12
    i32.load
    local.get 1
    i32.load
    local.get 1
    i32.load offset=4
    call $_RNvXs1i_NtCs3BljEZLCQ45_4core3fmtRNtNtNtB8_5panic10panic_info12PanicMessageNtB6_7Display3fmtCsimTbuHakp8s_3std)
  (func $_RNvXs1i_NtCs3BljEZLCQ45_4core3fmtRNtNtNtB8_5panic10panic_info12PanicMessageNtB6_7Display3fmtCsimTbuHakp8s_3std (type 1) (param i32 i32 i32) (result i32)
    local.get 1
    local.get 2
    local.get 0
    i32.load
    local.get 0
    i32.load offset=4
    call $_RNvNtCs3BljEZLCQ45_4core3fmt5write)
  (func $_RNvXs_NvNtCsimTbuHakp8s_3std9panicking13panic_handlerNtB4_19FormatStringPayloadNtNtCs3BljEZLCQ45_4core5panic12PanicPayload8take_box (type 2) (param i32 i32)
    (local i32 i32 i64)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 1
    call $_RNvMNvNtCsimTbuHakp8s_3std9panicking13panic_handlerNtB2_19FormatStringPayload4fill
    local.tee 1
    i32.load offset=8
    local.set 3
    local.get 1
    i32.const 0
    i32.store offset=8
    local.get 1
    i64.load align=4
    local.set 4
    local.get 1
    i64.const 4294967296
    i64.store align=4
    local.get 2
    local.get 3
    i32.store offset=8
    local.get 2
    local.get 4
    i64.store
    i32.const 12
    call $_RNvNtCs8gIPSMQVFM6_5alloc5boxed14box_new_uninit.100
    local.tee 1
    local.get 2
    i32.load offset=8
    i32.store offset=8
    local.get 1
    local.get 2
    i64.load
    i64.store align=4
    local.get 0
    i32.const 1052324
    i32.store offset=4
    local.get 0
    local.get 1
    i32.store
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer)
  (func $_RNvMNvNtCsimTbuHakp8s_3std9panicking13panic_handlerNtB2_19FormatStringPayload4fill (type 8) (param i32) (result i32)
    (local i32 i32 i64)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    block  ;; label = @1
      local.get 0
      i32.load
      i32.const -1
      i32.ne
      br_if 0 (;@1;)
      local.get 0
      i32.load offset=12
      local.set 2
      local.get 1
      i32.const 0
      i32.store offset=28
      local.get 1
      i64.const 4294967296
      i64.store offset=20 align=4
      local.get 2
      i32.load
      local.get 1
      i32.const 20
      i32.add
      i32.const 1050888
      call $_RNvXs1i_NtCs3BljEZLCQ45_4core3fmtRNtNtNtB8_5panic10panic_info12PanicMessageNtB6_7Display3fmtCsimTbuHakp8s_3std
      drop
      local.get 1
      local.get 1
      i32.load offset=28
      local.tee 2
      i32.store offset=16
      local.get 1
      local.get 1
      i64.load offset=20 align=4
      local.tee 3
      i64.store offset=8
      local.get 0
      local.get 2
      i32.store offset=8
      local.get 0
      local.get 3
      i64.store align=4
    end
    local.get 1
    i32.const 32
    i32.add
    global.set $__stack_pointer
    local.get 0)
  (func $_RNvXs_NvNtCsimTbuHakp8s_3std9panicking13panic_handlerNtB4_19FormatStringPayloadNtNtCs3BljEZLCQ45_4core5panic12PanicPayload3get (type 2) (param i32 i32)
    local.get 1
    call $_RNvMNvNtCsimTbuHakp8s_3std9panicking13panic_handlerNtB2_19FormatStringPayload4fill
    local.set 1
    local.get 0
    i32.const 1052324
    i32.store offset=4
    local.get 0
    local.get 1
    i32.store)
  (func $_RNvXNtCs3BljEZLCQ45_4core3anyNtNtCs8gIPSMQVFM6_5alloc6string6StringNtB2_3Any7type_idCsimTbuHakp8s_3std (type 2) (param i32 i32)
    local.get 0
    i32.const 0
    i64.load offset=1050864 align=4
    i64.store offset=8 align=4
    local.get 0
    i32.const 0
    i64.load offset=1050856 align=4
    i64.store align=4)
  (func $_RNvXsZ_NtCs8gIPSMQVFM6_5alloc6stringNtB5_6StringNtNtCs3BljEZLCQ45_4core3fmt5Write10write_char.111 (type 0) (param i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32)
    local.get 0
    i32.load offset=8
    local.set 2
    block  ;; label = @1
      block  ;; label = @2
        local.get 1
        i32.const 128
        i32.lt_u
        local.tee 3
        i32.eqz
        br_if 0 (;@2;)
        i32.const 1
        local.set 4
        br 1 (;@1;)
      end
      block  ;; label = @2
        local.get 1
        i32.const 2048
        i32.ge_u
        br_if 0 (;@2;)
        i32.const 2
        local.set 4
        br 1 (;@1;)
      end
      i32.const 3
      i32.const 4
      local.get 1
      i32.const 65536
      i32.lt_u
      select
      local.set 4
    end
    local.get 0
    local.get 4
    call $_RNvMs_NtCs8gIPSMQVFM6_5alloc3vecINtB4_3VechE7reserveB6_
    local.get 0
    i32.load offset=4
    local.get 2
    i32.add
    local.set 5
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            local.get 3
            br_if 0 (;@4;)
            local.get 1
            i32.const 2048
            i32.lt_u
            br_if 1 (;@3;)
            local.get 1
            i32.const 12
            i32.shr_u
            local.set 3
            local.get 1
            i32.const 63
            i32.and
            i32.const -128
            i32.or
            local.set 6
            local.get 1
            i32.const 6
            i32.shr_u
            i32.const 63
            i32.and
            i32.const -128
            i32.or
            local.set 7
            local.get 1
            i32.const 65536
            i32.ge_u
            br_if 2 (;@2;)
            local.get 5
            local.get 6
            i32.store8 offset=2
            local.get 5
            local.get 7
            i32.store8 offset=1
            local.get 5
            local.get 3
            i32.const 224
            i32.or
            i32.store8
            br 3 (;@1;)
          end
          local.get 5
          local.get 1
          i32.store8
          br 2 (;@1;)
        end
        local.get 5
        local.get 1
        i32.const 63
        i32.and
        i32.const 128
        i32.or
        i32.store8 offset=1
        local.get 5
        local.get 1
        i32.const 6
        i32.shr_u
        i32.const 192
        i32.or
        i32.store8
        br 1 (;@1;)
      end
      local.get 5
      local.get 6
      i32.store8 offset=3
      local.get 5
      local.get 7
      i32.store8 offset=2
      local.get 5
      local.get 3
      i32.const 63
      i32.and
      i32.const 128
      i32.or
      i32.store8 offset=1
      local.get 5
      local.get 1
      i32.const 18
      i32.shr_u
      i32.const 240
      i32.or
      i32.store8
    end
    local.get 0
    local.get 4
    local.get 2
    i32.add
    i32.store offset=8
    i32.const 0)
  (func $_RNvXs2_NvNtCsimTbuHakp8s_3std9panicking13panic_handlerNtB5_16StaticStrPayloadNtNtCs3BljEZLCQ45_4core3fmt7Display3fmt (type 0) (param i32 i32) (result i32)
    local.get 1
    i32.load
    local.get 0
    i32.load
    local.get 0
    i32.load offset=4
    local.get 1
    i32.load offset=4
    i32.load offset=12
    call_indirect (type 1))
  (func $_RNvXs1_NvNtCsimTbuHakp8s_3std9panicking13panic_handlerNtB5_16StaticStrPayloadNtNtCs3BljEZLCQ45_4core5panic12PanicPayload8take_box (type 2) (param i32 i32)
    (local i64)
    local.get 1
    i64.load align=4
    local.set 2
    i32.const 8
    call $_RNvNtCs8gIPSMQVFM6_5alloc5boxed14box_new_uninit.100
    local.tee 1
    local.get 2
    i64.store align=4
    local.get 0
    i32.const 1052292
    i32.store offset=4
    local.get 0
    local.get 1
    i32.store)
  (func $_RNvXs1_NvNtCsimTbuHakp8s_3std9panicking13panic_handlerNtB5_16StaticStrPayloadNtNtCs3BljEZLCQ45_4core5panic12PanicPayload3get (type 2) (param i32 i32)
    local.get 0
    i32.const 1052292
    i32.store offset=4
    local.get 0
    local.get 1
    i32.store)
  (func $_RNvXs1_NvNtCsimTbuHakp8s_3std9panicking13panic_handlerNtB5_16StaticStrPayloadNtNtCs3BljEZLCQ45_4core5panic12PanicPayload6as_str (type 2) (param i32 i32)
    local.get 0
    local.get 1
    i64.load align=4
    i64.store)
  (func $_RNvMs0_NtCsb0q38IY8roO_8dlmalloc8dlmallocINtB5_8DlmallocNtNtB7_3sys6SystemE23release_unused_segmentsCsimTbuHakp8s_3std (type 7)
    (local i32 i32)
    i32.const 0
    local.set 0
    i32.const 1052572
    local.set 1
    block  ;; label = @1
      loop  ;; label = @2
        local.get 1
        i32.load
        local.tee 1
        i32.eqz
        br_if 1 (;@1;)
        local.get 1
        i32.const 8
        i32.add
        local.set 1
        local.get 0
        i32.const 1
        i32.add
        local.tee 0
        br_if 0 (;@2;)
      end
      i32.const 1051592
      call $_RNvNtNtCs3BljEZLCQ45_4core9panicking11panic_const24panic_const_add_overflow
      unreachable
    end
    i32.const 0
    local.get 0
    i32.const 4095
    local.get 0
    i32.const 4095
    i32.gt_u
    select
    i32.store offset=1052884)
  (func $main (type 0) (param i32 i32) (result i32)
    call $__original_main)
  (table (;0;) 19 19 funcref)
  (memory (;0;) 17)
  (global $__stack_pointer (mut i32) (i32.const 1048576))
  (export "memory" (memory 0))
  (export "main" (func $main))
  (elem (;0;) (i32.const 1) func $_RNvXsr_NtCs3BljEZLCQ45_4core4cellNtB5_14BorrowMutErrorNtNtB7_3fmt7Display3fmt $_RNvXs1i_NtCs3BljEZLCQ45_4core3fmtReNtB6_7Display3fmtB8_ $_RINvNtCs3BljEZLCQ45_4core3ptr9drop_glueNtNtCs8gIPSMQVFM6_5alloc6string6StringEBF_ $_RNvXsZ_NtCs8gIPSMQVFM6_5alloc6stringNtB5_6StringNtNtCs3BljEZLCQ45_4core3fmt5Write9write_str $_RNvXsZ_NtCs8gIPSMQVFM6_5alloc6stringNtB5_6StringNtNtCs3BljEZLCQ45_4core3fmt5Write10write_char $_RNvYNtNtCs8gIPSMQVFM6_5alloc6string6StringNtNtCs3BljEZLCQ45_4core3fmt5Write9write_fmtB6_ $_RNvXsZ_NtCs8gIPSMQVFM6_5alloc6stringNtB5_6StringNtNtCs3BljEZLCQ45_4core3fmt5Write10write_char.111 $_RNvXs2_NvNtCsimTbuHakp8s_3std9panicking13panic_handlerNtB5_16StaticStrPayloadNtNtCs3BljEZLCQ45_4core3fmt7Display3fmt $_RNvXs1_NvNtCsimTbuHakp8s_3std9panicking13panic_handlerNtB5_16StaticStrPayloadNtNtCs3BljEZLCQ45_4core5panic12PanicPayload8take_box $_RNvXs1_NvNtCsimTbuHakp8s_3std9panicking13panic_handlerNtB5_16StaticStrPayloadNtNtCs3BljEZLCQ45_4core5panic12PanicPayload3get $_RNvXs1_NvNtCsimTbuHakp8s_3std9panicking13panic_handlerNtB5_16StaticStrPayloadNtNtCs3BljEZLCQ45_4core5panic12PanicPayload6as_str $_RINvNtCs3BljEZLCQ45_4core3ptr9drop_glueNtNvNtCsimTbuHakp8s_3std9panicking13panic_handler19FormatStringPayloadEBH_ $_RNvXs0_NvNtCsimTbuHakp8s_3std9panicking13panic_handlerNtB5_19FormatStringPayloadNtNtCs3BljEZLCQ45_4core3fmt7Display3fmt $_RNvXs_NvNtCsimTbuHakp8s_3std9panicking13panic_handlerNtB4_19FormatStringPayloadNtNtCs3BljEZLCQ45_4core5panic12PanicPayload8take_box $_RNvXs_NvNtCsimTbuHakp8s_3std9panicking13panic_handlerNtB4_19FormatStringPayloadNtNtCs3BljEZLCQ45_4core5panic12PanicPayload3get $_RNvYINtNvNtCsimTbuHakp8s_3std9panicking11begin_panic7PayloadReENtNtCs3BljEZLCQ45_4core5panic12PanicPayload6as_strB9_ $_RNvXNtCs3BljEZLCQ45_4core3anyReNtB2_3Any7type_idCsimTbuHakp8s_3std $_RNvXNtCs3BljEZLCQ45_4core3anyNtNtCs8gIPSMQVFM6_5alloc6string6StringNtB2_3Any7type_idCsimTbuHakp8s_3std)
  (data $.rodata (i32.const 1048576) "\c0\00C:\5cUsers\5csonaw\5c.rustup\5ctoolchains\5cnightly-x86_64-pc-windows-msvc\5clib\5crustlib\5csrc\5crust\5clibrary\5cstd\5csrc\5crt.rs\00C:\5cUsers\5csonaw\5c.rustup\5ctoolchains\5cnightly-x86_64-pc-windows-msvc\5clib\5crustlib\5csrc\5crust\5clibrary\5ccore\5csrc\5cstr\5ccount.rs\00C:\5cUsers\5csonaw\5c.rustup\5ctoolchains\5cnightly-x86_64-pc-windows-msvc\5clib\5crustlib\5csrc\5crust\5clibrary\5cstd\5csrc\5csys\5csync\5crwlock\5cno_threads.rs\00C:\5cUsers\5csonaw\5c.rustup\5ctoolchains\5cnightly-x86_64-pc-windows-msvc\5clib\5crustlib\5csrc\5crust\5clibrary\5ccore\5csrc\5cstr\5citer.rs\00C:\5cUsers\5csonaw\5c.rustup\5ctoolchains\5cnightly-x86_64-pc-windows-msvc\5clib\5crustlib\5csrc\5crust\5clibrary\5cstd\5csrc\5cio\5cstdio.rs\00C:\5cUsers\5csonaw\5c.rustup\5ctoolchains\5cnightly-x86_64-pc-windows-msvc\5clib\5crustlib\5csrc\5crust\5clibrary\5ccore\5csrc\5citer\5ctraits\5caccum.rs\00C:\5cUsers\5csonaw\5c.cargo\5cregistry\5csrc\5cindex.crates.io-1949cf8c6b5b557f\5cdlmalloc-0.2.13\5csrc\5cwasm.rs\00C:\5cUsers\5csonaw\5c.rustup\5ctoolchains\5cnightly-x86_64-pc-windows-msvc\5clib\5crustlib\5csrc\5crust\5clibrary\5ccore\5csrc\5ccell.rs\00C:\5cUsers\5csonaw\5c.rustup\5ctoolchains\5cnightly-x86_64-pc-windows-msvc\5clib\5crustlib\5csrc\5crust\5clibrary\5cstd\5csrc\5csync\5creentrant_lock.rs\00C:\5cUsers\5csonaw\5c.rustup\5ctoolchains\5cnightly-x86_64-pc-windows-msvc\5clib\5crustlib\5csrc\5crust\5clibrary\5cstd\5csrc\5cpanicking.rs\00C:\5cUsers\5csonaw\5c.rustup\5ctoolchains\5cnightly-x86_64-pc-windows-msvc\5clib\5crustlib\5csrc\5crust\5clibrary\5cstd\5csrc\5csync\5conce.rs\00C:\5cUsers\5csonaw\5c.rustup\5ctoolchains\5cnightly-x86_64-pc-windows-msvc\5clib\5crustlib\5csrc\5crust\5clibrary\5ccore\5csrc\5cfmt\5cmod.rs\00C:\5cUsers\5csonaw\5c.rustup\5ctoolchains\5cnightly-x86_64-pc-windows-msvc\5clib\5crustlib\5csrc\5crust\5clibrary\5calloc\5csrc\5craw_vec\5cmod.rs\00C:\5cUsers\5csonaw\5c.rustup\5ctoolchains\5cnightly-x86_64-pc-windows-msvc\5clib\5crustlib\5csrc\5crust\5clibrary\5cstd\5csrc\5cthread\5cid.rs\00C:\5cUsers\5csonaw\5c.cargo\5cregistry\5csrc\5cindex.crates.io-1949cf8c6b5b557f\5cdlmalloc-0.2.13\5csrc\5cdlmalloc.rs\00capacity overflow\00\00k\05\10\00v\00\00\00\1c\00\00\00\05\00\00\00\03\00\00\00\0c\00\00\00\04\00\00\00\04\00\00\00\05\00\00\00\06\00\00\00K\02\10\00{\00\00\00\ce\00\00\00\01\00\00\00\f9\04\10\00q\00\00\00\87\07\00\00\19\00\00\00\f9\04\10\00q\00\00\00\99\06\00\00\0d\00\00\00\f9\04\10\00q\00\00\00\c9\06\00\00\0d\00\00\00n\00\10\00s\00\00\00[\00\00\00\09\00\00\00n\00\10\00s\00\00\00g\00\00\00\0d\00\00\00n\00\10\00s\00\00\00e\00\00\00\11\00\00\00n\00\10\00s\00\00\00U\00\00\00\11\00\00\00attempt to add with overflowattempt to multiply with overflowattempt to shift left with overflowattempt to shift right with overflowattempt to subtract with overflow\00\00\00f\01\10\00r\00\00\00\bd\00\00\00\11\00\00\00RefCell already borrowed\c7\02\10\00_\00\00\00:\00\00\00\15\00\00\00\c7\02\10\00_\00\00\00<\00\00\00\10\00\00\00\c7\02\10\00_\00\00\00F\00\00\00\1b\00\00\00\86\04\10\00r\00\00\00\e2\00\00\00\14\00\00\00Once instance has previously been poisonedone-time initialization may not be performed recursively\00\00\9cK]\a3$\17\01K\81:\eams\d6\dfU\5c\f6\e9_\dc\02\f6\b9\f1\c1pl\f2a\c1$\03\00\00\00\0c\00\00\00\04\00\00\00\04\00\00\00\07\00\00\00\06\00\00\00\00\00\00\00\08\00\00\00\04\00\00\00\08\00\00\00\09\00\00\00\0a\00\00\00\0b\00\00\00\0c\00\00\00\10\00\00\00\04\00\00\00\0d\00\00\00\0e\00\00\00\0f\00\00\00\10\00\00\00\13\04\10\00r\00\00\00\ae\01\00\00\14\00\00\00U\06\10\00c\00\00\00,\03\00\00\14\00\00\00U\06\10\00c\00\00\00<\03\00\00\0d\00\00\00U\06\10\00c\00\00\00H\03\00\00\19\00\00\00U\06\10\00c\00\00\00:\02\00\00\19\00\00\00U\06\10\00c\00\00\00<\02\00\00\1d\00\00\00U\06\10\00c\00\00\00\ca\03\00\00#\00\00\00U\06\10\00c\00\00\00S\04\00\00\1a\00\00\00U\06\10\00c\00\00\00\a8\02\00\00\0d\00\00\00U\06\10\00c\00\00\00\9e\02\00\00\1a\00\00\00U\06\10\00c\00\00\00\9e\02\00\00\11\00\00\00U\06\10\00c\00\00\00\c7\02\00\00\11\00\00\00U\06\10\00c\00\00\00\c0\02\00\00\11\00\00\00U\06\10\00c\00\00\00\b6\02\00\00\11\00\00\00U\06\10\00c\00\00\00\ec\02\00\00\15\00\00\00U\06\10\00c\00\00\00\ee\02\00\00\19\00\00\00U\06\10\00c\00\00\00\06\03\00\00\11\00\00\00U\06\10\00c\00\00\00\fd\02\00\00\0d\00\00\00U\06\10\00c\00\00\00\f7\02\00\00\0d\00\00\00U\06\10\00c\00\00\00\81\03\00\00\19\00\00\00U\06\10\00c\00\00\00\c0\03\00\00-\00\00\00U\06\10\00c\00\00\00b\03\00\00\19\00\00\00U\06\10\00c\00\00\00i\03\00\00\18\00\00\00U\06\10\00c\00\00\00\b1\04\00\00\1a\00\00\00assertion failed: psize >= size + min_overhead\00\00U\06\10\00c\00\00\00\b1\04\00\00\09\00\00\00U\06\10\00c\00\00\00\b7\04\00\00\1e\00\00\00assertion failed: psize <= size + max_overhead\00\00U\06\10\00c\00\00\00\b7\04\00\00\0d\00\00\00U\06\10\00c\00\00\00G\04\00\00\1b\00\00\00U\06\10\00c\00\00\00\19\02\00\00\10\00\00\00U\06\10\00c\00\00\00\02\02\00\00\10\00\00\00U\06\10\00c\00\00\00\f4\01\00\00\10\00\00\00U\06\10\00c\00\00\00\dd\03\00\00#\00\00\00U\06\10\00c\00\00\00?\04\00\00\19\00\00\00U\06\10\00c\00\00\00P\05\00\00\0d\00\00\00U\06\10\00c\00\00\00\d0\04\00\00\0d\00\00\00U\06\10\00c\00\00\00\c5\04\00\00\1a\00\00\00U\06\10\00c\00\00\00\c5\04\00\00\11\00\00\00U\06\10\00c\00\00\00\f2\04\00\00\11\00\00\00U\06\10\00c\00\00\00\eb\04\00\00\11\00\00\00U\06\10\00c\00\00\00\de\04\00\00\11\00\00\00U\06\10\00c\00\00\00\04\05\00\00\0d\00\00\00U\06\10\00c\00\00\00\12\01\00\00\1d\00\00\00U\06\10\00c\00\00\001\01\00\00!\00\00\00U\06\10\00c\00\00\00\dc\01\00\00\16\00\00\00U\06\10\00c\00\00\00\d8\02\00\00\14\00\00\00U\06\10\00c\00\00\00`\02\00\00\13\00\00\00U\06\10\00c\00\00\00m\02\00\00#\00\00\00U\06\10\00c\00\00\00m\02\00\00\22\00\00\00U\06\10\00c\00\00\00m\02\00\00C\00\00\00U\06\10\00c\00\00\00n\02\00\00\1a\00\00\00U\06\10\00c\00\00\00t\02\00\00\1c\00\00\00U\06\10\00c\00\00\00u\02\00\00\1b\00\00\00U\06\10\00c\00\00\00y\02\00\00%\00\00\00U\06\10\00c\00\00\00\88\02\00\00&\00\00\00U\06\10\00c\00\00\00\15\05\00\00\1f\00\00\00U\06\10\00c\00\00\00\84\01\00\00\0d\00\00\00U\06\10\00c\00\00\00\8d\01\00\00\09\00\00\00U\06\10\00c\00\00\00\a8\01\00\00\11\00\00\00U\06\10\00c\00\00\00\aa\01\00\00\1c\00\00\00U\06\10\00c\00\00\00\b5\01\00\00\15\00\00\00U\06\10\00c\00\00\00\99\01\00\00\19\00\00\00\e2\00\10\00\83\00\00\00?\00\00\00\1f\00\00\00rwlock has not been locked for reading\00\00\e2\00\10\00\83\00\00\00>\00\00\00\09\00\00\00rwlock overflowed read locks\e2\00\10\00\83\00\00\00\15\00\00\00,\00\00\00U\06\10\00c\00\00\00X\00\00\00\05\00\00\00U\06\10\00c\00\00\00`\00\00\00\09\00\00\00\02\00\10\00k\00\00\00\8d\00\00\00\0d\00\00\00\d9\01\10\00q\00\00\00\e4\02\00\00\13\00\00\00failed to generate unique thread ID: bitspace exhausted\00\e2\05\10\00r\00\00\00&\00\00\00\0d\00\00\00\00\00\00\00\08\00\00\00\04\00\00\00\11\00\00\00'\03\10\00n\00\00\00\07\08\00\00\1d\00\00\00\03\00\00\00\0c\00\00\00\04\00\00\00\12\00\00\00\96\03\10\00|\00\00\00\a9\01\00\00\0d\00\00\00"))
