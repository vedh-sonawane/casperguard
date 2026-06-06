(module $casperguard_build_contract-d998ebb744daf5fe.wasm
  (type (;0;) (func))
  (type (;1;) (func (param i32 i32) (result i32)))
  (type (;2;) (func (param i32 i32 i32) (result i32)))
  (type (;3;) (func (param i32 i32)))
  (type (;4;) (func (param i32)))
  (type (;5;) (func (result i32)))
  (type (;6;) (func (param i32 i32 i32)))
  (type (;7;) (func (param i32 i32 i32 i32) (result i32)))
  (type (;8;) (func (param i32 i32 i32 i32)))
  (type (;9;) (func (param i32) (result i32)))
  (func $_RINvNtNtCsiuDZNDVGlkl_3std3sys9backtrace28___rust_begin_short_backtraceFEuuECshnbvUaKcrCY_26casperguard_build_contract (type 4) (param i32)
    local.get 0
    call_indirect (type 0))
  (func $_RNvCshnbvUaKcrCY_26casperguard_build_contract4main (type 0))
  (func $__original_main (type 5) (result i32)
    (local i64 i64 i64 i32 i32)
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          i32.const 0
          i64.load offset=1050160
          i64.const 0
          i64.ne
          br_if 0 (;@3;)
          i32.const 0
          i64.load offset=1050168
          local.set 0
          loop  ;; label = @4
            local.get 0
            i64.const -1
            i64.eq
            br_if 2 (;@2;)
            i32.const 0
            local.get 0
            i64.const 1
            i64.add
            local.tee 1
            i32.const 0
            i64.load offset=1050168
            local.tee 2
            local.get 2
            local.get 0
            i64.eq
            local.tee 3
            select
            i64.store offset=1050168
            local.get 2
            local.set 0
            local.get 3
            i32.eqz
            br_if 0 (;@4;)
          end
          i32.const 0
          local.get 1
          i64.store offset=1050160
        end
        i32.const 1
        call $_RINvNtNtCsiuDZNDVGlkl_3std3sys9backtrace28___rust_begin_short_backtraceFEuuECshnbvUaKcrCY_26casperguard_build_contract
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              i32.const 0
              i32.load8_u offset=1050176
              local.tee 3
              i32.const 3
              i32.eq
              br_if 0 (;@5;)
              block  ;; label = @6
                local.get 3
                br_table 0 (;@6;) 3 (;@3;) 2 (;@4;) 0 (;@6;)
              end
              i32.const 0
              i32.const 2
              i32.store8 offset=1050176
              block  ;; label = @6
                block  ;; label = @7
                  i32.const 0
                  i32.load8_u offset=1049696
                  br_if 0 (;@7;)
                  i32.const 0
                  i64.const 0
                  i64.store offset=1049672
                  i32.const 0
                  i32.const 1
                  i32.store8 offset=1049696
                  i32.const 0
                  i32.const 0
                  i32.store offset=1049680
                  i32.const 0
                  i32.const 0
                  i32.store8 offset=1049684
                  i32.const 0
                  i32.const 0
                  i32.store8 offset=1049688
                  br 1 (;@6;)
                end
                block  ;; label = @7
                  i32.const 0
                  i64.load offset=1050160
                  local.tee 1
                  i64.const 0
                  i64.ne
                  br_if 0 (;@7;)
                  i32.const 0
                  i64.load offset=1050168
                  local.set 0
                  loop  ;; label = @8
                    local.get 0
                    i64.const -1
                    i64.eq
                    br_if 6 (;@2;)
                    i32.const 0
                    local.get 0
                    i64.const 1
                    i64.add
                    local.tee 1
                    i32.const 0
                    i64.load offset=1050168
                    local.tee 2
                    local.get 2
                    local.get 0
                    i64.eq
                    local.tee 3
                    select
                    i64.store offset=1050168
                    local.get 2
                    local.set 0
                    local.get 3
                    i32.eqz
                    br_if 0 (;@8;)
                  end
                  i32.const 0
                  local.get 1
                  i64.store offset=1050160
                end
                block  ;; label = @7
                  block  ;; label = @8
                    local.get 1
                    i32.const 0
                    i64.load offset=1049672
                    i64.eq
                    br_if 0 (;@8;)
                    i32.const 0
                    i32.load8_u offset=1049684
                    local.set 4
                    i32.const 1
                    local.set 3
                    i32.const 0
                    i32.const 1
                    i32.store8 offset=1049684
                    local.get 4
                    br_if 2 (;@6;)
                    i32.const 0
                    local.get 1
                    i64.store offset=1049672
                    br 1 (;@7;)
                  end
                  i32.const 0
                  i32.load offset=1049680
                  local.tee 3
                  i32.const -1
                  i32.eq
                  br_if 1 (;@6;)
                  local.get 3
                  i32.const 1
                  i32.add
                  local.set 3
                end
                i32.const 0
                local.get 3
                i32.store offset=1049680
                i32.const 0
                i32.load8_u offset=1049688
                br_if 5 (;@1;)
                i32.const 0
                local.get 3
                i32.const -1
                i32.add
                local.tee 3
                i32.store offset=1049680
                i32.const 0
                i32.const 0
                i32.store8 offset=1049688
                local.get 3
                br_if 0 (;@6;)
                i32.const 0
                i64.const 0
                i64.store offset=1049672
                i32.const 0
                i32.const 0
                i32.store8 offset=1049684
              end
              i32.const 0
              i32.const 3
              i32.store8 offset=1050176
            end
            i32.const 0
            return
          end
          i32.const 1049118
          i32.const 113
          i32.const 1049460
          call $_RNvNtCs6EU1PHFTFol_4core9panicking9panic_fmt
          unreachable
        end
        i32.const 1049076
        i32.const 85
        i32.const 1049460
        call $_RNvNtCs6EU1PHFTFol_4core9panicking9panic_fmt
        unreachable
      end
      call $_RNvNvMNtNtCsiuDZNDVGlkl_3std6thread2idNtB4_8ThreadId3new9exhausted
      unreachable
    end
    call $_RNvNtCs6EU1PHFTFol_4core4cell22panic_already_borrowed
    unreachable)
  (func $_RNvNtCs6EU1PHFTFol_4core9panicking9panic_fmt (type 6) (param i32 i32 i32)
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
  (func $_RNvNvMNtNtCsiuDZNDVGlkl_3std6thread2idNtB4_8ThreadId3new9exhausted (type 0)
    i32.const 1049492
    i32.const 111
    i32.const 1049548
    call $_RNvNtCs6EU1PHFTFol_4core9panicking9panic_fmt
    unreachable)
  (func $_RNvNtCs6EU1PHFTFol_4core4cell22panic_already_borrowed (type 0)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    local.get 0
    i32.const 2
    i64.extend_i32_u
    i64.const 32
    i64.shl
    local.get 0
    i32.const 15
    i32.add
    i64.extend_i32_u
    i64.or
    i64.store
    i32.const 1048576
    local.get 0
    i32.const 1049476
    call $_RNvNtCs6EU1PHFTFol_4core9panicking9panic_fmt
    unreachable)
  (func $_RNvCsit533lh8FIi_7___rustc14___rust_dealloc (type 3) (param i32 i32)
    (local i32 i32)
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        i32.const -4
        i32.add
        i32.load
        local.tee 2
        i32.const -8
        i32.and
        local.tee 3
        i32.const 4
        i32.const 8
        local.get 2
        i32.const 3
        i32.and
        local.tee 2
        select
        local.get 1
        i32.add
        i32.lt_u
        br_if 0 (;@2;)
        block  ;; label = @3
          local.get 2
          i32.eqz
          br_if 0 (;@3;)
          local.get 3
          local.get 1
          i32.const 39
          i32.add
          i32.gt_u
          br_if 2 (;@1;)
        end
        local.get 0
        call $_RNvMs0_NtCs4Cv9UrsK3vC_8dlmalloc8dlmallocINtB5_8DlmallocNtNtB7_3sys6SystemE4freeCsiuDZNDVGlkl_3std
        return
      end
      i32.const 1049288
      i32.const 46
      i32.const 1049336
      call $_RNvNtCs6EU1PHFTFol_4core9panicking5panic
      unreachable
    end
    i32.const 1049352
    i32.const 46
    i32.const 1049400
    call $_RNvNtCs6EU1PHFTFol_4core9panicking5panic
    unreachable)
  (func $_RNvMs0_NtCs4Cv9UrsK3vC_8dlmalloc8dlmallocINtB5_8DlmallocNtNtB7_3sys6SystemE4freeCsiuDZNDVGlkl_3std (type 4) (param i32)
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
        local.get 2
        i32.const 1
        i32.and
        br_if 0 (;@2;)
        local.get 2
        i32.const 2
        i32.and
        i32.eqz
        br_if 1 (;@1;)
        local.get 1
        i32.load
        local.tee 2
        local.get 0
        i32.add
        local.set 0
        block  ;; label = @3
          local.get 1
          local.get 2
          i32.sub
          local.tee 1
          i32.const 0
          i32.load offset=1050128
          i32.ne
          br_if 0 (;@3;)
          local.get 3
          i32.load offset=4
          i32.const 3
          i32.and
          i32.const 3
          i32.ne
          br_if 1 (;@2;)
          i32.const 0
          local.get 0
          i32.store offset=1050120
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
        local.get 2
        call $_RNvMs0_NtCs4Cv9UrsK3vC_8dlmalloc8dlmallocINtB5_8DlmallocNtNtB7_3sys6SystemE12unlink_chunkCsiuDZNDVGlkl_3std
      end
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      local.get 3
                      i32.load offset=4
                      local.tee 2
                      i32.const 2
                      i32.and
                      br_if 0 (;@9;)
                      local.get 3
                      i32.const 0
                      i32.load offset=1050132
                      i32.eq
                      br_if 2 (;@7;)
                      local.get 3
                      i32.const 0
                      i32.load offset=1050128
                      i32.eq
                      br_if 3 (;@6;)
                      local.get 3
                      local.get 2
                      i32.const -8
                      i32.and
                      local.tee 2
                      call $_RNvMs0_NtCs4Cv9UrsK3vC_8dlmalloc8dlmallocINtB5_8DlmallocNtNtB7_3sys6SystemE12unlink_chunkCsiuDZNDVGlkl_3std
                      local.get 1
                      local.get 2
                      local.get 0
                      i32.add
                      local.tee 0
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
                      i32.load offset=1050128
                      i32.ne
                      br_if 1 (;@8;)
                      i32.const 0
                      local.get 0
                      i32.store offset=1050120
                      return
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
                  br_if 4 (;@3;)
                  local.get 1
                  local.get 0
                  call $_RNvMs0_NtCs4Cv9UrsK3vC_8dlmalloc8dlmallocINtB5_8DlmallocNtNtB7_3sys6SystemE18insert_large_chunkCsiuDZNDVGlkl_3std
                  i32.const 0
                  i32.const 0
                  i32.load offset=1050152
                  i32.const -1
                  i32.add
                  local.tee 1
                  i32.store offset=1050152
                  local.get 1
                  br_if 6 (;@1;)
                  i32.const 0
                  i32.load offset=1049840
                  local.tee 0
                  br_if 2 (;@5;)
                  i32.const 4095
                  local.set 1
                  br 3 (;@4;)
                end
                i32.const 0
                local.get 1
                i32.store offset=1050132
                i32.const 0
                i32.const 0
                i32.load offset=1050124
                local.get 0
                i32.add
                local.tee 0
                i32.store offset=1050124
                local.get 1
                local.get 0
                i32.const 1
                i32.or
                i32.store offset=4
                block  ;; label = @7
                  local.get 1
                  i32.const 0
                  i32.load offset=1050128
                  i32.ne
                  br_if 0 (;@7;)
                  i32.const 0
                  i32.const 0
                  i32.store offset=1050120
                  i32.const 0
                  i32.const 0
                  i32.store offset=1050128
                end
                local.get 0
                i32.const 0
                i32.load offset=1050144
                local.tee 2
                i32.le_u
                br_if 5 (;@1;)
                i32.const 0
                i32.load offset=1050132
                local.tee 0
                i32.eqz
                br_if 5 (;@1;)
                i32.const 0
                i32.load offset=1050124
                local.tee 4
                i32.const 41
                i32.lt_u
                br_if 4 (;@2;)
                i32.const 1049832
                local.set 1
                loop  ;; label = @7
                  block  ;; label = @8
                    local.get 1
                    i32.load
                    local.tee 3
                    local.get 0
                    i32.gt_u
                    br_if 0 (;@8;)
                    local.get 0
                    local.get 3
                    local.get 1
                    i32.load offset=4
                    i32.add
                    i32.lt_u
                    br_if 6 (;@2;)
                  end
                  local.get 1
                  i32.load offset=8
                  local.set 1
                  br 0 (;@7;)
                end
              end
              i32.const 0
              local.get 1
              i32.store offset=1050128
              i32.const 0
              i32.const 0
              i32.load offset=1050120
              local.get 0
              i32.add
              local.tee 0
              i32.store offset=1050120
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
            i32.const 0
            local.set 1
            loop  ;; label = @5
              local.get 1
              i32.const 1
              i32.add
              local.set 1
              local.get 0
              i32.load offset=8
              local.tee 0
              br_if 0 (;@5;)
            end
            local.get 1
            i32.const 4095
            local.get 1
            i32.const 4095
            i32.gt_u
            select
            local.set 1
          end
          i32.const 0
          local.get 1
          i32.store offset=1050152
          return
        end
        block  ;; label = @3
          block  ;; label = @4
            i32.const 0
            i32.load offset=1050112
            local.tee 3
            i32.const 1
            local.get 0
            i32.const 3
            i32.shr_u
            i32.shl
            local.tee 2
            i32.and
            br_if 0 (;@4;)
            i32.const 0
            local.get 3
            local.get 2
            i32.or
            i32.store offset=1050112
            local.get 0
            i32.const 248
            i32.and
            i32.const 1049848
            i32.add
            local.tee 0
            local.set 3
            br 1 (;@3;)
          end
          local.get 0
          i32.const 248
          i32.and
          local.tee 0
          i32.const 1049848
          i32.add
          local.set 3
          local.get 0
          i32.const 1049856
          i32.add
          i32.load
          local.set 0
        end
        local.get 3
        local.get 1
        i32.store offset=8
        local.get 0
        local.get 1
        i32.store offset=12
        local.get 1
        local.get 3
        i32.store offset=12
        local.get 1
        local.get 0
        i32.store offset=8
        return
      end
      block  ;; label = @2
        block  ;; label = @3
          i32.const 0
          i32.load offset=1049840
          local.tee 0
          br_if 0 (;@3;)
          i32.const 4095
          local.set 1
          br 1 (;@2;)
        end
        i32.const 0
        local.set 1
        loop  ;; label = @3
          local.get 1
          i32.const 1
          i32.add
          local.set 1
          local.get 0
          i32.load offset=8
          local.tee 0
          br_if 0 (;@3;)
        end
        local.get 1
        i32.const 4095
        local.get 1
        i32.const 4095
        i32.gt_u
        select
        local.set 1
      end
      i32.const 0
      local.get 1
      i32.store offset=1050152
      local.get 4
      local.get 2
      i32.le_u
      br_if 0 (;@1;)
      i32.const 0
      i32.const -1
      i32.store offset=1050144
    end)
  (func $_RNvNtCs6EU1PHFTFol_4core9panicking5panic (type 6) (param i32 i32 i32)
    local.get 0
    local.get 1
    i32.const 1
    i32.shl
    i32.const 1
    i32.or
    local.get 2
    call $_RNvNtCs6EU1PHFTFol_4core9panicking9panic_fmt
    unreachable)
  (func $_RNvNtCs8YPOlzcMnTl_5alloc7raw_vec12handle_error (type 3) (param i32 i32)
    block  ;; label = @1
      local.get 0
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      local.get 1
      call $_RNvNtCs8YPOlzcMnTl_5alloc5alloc18handle_alloc_error
      unreachable
    end
    call $_RNvNtCs8YPOlzcMnTl_5alloc7raw_vec17capacity_overflow
    unreachable)
  (func $_RNvNtCs8YPOlzcMnTl_5alloc5alloc18handle_alloc_error (type 3) (param i32 i32)
    local.get 1
    local.get 0
    call $_RNvCsit533lh8FIi_7___rustc26___rust_alloc_error_handler
    unreachable)
  (func $_RNvNtCs8YPOlzcMnTl_5alloc7raw_vec17capacity_overflow (type 0)
    i32.const 1049019
    i32.const 35
    i32.const 1049036
    call $_RNvNtCs6EU1PHFTFol_4core9panicking9panic_fmt
    unreachable)
  (func $_RNvCsit533lh8FIi_7___rustc26___rust_alloc_error_handler (type 3) (param i32 i32)
    local.get 1
    local.get 0
    call $_RNvNtCsiuDZNDVGlkl_3std5alloc8rust_oom
    unreachable)
  (func $_RNvXs1i_NtCs6EU1PHFTFol_4core3fmtReNtB6_7Display3fmtB8_ (type 1) (param i32 i32) (result i32)
    local.get 1
    local.get 0
    i32.load
    local.get 0
    i32.load offset=4
    call $_RNvMsa_NtCs6EU1PHFTFol_4core3fmtNtB5_9Formatter3pad)
  (func $_RNvMsa_NtCs6EU1PHFTFol_4core3fmtNtB5_9Formatter3pad (type 2) (param i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        i32.load offset=8
        local.tee 3
        i32.const 402653184
        i32.and
        i32.eqz
        br_if 0 (;@2;)
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  local.get 3
                  i32.const 268435456
                  i32.and
                  i32.eqz
                  br_if 0 (;@7;)
                  local.get 0
                  i32.load16_u offset=14
                  local.tee 4
                  br_if 1 (;@6;)
                  i32.const 0
                  local.set 2
                  br 2 (;@5;)
                end
                block  ;; label = @7
                  local.get 2
                  i32.const 16
                  i32.lt_u
                  br_if 0 (;@7;)
                  local.get 2
                  local.get 1
                  local.get 1
                  i32.const 3
                  i32.add
                  i32.const -4
                  i32.and
                  local.tee 5
                  i32.sub
                  local.tee 6
                  i32.add
                  local.tee 7
                  i32.const 3
                  i32.and
                  local.set 8
                  i32.const 0
                  local.set 9
                  i32.const 0
                  local.set 4
                  block  ;; label = @8
                    local.get 1
                    local.get 5
                    i32.eq
                    br_if 0 (;@8;)
                    i32.const 0
                    local.set 4
                    local.get 1
                    local.set 10
                    loop  ;; label = @9
                      local.get 4
                      local.get 10
                      i32.load8_s
                      i32.const -65
                      i32.gt_s
                      i32.add
                      local.set 4
                      local.get 10
                      i32.const 1
                      i32.add
                      local.set 10
                      local.get 6
                      i32.const 1
                      i32.add
                      local.tee 6
                      br_if 0 (;@9;)
                    end
                  end
                  block  ;; label = @8
                    local.get 8
                    i32.eqz
                    br_if 0 (;@8;)
                    local.get 5
                    local.get 7
                    i32.const 2147483644
                    i32.and
                    i32.add
                    local.set 10
                    i32.const 0
                    local.set 9
                    loop  ;; label = @9
                      local.get 9
                      local.get 10
                      i32.load8_s
                      i32.const -65
                      i32.gt_s
                      i32.add
                      local.set 9
                      local.get 10
                      i32.const 1
                      i32.add
                      local.set 10
                      local.get 8
                      i32.const -1
                      i32.add
                      local.tee 8
                      br_if 0 (;@9;)
                    end
                  end
                  local.get 7
                  i32.const 2
                  i32.shr_u
                  local.set 6
                  local.get 9
                  local.get 4
                  i32.add
                  local.set 4
                  loop  ;; label = @8
                    local.get 5
                    local.set 7
                    local.get 6
                    i32.eqz
                    br_if 5 (;@3;)
                    local.get 6
                    i32.const 192
                    local.get 6
                    i32.const 192
                    i32.lt_u
                    select
                    local.tee 11
                    i32.const 3
                    i32.and
                    local.set 12
                    block  ;; label = @9
                      block  ;; label = @10
                        local.get 11
                        i32.const 2
                        i32.shl
                        local.tee 13
                        i32.const 1008
                        i32.and
                        local.tee 10
                        br_if 0 (;@10;)
                        i32.const 0
                        local.set 9
                        br 1 (;@9;)
                      end
                      local.get 7
                      local.get 10
                      i32.add
                      local.set 5
                      i32.const 0
                      local.set 9
                      local.get 7
                      local.set 10
                      loop  ;; label = @10
                        local.get 10
                        i32.const 12
                        i32.add
                        i32.load
                        local.tee 8
                        i32.const -1
                        i32.xor
                        i32.const 7
                        i32.shr_u
                        local.get 8
                        i32.const 6
                        i32.shr_u
                        i32.or
                        i32.const 16843009
                        i32.and
                        local.get 10
                        i32.const 8
                        i32.add
                        i32.load
                        local.tee 8
                        i32.const -1
                        i32.xor
                        i32.const 7
                        i32.shr_u
                        local.get 8
                        i32.const 6
                        i32.shr_u
                        i32.or
                        i32.const 16843009
                        i32.and
                        local.get 10
                        i32.const 4
                        i32.add
                        i32.load
                        local.tee 8
                        i32.const -1
                        i32.xor
                        i32.const 7
                        i32.shr_u
                        local.get 8
                        i32.const 6
                        i32.shr_u
                        i32.or
                        i32.const 16843009
                        i32.and
                        local.get 10
                        i32.load
                        local.tee 8
                        i32.const -1
                        i32.xor
                        i32.const 7
                        i32.shr_u
                        local.get 8
                        i32.const 6
                        i32.shr_u
                        i32.or
                        i32.const 16843009
                        i32.and
                        local.get 9
                        i32.add
                        i32.add
                        i32.add
                        i32.add
                        local.set 9
                        local.get 10
                        i32.const 16
                        i32.add
                        local.tee 10
                        local.get 5
                        i32.ne
                        br_if 0 (;@10;)
                      end
                    end
                    local.get 6
                    local.get 11
                    i32.sub
                    local.set 6
                    local.get 7
                    local.get 13
                    i32.add
                    local.set 5
                    local.get 9
                    i32.const 8
                    i32.shr_u
                    i32.const 16711935
                    i32.and
                    local.get 9
                    i32.const 16711935
                    i32.and
                    i32.add
                    i32.const 65537
                    i32.mul
                    i32.const 16
                    i32.shr_u
                    local.get 4
                    i32.add
                    local.set 4
                    local.get 12
                    i32.eqz
                    br_if 0 (;@8;)
                  end
                  local.get 12
                  i32.const 2
                  i32.shl
                  local.set 8
                  local.get 7
                  local.get 11
                  i32.const 252
                  i32.and
                  i32.const 2
                  i32.shl
                  i32.add
                  local.set 10
                  i32.const 0
                  local.set 9
                  loop  ;; label = @8
                    local.get 10
                    i32.load
                    local.tee 5
                    i32.const -1
                    i32.xor
                    i32.const 7
                    i32.shr_u
                    local.get 5
                    i32.const 6
                    i32.shr_u
                    i32.or
                    i32.const 16843009
                    i32.and
                    local.get 9
                    i32.add
                    local.set 9
                    local.get 10
                    i32.const 4
                    i32.add
                    local.set 10
                    local.get 8
                    i32.const -4
                    i32.add
                    local.tee 8
                    br_if 0 (;@8;)
                  end
                  local.get 9
                  i32.const 8
                  i32.shr_u
                  i32.const 16711935
                  i32.and
                  local.get 9
                  i32.const 16711935
                  i32.and
                  i32.add
                  i32.const 65537
                  i32.mul
                  i32.const 16
                  i32.shr_u
                  local.get 4
                  i32.add
                  local.set 4
                  br 4 (;@3;)
                end
                i32.const 0
                local.set 4
                local.get 2
                i32.eqz
                br_if 3 (;@3;)
                local.get 1
                local.set 10
                local.get 2
                local.set 9
                loop  ;; label = @7
                  local.get 4
                  local.get 10
                  i32.load8_s
                  i32.const -65
                  i32.gt_s
                  i32.add
                  local.set 4
                  local.get 10
                  i32.const 1
                  i32.add
                  local.set 10
                  local.get 9
                  i32.const -1
                  i32.add
                  local.tee 9
                  br_if 0 (;@7;)
                  br 4 (;@3;)
                end
              end
              local.get 1
              local.get 2
              i32.add
              local.set 5
              i32.const 0
              local.set 2
              local.get 1
              local.set 9
              local.get 4
              local.set 8
              loop  ;; label = @6
                local.get 9
                local.tee 10
                local.get 5
                i32.eq
                br_if 2 (;@4;)
                block  ;; label = @7
                  block  ;; label = @8
                    local.get 10
                    i32.load8_s
                    local.tee 9
                    i32.const -1
                    i32.le_s
                    br_if 0 (;@8;)
                    local.get 10
                    i32.const 1
                    i32.add
                    local.set 9
                    br 1 (;@7;)
                  end
                  block  ;; label = @8
                    local.get 9
                    i32.const -32
                    i32.ge_u
                    br_if 0 (;@8;)
                    local.get 10
                    i32.const 2
                    i32.add
                    local.set 9
                    br 1 (;@7;)
                  end
                  local.get 10
                  i32.const 4
                  i32.const 3
                  local.get 9
                  i32.const -17
                  i32.gt_u
                  select
                  i32.add
                  local.set 9
                end
                local.get 9
                local.get 10
                i32.sub
                local.get 2
                i32.add
                local.set 2
                local.get 8
                i32.const -1
                i32.add
                local.tee 8
                br_if 0 (;@6;)
              end
            end
            i32.const 0
            local.set 8
          end
          local.get 4
          local.get 8
          i32.sub
          local.set 4
        end
        local.get 4
        local.get 0
        i32.load16_u offset=12
        local.tee 10
        i32.ge_u
        br_if 0 (;@2;)
        local.get 10
        local.get 4
        i32.sub
        local.set 7
        i32.const 0
        local.set 10
        i32.const 0
        local.set 6
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              local.get 3
              i32.const 29
              i32.shr_u
              i32.const 3
              i32.and
              br_table 2 (;@3;) 0 (;@5;) 1 (;@4;) 2 (;@3;) 2 (;@3;)
            end
            local.get 7
            local.set 6
            br 1 (;@3;)
          end
          local.get 7
          i32.const 65534
          i32.and
          i32.const 1
          i32.shr_u
          local.set 6
        end
        local.get 3
        i32.const 2097151
        i32.and
        local.set 4
        local.get 0
        i32.load offset=4
        local.set 8
        local.get 0
        i32.load
        local.set 5
        block  ;; label = @3
          loop  ;; label = @4
            local.get 10
            i32.const 65535
            i32.and
            local.get 6
            i32.const 65535
            i32.and
            i32.ge_u
            br_if 1 (;@3;)
            i32.const 1
            local.set 9
            local.get 10
            i32.const 1
            i32.add
            local.set 10
            local.get 5
            local.get 4
            local.get 8
            i32.load offset=16
            call_indirect (type 1)
            br_if 3 (;@1;)
            br 0 (;@4;)
          end
        end
        i32.const 1
        local.set 9
        local.get 5
        local.get 1
        local.get 2
        local.get 8
        i32.load offset=12
        call_indirect (type 2)
        br_if 1 (;@1;)
        local.get 7
        local.get 6
        i32.sub
        i32.const 65535
        i32.and
        local.set 6
        i32.const 0
        local.set 10
        loop  ;; label = @3
          block  ;; label = @4
            local.get 10
            i32.const 65535
            i32.and
            local.get 6
            i32.lt_u
            br_if 0 (;@4;)
            i32.const 0
            return
          end
          i32.const 1
          local.set 9
          local.get 10
          i32.const 1
          i32.add
          local.set 10
          local.get 5
          local.get 4
          local.get 8
          i32.load offset=16
          call_indirect (type 1)
          br_if 2 (;@1;)
          br 0 (;@3;)
        end
      end
      local.get 0
      i32.load
      local.get 1
      local.get 2
      local.get 0
      i32.load offset=4
      i32.load offset=12
      call_indirect (type 2)
      local.set 9
    end
    local.get 9)
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
    call $_RINvNtNtCsiuDZNDVGlkl_3std3sys9backtrace26___rust_end_short_backtraceNCNvNtB6_9panicking13panic_handler0zEB6_
    unreachable)
  (func $_RNvNtCs6EU1PHFTFol_4core3fmt5write (type 7) (param i32 i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 4
    global.set $__stack_pointer
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 3
          i32.const 1
          i32.and
          br_if 0 (;@3;)
          local.get 2
          i32.load8_u
          local.tee 5
          br_if 1 (;@2;)
          i32.const 0
          local.set 5
          br 2 (;@1;)
        end
        local.get 0
        local.get 2
        local.get 3
        i32.const 1
        i32.shr_u
        local.get 1
        i32.load offset=12
        call_indirect (type 2)
        local.set 5
        br 1 (;@1;)
      end
      local.get 1
      i32.load offset=12
      local.set 6
      i32.const 0
      local.set 7
      loop  ;; label = @2
        local.get 2
        i32.const 1
        i32.add
        local.set 8
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  local.get 5
                  i32.extend8_s
                  i32.const -1
                  i32.gt_s
                  br_if 0 (;@7;)
                  local.get 5
                  i32.const 255
                  i32.and
                  local.tee 9
                  i32.const 128
                  i32.eq
                  br_if 1 (;@6;)
                  local.get 9
                  i32.const 192
                  i32.ne
                  br_if 3 (;@4;)
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
                  local.tee 5
                  i32.load
                  local.get 4
                  local.get 5
                  i32.load offset=4
                  call_indirect (type 1)
                  i32.eqz
                  br_if 2 (;@5;)
                  i32.const 1
                  local.set 5
                  br 6 (;@1;)
                end
                block  ;; label = @7
                  local.get 0
                  local.get 8
                  local.get 5
                  i32.const 255
                  i32.and
                  local.tee 5
                  local.get 6
                  call_indirect (type 2)
                  br_if 0 (;@7;)
                  local.get 8
                  local.get 5
                  i32.add
                  local.set 2
                  br 4 (;@3;)
                end
                i32.const 1
                local.set 5
                br 5 (;@1;)
              end
              block  ;; label = @6
                local.get 0
                local.get 2
                i32.const 3
                i32.add
                local.tee 5
                local.get 2
                i32.load16_u offset=1 align=1
                local.tee 2
                local.get 6
                call_indirect (type 2)
                br_if 0 (;@6;)
                local.get 5
                local.get 2
                i32.add
                local.set 2
                br 3 (;@3;)
              end
              i32.const 1
              local.set 5
              br 4 (;@1;)
            end
            local.get 7
            i32.const 1
            i32.add
            local.set 7
            local.get 8
            local.set 2
            br 1 (;@3;)
          end
          i32.const 1610612768
          local.set 10
          block  ;; label = @4
            local.get 5
            i32.const 1
            i32.and
            i32.eqz
            br_if 0 (;@4;)
            local.get 2
            i32.const 5
            i32.add
            local.set 8
            local.get 2
            i32.load offset=1 align=1
            local.set 10
          end
          i32.const 0
          local.set 9
          block  ;; label = @4
            block  ;; label = @5
              local.get 5
              i32.const 2
              i32.and
              br_if 0 (;@5;)
              i32.const 0
              local.set 11
              local.get 8
              local.set 2
              br 1 (;@4;)
            end
            local.get 8
            i32.const 2
            i32.add
            local.set 2
            local.get 8
            i32.load16_u align=1
            local.set 11
          end
          block  ;; label = @4
            block  ;; label = @5
              local.get 5
              i32.const 4
              i32.and
              br_if 0 (;@5;)
              local.get 2
              local.set 8
              br 1 (;@4;)
            end
            local.get 2
            i32.const 2
            i32.add
            local.set 8
            local.get 2
            i32.load16_u align=1
            local.set 9
          end
          block  ;; label = @4
            block  ;; label = @5
              local.get 5
              i32.const 8
              i32.and
              br_if 0 (;@5;)
              local.get 8
              local.set 2
              br 1 (;@4;)
            end
            local.get 8
            i32.const 2
            i32.add
            local.set 2
            local.get 8
            i32.load16_u align=1
            local.set 7
          end
          block  ;; label = @4
            local.get 5
            i32.const 16
            i32.and
            i32.eqz
            br_if 0 (;@4;)
            local.get 3
            local.get 11
            i32.const 65535
            i32.and
            i32.const 3
            i32.shl
            i32.add
            i32.load16_u offset=4
            local.set 11
          end
          block  ;; label = @4
            local.get 5
            i32.const 32
            i32.and
            i32.eqz
            br_if 0 (;@4;)
            local.get 3
            local.get 9
            i32.const 65535
            i32.and
            i32.const 3
            i32.shl
            i32.add
            i32.load16_u offset=4
            local.set 9
          end
          local.get 4
          local.get 9
          i32.store16 offset=14
          local.get 4
          local.get 11
          i32.store16 offset=12
          local.get 4
          local.get 10
          i32.store offset=8
          local.get 4
          local.get 1
          i32.store offset=4
          local.get 4
          local.get 0
          i32.store
          block  ;; label = @4
            local.get 3
            local.get 7
            i32.const 3
            i32.shl
            i32.add
            local.tee 5
            i32.load
            local.get 4
            local.get 5
            i32.load offset=4
            call_indirect (type 1)
            i32.eqz
            br_if 0 (;@4;)
            i32.const 1
            local.set 5
            br 3 (;@1;)
          end
          local.get 7
          i32.const 1
          i32.add
          local.set 7
        end
        local.get 2
        i32.load8_u
        local.tee 5
        br_if 0 (;@2;)
      end
      i32.const 0
      local.set 5
    end
    local.get 4
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 5)
  (func $_RNvXsr_NtCs6EU1PHFTFol_4core4cellNtB5_14BorrowMutErrorNtNtB7_3fmt7Display3fmt (type 1) (param i32 i32) (result i32)
    local.get 1
    i32.const 1049052
    i32.const 24
    call $_RNvMsa_NtCs6EU1PHFTFol_4core3fmtNtB5_9Formatter3pad)
  (func $_RNvNtCs6EU1PHFTFol_4core6option13expect_failed (type 0)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    local.get 0
    i32.const 28
    i32.store offset=4
    local.get 0
    i32.const 1049416
    i32.store
    local.get 0
    i32.const 3
    i64.extend_i32_u
    i64.const 32
    i64.shl
    local.get 0
    i64.extend_i32_u
    i64.or
    i64.store offset=8
    i32.const 1048576
    local.get 0
    i32.const 8
    i32.add
    i32.const 1049444
    call $_RNvNtCs6EU1PHFTFol_4core9panicking9panic_fmt
    unreachable)
  (func $_RNvNtCsiuDZNDVGlkl_3std9panicking15panic_with_hook (type 8) (param i32 i32 i32 i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 4
    global.set $__stack_pointer
    i32.const 0
    i32.const 0
    i32.load offset=1049700
    local.tee 5
    i32.const 1
    i32.add
    i32.store offset=1049700
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 5
          i32.const 0
          i32.lt_s
          br_if 0 (;@3;)
          block  ;; label = @4
            block  ;; label = @5
              i32.const 0
              i32.load8_u offset=1049664
              br_if 0 (;@5;)
              i32.const 0
              i32.const 1
              i32.store8 offset=1049664
              i32.const 0
              i32.const 0
              i32.load offset=1049660
              i32.const 1
              i32.add
              i32.store offset=1049660
              i32.const 0
              i32.load offset=1049668
              local.tee 5
              i32.const -1
              i32.le_s
              br_if 2 (;@3;)
              local.get 5
              i32.const 1
              i32.add
              local.tee 1
              local.get 5
              i32.ge_s
              br_if 1 (;@4;)
              call $_RNvNtCs6EU1PHFTFol_4core6option13expect_failed
              unreachable
            end
            local.get 4
            i32.const 8
            i32.add
            local.get 0
            local.get 1
            i32.load offset=24
            call_indirect (type 3)
            unreachable
          end
          i32.const 0
          local.get 1
          i32.const -1
          i32.add
          i32.store offset=1049668
          local.get 1
          i32.const 0
          i32.le_s
          br_if 1 (;@2;)
          i32.const 0
          i32.const 0
          i32.store8 offset=1049664
          local.get 2
          br_if 2 (;@1;)
        end
        unreachable
      end
      i32.const 1049596
      i32.const 77
      i32.const 1049636
      call $_RNvNtCs6EU1PHFTFol_4core9panicking9panic_fmt
      unreachable
    end
    call $_RNvCsit533lh8FIi_7___rustc10rust_panic
    unreachable)
  (func $_RNvCsit533lh8FIi_7___rustc10rust_panic (type 0)
    unreachable)
  (func $_RNvMs0_NtCs4Cv9UrsK3vC_8dlmalloc8dlmallocINtB5_8DlmallocNtNtB7_3sys6SystemE6mallocCsiuDZNDVGlkl_3std (type 9) (param i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i64)
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 0
          i32.const 244
          i32.gt_u
          br_if 0 (;@3;)
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  i32.const 0
                  i32.load offset=1050112
                  local.tee 1
                  i32.const 16
                  local.get 0
                  i32.const 11
                  i32.add
                  i32.const 504
                  i32.and
                  local.get 0
                  i32.const 11
                  i32.lt_u
                  select
                  local.tee 2
                  i32.const 3
                  i32.shr_u
                  local.tee 3
                  i32.shr_u
                  local.tee 0
                  i32.const 3
                  i32.and
                  br_if 0 (;@7;)
                  local.get 2
                  i32.const 0
                  i32.load offset=1050120
                  i32.le_u
                  br_if 5 (;@2;)
                  local.get 0
                  br_if 1 (;@6;)
                  i32.const 0
                  i32.load offset=1050116
                  local.tee 0
                  i32.eqz
                  br_if 5 (;@2;)
                  local.get 0
                  i32.ctz
                  i32.const 2
                  i32.shl
                  i32.const 1049704
                  i32.add
                  i32.load
                  local.tee 4
                  i32.load offset=4
                  i32.const -8
                  i32.and
                  local.get 2
                  i32.sub
                  local.set 3
                  local.get 4
                  local.set 1
                  loop  ;; label = @8
                    block  ;; label = @9
                      local.get 4
                      i32.load offset=16
                      local.tee 0
                      br_if 0 (;@9;)
                      local.get 4
                      i32.load offset=20
                      local.tee 0
                      br_if 0 (;@9;)
                      local.get 1
                      i32.load offset=24
                      local.set 5
                      block  ;; label = @10
                        block  ;; label = @11
                          block  ;; label = @12
                            local.get 1
                            i32.load offset=12
                            local.tee 0
                            local.get 1
                            i32.ne
                            br_if 0 (;@12;)
                            local.get 1
                            i32.const 20
                            i32.const 16
                            local.get 1
                            i32.load offset=20
                            local.tee 0
                            select
                            i32.add
                            i32.load
                            local.tee 4
                            br_if 1 (;@11;)
                            i32.const 0
                            local.set 0
                            br 2 (;@10;)
                          end
                          local.get 1
                          i32.load offset=8
                          local.tee 4
                          local.get 0
                          i32.store offset=12
                          local.get 0
                          local.get 4
                          i32.store offset=8
                          br 1 (;@10;)
                        end
                        local.get 1
                        i32.const 20
                        i32.add
                        local.get 1
                        i32.const 16
                        i32.add
                        local.get 0
                        select
                        local.set 6
                        loop  ;; label = @11
                          local.get 6
                          local.set 7
                          local.get 4
                          local.tee 0
                          i32.const 20
                          i32.add
                          local.get 0
                          i32.const 16
                          i32.add
                          local.get 0
                          i32.load offset=20
                          local.tee 4
                          select
                          local.set 6
                          local.get 0
                          i32.const 20
                          i32.const 16
                          local.get 4
                          select
                          i32.add
                          i32.load
                          local.tee 4
                          br_if 0 (;@11;)
                        end
                        local.get 7
                        i32.const 0
                        i32.store
                      end
                      local.get 5
                      i32.eqz
                      br_if 5 (;@4;)
                      block  ;; label = @10
                        block  ;; label = @11
                          local.get 1
                          local.get 1
                          i32.load offset=28
                          i32.const 2
                          i32.shl
                          i32.const 1049704
                          i32.add
                          local.tee 4
                          i32.load
                          i32.eq
                          br_if 0 (;@11;)
                          block  ;; label = @12
                            local.get 5
                            i32.load offset=16
                            local.get 1
                            i32.eq
                            br_if 0 (;@12;)
                            local.get 5
                            local.get 0
                            i32.store offset=20
                            local.get 0
                            br_if 2 (;@10;)
                            br 8 (;@4;)
                          end
                          local.get 5
                          local.get 0
                          i32.store offset=16
                          local.get 0
                          br_if 1 (;@10;)
                          br 7 (;@4;)
                        end
                        local.get 4
                        local.get 0
                        i32.store
                        local.get 0
                        i32.eqz
                        br_if 5 (;@5;)
                      end
                      local.get 0
                      local.get 5
                      i32.store offset=24
                      block  ;; label = @10
                        local.get 1
                        i32.load offset=16
                        local.tee 4
                        i32.eqz
                        br_if 0 (;@10;)
                        local.get 0
                        local.get 4
                        i32.store offset=16
                        local.get 4
                        local.get 0
                        i32.store offset=24
                      end
                      local.get 1
                      i32.load offset=20
                      local.tee 4
                      i32.eqz
                      br_if 5 (;@4;)
                      local.get 0
                      local.get 4
                      i32.store offset=20
                      local.get 4
                      local.get 0
                      i32.store offset=24
                      br 5 (;@4;)
                    end
                    local.get 0
                    i32.load offset=4
                    i32.const -8
                    i32.and
                    local.get 2
                    i32.sub
                    local.tee 4
                    local.get 3
                    local.get 4
                    local.get 3
                    i32.lt_u
                    local.tee 4
                    select
                    local.set 3
                    local.get 0
                    local.get 1
                    local.get 4
                    select
                    local.set 1
                    local.get 0
                    local.set 4
                    br 0 (;@8;)
                  end
                end
                block  ;; label = @7
                  block  ;; label = @8
                    local.get 0
                    i32.const -1
                    i32.xor
                    i32.const 1
                    i32.and
                    local.get 3
                    i32.add
                    local.tee 6
                    i32.const 3
                    i32.shl
                    local.tee 0
                    i32.const 1049848
                    i32.add
                    local.tee 2
                    local.get 0
                    i32.const 1049856
                    i32.add
                    i32.load
                    local.tee 3
                    i32.load offset=8
                    local.tee 4
                    i32.eq
                    br_if 0 (;@8;)
                    local.get 4
                    local.get 2
                    i32.store offset=12
                    local.get 2
                    local.get 4
                    i32.store offset=8
                    br 1 (;@7;)
                  end
                  i32.const 0
                  local.get 1
                  i32.const -2
                  local.get 6
                  i32.rotl
                  i32.and
                  i32.store offset=1050112
                end
                local.get 3
                local.get 0
                i32.const 3
                i32.or
                i32.store offset=4
                local.get 3
                local.get 0
                i32.add
                local.tee 0
                local.get 0
                i32.load offset=4
                i32.const 1
                i32.or
                i32.store offset=4
                local.get 3
                i32.const 8
                i32.add
                return
              end
              block  ;; label = @6
                block  ;; label = @7
                  local.get 0
                  local.get 3
                  i32.shl
                  i32.const 2
                  local.get 3
                  i32.shl
                  local.tee 0
                  i32.const 0
                  local.get 0
                  i32.sub
                  i32.or
                  i32.and
                  i32.ctz
                  local.tee 7
                  i32.const 3
                  i32.shl
                  local.tee 3
                  i32.const 1049848
                  i32.add
                  local.tee 4
                  local.get 3
                  i32.const 1049856
                  i32.add
                  i32.load
                  local.tee 0
                  i32.load offset=8
                  local.tee 6
                  i32.eq
                  br_if 0 (;@7;)
                  local.get 6
                  local.get 4
                  i32.store offset=12
                  local.get 4
                  local.get 6
                  i32.store offset=8
                  br 1 (;@6;)
                end
                i32.const 0
                local.get 1
                i32.const -2
                local.get 7
                i32.rotl
                i32.and
                i32.store offset=1050112
              end
              local.get 0
              local.get 2
              i32.const 3
              i32.or
              i32.store offset=4
              local.get 0
              local.get 2
              i32.add
              local.tee 1
              local.get 3
              local.get 2
              i32.sub
              local.tee 2
              i32.const 1
              i32.or
              i32.store offset=4
              local.get 0
              local.get 3
              i32.add
              local.get 2
              i32.store
              block  ;; label = @6
                i32.const 0
                i32.load offset=1050120
                local.tee 4
                i32.eqz
                br_if 0 (;@6;)
                i32.const 0
                i32.load offset=1050128
                local.set 3
                block  ;; label = @7
                  block  ;; label = @8
                    i32.const 0
                    i32.load offset=1050112
                    local.tee 6
                    i32.const 1
                    local.get 4
                    i32.const 3
                    i32.shr_u
                    i32.shl
                    local.tee 7
                    i32.and
                    br_if 0 (;@8;)
                    i32.const 0
                    local.get 6
                    local.get 7
                    i32.or
                    i32.store offset=1050112
                    local.get 4
                    i32.const -8
                    i32.and
                    i32.const 1049848
                    i32.add
                    local.tee 4
                    local.set 6
                    br 1 (;@7;)
                  end
                  local.get 4
                  i32.const -8
                  i32.and
                  local.tee 4
                  i32.const 1049848
                  i32.add
                  local.set 6
                  local.get 4
                  i32.const 1049856
                  i32.add
                  i32.load
                  local.set 4
                end
                local.get 6
                local.get 3
                i32.store offset=8
                local.get 4
                local.get 3
                i32.store offset=12
                local.get 3
                local.get 6
                i32.store offset=12
                local.get 3
                local.get 4
                i32.store offset=8
              end
              i32.const 0
              local.get 1
              i32.store offset=1050128
              i32.const 0
              local.get 2
              i32.store offset=1050120
              local.get 0
              i32.const 8
              i32.add
              return
            end
            i32.const 0
            i32.const 0
            i32.load offset=1050116
            i32.const -2
            local.get 1
            i32.load offset=28
            i32.rotl
            i32.and
            i32.store offset=1050116
          end
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                local.get 3
                i32.const 16
                i32.lt_u
                br_if 0 (;@6;)
                local.get 1
                local.get 2
                i32.const 3
                i32.or
                i32.store offset=4
                local.get 1
                local.get 2
                i32.add
                local.tee 4
                local.get 3
                i32.const 1
                i32.or
                i32.store offset=4
                local.get 4
                local.get 3
                i32.add
                local.get 3
                i32.store
                i32.const 0
                i32.load offset=1050120
                local.tee 6
                i32.eqz
                br_if 1 (;@5;)
                i32.const 0
                i32.load offset=1050128
                local.set 0
                block  ;; label = @7
                  block  ;; label = @8
                    i32.const 0
                    i32.load offset=1050112
                    local.tee 7
                    i32.const 1
                    local.get 6
                    i32.const 3
                    i32.shr_u
                    i32.shl
                    local.tee 5
                    i32.and
                    br_if 0 (;@8;)
                    i32.const 0
                    local.get 7
                    local.get 5
                    i32.or
                    i32.store offset=1050112
                    local.get 6
                    i32.const -8
                    i32.and
                    i32.const 1049848
                    i32.add
                    local.tee 6
                    local.set 7
                    br 1 (;@7;)
                  end
                  local.get 6
                  i32.const -8
                  i32.and
                  local.tee 6
                  i32.const 1049848
                  i32.add
                  local.set 7
                  local.get 6
                  i32.const 1049856
                  i32.add
                  i32.load
                  local.set 6
                end
                local.get 7
                local.get 0
                i32.store offset=8
                local.get 6
                local.get 0
                i32.store offset=12
                local.get 0
                local.get 7
                i32.store offset=12
                local.get 0
                local.get 6
                i32.store offset=8
                br 1 (;@5;)
              end
              local.get 1
              local.get 3
              local.get 2
              i32.add
              local.tee 0
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
              br 1 (;@4;)
            end
            i32.const 0
            local.get 4
            i32.store offset=1050128
            i32.const 0
            local.get 3
            i32.store offset=1050120
          end
          local.get 1
          i32.const 8
          i32.add
          local.tee 0
          i32.eqz
          br_if 1 (;@2;)
          br 2 (;@1;)
        end
        local.get 0
        i32.const 11
        i32.add
        local.tee 3
        i32.const -8
        i32.and
        local.set 2
        i32.const 0
        i32.load offset=1050116
        local.tee 8
        i32.eqz
        br_if 0 (;@2;)
        i32.const 31
        local.set 5
        block  ;; label = @3
          local.get 0
          i32.const 16777205
          i32.ge_u
          br_if 0 (;@3;)
          local.get 2
          i32.const 38
          local.get 3
          i32.const 8
          i32.shr_u
          i32.clz
          local.tee 0
          i32.sub
          i32.shr_u
          i32.const 1
          i32.and
          local.get 0
          i32.const 1
          i32.shl
          i32.sub
          i32.const 62
          i32.add
          local.set 5
        end
        i32.const 0
        local.get 2
        i32.sub
        local.set 3
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                local.get 5
                i32.const 2
                i32.shl
                i32.const 1049704
                i32.add
                i32.load
                local.tee 1
                br_if 0 (;@6;)
                i32.const 0
                local.set 4
                i32.const 0
                local.set 0
                br 1 (;@5;)
              end
              i32.const 0
              local.set 4
              local.get 2
              i32.const 0
              i32.const 25
              local.get 5
              i32.const 1
              i32.shr_u
              i32.sub
              local.get 5
              i32.const 31
              i32.eq
              select
              i32.shl
              local.set 6
              i32.const 0
              local.set 0
              loop  ;; label = @6
                block  ;; label = @7
                  local.get 1
                  local.tee 1
                  i32.load offset=4
                  i32.const -8
                  i32.and
                  local.tee 7
                  local.get 2
                  i32.lt_u
                  br_if 0 (;@7;)
                  local.get 7
                  local.get 2
                  i32.sub
                  local.tee 7
                  local.get 3
                  i32.ge_u
                  br_if 0 (;@7;)
                  local.get 1
                  local.set 4
                  local.get 7
                  local.set 3
                  local.get 7
                  br_if 0 (;@7;)
                  i32.const 0
                  local.set 3
                  local.get 1
                  local.set 0
                  local.get 1
                  local.set 4
                  br 3 (;@4;)
                end
                local.get 1
                i32.load offset=20
                local.tee 7
                local.get 0
                local.get 7
                local.get 1
                local.get 6
                i32.const 29
                i32.shr_u
                i32.const 4
                i32.and
                i32.add
                i32.load offset=16
                local.tee 1
                i32.ne
                select
                local.get 0
                local.get 7
                select
                local.set 0
                local.get 6
                i32.const 1
                i32.shl
                local.set 6
                local.get 1
                br_if 0 (;@6;)
              end
            end
            block  ;; label = @5
              local.get 0
              local.get 4
              i32.or
              br_if 0 (;@5;)
              i32.const 0
              local.set 4
              i32.const 2
              local.get 5
              i32.shl
              local.tee 0
              i32.const 0
              local.get 0
              i32.sub
              i32.or
              local.get 8
              i32.and
              local.tee 0
              i32.eqz
              br_if 3 (;@2;)
              local.get 0
              i32.ctz
              i32.const 2
              i32.shl
              i32.const 1049704
              i32.add
              i32.load
              local.set 0
            end
            local.get 0
            i32.eqz
            br_if 1 (;@3;)
          end
          loop  ;; label = @4
            local.get 0
            i32.load offset=4
            i32.const -8
            i32.and
            local.tee 1
            local.get 2
            i32.sub
            local.tee 6
            local.get 3
            local.get 6
            local.get 3
            i32.lt_u
            local.tee 7
            select
            local.set 5
            local.get 1
            local.get 2
            i32.lt_u
            local.set 6
            local.get 0
            local.get 4
            local.get 7
            select
            local.set 7
            block  ;; label = @5
              local.get 0
              i32.load offset=16
              local.tee 1
              br_if 0 (;@5;)
              local.get 0
              i32.load offset=20
              local.set 1
            end
            local.get 3
            local.get 5
            local.get 6
            select
            local.set 3
            local.get 4
            local.get 7
            local.get 6
            select
            local.set 4
            local.get 1
            local.set 0
            local.get 1
            br_if 0 (;@4;)
          end
        end
        local.get 4
        i32.eqz
        br_if 0 (;@2;)
        block  ;; label = @3
          i32.const 0
          i32.load offset=1050120
          local.tee 0
          local.get 2
          i32.lt_u
          br_if 0 (;@3;)
          local.get 3
          local.get 0
          local.get 2
          i32.sub
          i32.ge_u
          br_if 1 (;@2;)
        end
        local.get 4
        i32.load offset=24
        local.set 5
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              local.get 4
              i32.load offset=12
              local.tee 0
              local.get 4
              i32.ne
              br_if 0 (;@5;)
              local.get 4
              i32.const 20
              i32.const 16
              local.get 4
              i32.load offset=20
              local.tee 0
              select
              i32.add
              i32.load
              local.tee 1
              br_if 1 (;@4;)
              i32.const 0
              local.set 0
              br 2 (;@3;)
            end
            local.get 4
            i32.load offset=8
            local.tee 1
            local.get 0
            i32.store offset=12
            local.get 0
            local.get 1
            i32.store offset=8
            br 1 (;@3;)
          end
          local.get 4
          i32.const 20
          i32.add
          local.get 4
          i32.const 16
          i32.add
          local.get 0
          select
          local.set 6
          loop  ;; label = @4
            local.get 6
            local.set 7
            local.get 1
            local.tee 0
            i32.const 20
            i32.add
            local.get 0
            i32.const 16
            i32.add
            local.get 0
            i32.load offset=20
            local.tee 1
            select
            local.set 6
            local.get 0
            i32.const 20
            i32.const 16
            local.get 1
            select
            i32.add
            i32.load
            local.tee 1
            br_if 0 (;@4;)
          end
          local.get 7
          i32.const 0
          i32.store
        end
        block  ;; label = @3
          local.get 5
          i32.eqz
          br_if 0 (;@3;)
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                local.get 4
                local.get 4
                i32.load offset=28
                i32.const 2
                i32.shl
                i32.const 1049704
                i32.add
                local.tee 1
                i32.load
                i32.eq
                br_if 0 (;@6;)
                block  ;; label = @7
                  local.get 5
                  i32.load offset=16
                  local.get 4
                  i32.eq
                  br_if 0 (;@7;)
                  local.get 5
                  local.get 0
                  i32.store offset=20
                  local.get 0
                  br_if 2 (;@5;)
                  br 4 (;@3;)
                end
                local.get 5
                local.get 0
                i32.store offset=16
                local.get 0
                br_if 1 (;@5;)
                br 3 (;@3;)
              end
              local.get 1
              local.get 0
              i32.store
              local.get 0
              i32.eqz
              br_if 1 (;@4;)
            end
            local.get 0
            local.get 5
            i32.store offset=24
            block  ;; label = @5
              local.get 4
              i32.load offset=16
              local.tee 1
              i32.eqz
              br_if 0 (;@5;)
              local.get 0
              local.get 1
              i32.store offset=16
              local.get 1
              local.get 0
              i32.store offset=24
            end
            local.get 4
            i32.load offset=20
            local.tee 1
            i32.eqz
            br_if 1 (;@3;)
            local.get 0
            local.get 1
            i32.store offset=20
            local.get 1
            local.get 0
            i32.store offset=24
            br 1 (;@3;)
          end
          i32.const 0
          i32.const 0
          i32.load offset=1050116
          i32.const -2
          local.get 4
          i32.load offset=28
          i32.rotl
          i32.and
          i32.store offset=1050116
        end
        block  ;; label = @3
          block  ;; label = @4
            local.get 3
            i32.const 16
            i32.lt_u
            br_if 0 (;@4;)
            local.get 4
            local.get 2
            i32.const 3
            i32.or
            i32.store offset=4
            local.get 4
            local.get 2
            i32.add
            local.tee 0
            local.get 3
            i32.const 1
            i32.or
            i32.store offset=4
            local.get 0
            local.get 3
            i32.add
            local.get 3
            i32.store
            block  ;; label = @5
              local.get 3
              i32.const 256
              i32.lt_u
              br_if 0 (;@5;)
              local.get 0
              local.get 3
              call $_RNvMs0_NtCs4Cv9UrsK3vC_8dlmalloc8dlmallocINtB5_8DlmallocNtNtB7_3sys6SystemE18insert_large_chunkCsiuDZNDVGlkl_3std
              br 2 (;@3;)
            end
            block  ;; label = @5
              block  ;; label = @6
                i32.const 0
                i32.load offset=1050112
                local.tee 1
                i32.const 1
                local.get 3
                i32.const 3
                i32.shr_u
                i32.shl
                local.tee 6
                i32.and
                br_if 0 (;@6;)
                i32.const 0
                local.get 1
                local.get 6
                i32.or
                i32.store offset=1050112
                local.get 3
                i32.const 248
                i32.and
                i32.const 1049848
                i32.add
                local.tee 3
                local.set 1
                br 1 (;@5;)
              end
              local.get 3
              i32.const 248
              i32.and
              local.tee 3
              i32.const 1049848
              i32.add
              local.set 1
              local.get 3
              i32.const 1049856
              i32.add
              i32.load
              local.set 3
            end
            local.get 1
            local.get 0
            i32.store offset=8
            local.get 3
            local.get 0
            i32.store offset=12
            local.get 0
            local.get 1
            i32.store offset=12
            local.get 0
            local.get 3
            i32.store offset=8
            br 1 (;@3;)
          end
          local.get 4
          local.get 3
          local.get 2
          i32.add
          local.tee 0
          i32.const 3
          i32.or
          i32.store offset=4
          local.get 4
          local.get 0
          i32.add
          local.tee 0
          local.get 0
          i32.load offset=4
          i32.const 1
          i32.or
          i32.store offset=4
        end
        local.get 4
        i32.const 8
        i32.add
        local.tee 0
        br_if 1 (;@1;)
      end
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  i32.const 0
                  i32.load offset=1050120
                  local.tee 0
                  local.get 2
                  i32.ge_u
                  br_if 0 (;@7;)
                  block  ;; label = @8
                    i32.const 0
                    i32.load offset=1050124
                    local.tee 0
                    local.get 2
                    i32.gt_u
                    br_if 0 (;@8;)
                    i32.const 0
                    local.set 0
                    i32.const 0
                    i32.load8_u offset=1049656
                    local.set 4
                    i32.const 0
                    i32.const 1
                    i32.store8 offset=1049656
                    i32.const 1050192
                    local.set 1
                    local.get 2
                    i32.const 65583
                    i32.add
                    local.tee 6
                    i32.const -65536
                    i32.and
                    local.set 3
                    block  ;; label = @9
                      block  ;; label = @10
                        i32.const 1114112
                        i32.const 1050192
                        i32.le_u
                        br_if 0 (;@10;)
                        local.get 3
                        i32.const 1114112
                        i32.const 1050192
                        i32.sub
                        i32.gt_u
                        br_if 0 (;@10;)
                        local.get 4
                        i32.const 255
                        i32.and
                        br_if 0 (;@10;)
                        i32.const 1114112
                        i32.const 1050192
                        i32.sub
                        local.set 7
                        br 1 (;@9;)
                      end
                      local.get 6
                      i32.const 16
                      i32.shr_u
                      memory.grow
                      local.tee 4
                      i32.const -1
                      i32.eq
                      br_if 8 (;@1;)
                      i32.const 0
                      local.set 0
                      local.get 4
                      i32.const 16
                      i32.shl
                      local.tee 1
                      i32.eqz
                      br_if 8 (;@1;)
                      local.get 3
                      i32.const -16
                      i32.add
                      local.get 3
                      local.get 1
                      i32.const 0
                      local.get 3
                      i32.sub
                      i32.eq
                      select
                      local.set 7
                    end
                    i32.const 0
                    i32.const 0
                    i32.load offset=1050136
                    local.get 7
                    i32.add
                    local.tee 0
                    i32.store offset=1050136
                    i32.const 0
                    local.get 0
                    i32.const 0
                    i32.load offset=1050140
                    local.tee 3
                    local.get 0
                    local.get 3
                    i32.gt_u
                    select
                    i32.store offset=1050140
                    block  ;; label = @9
                      block  ;; label = @10
                        block  ;; label = @11
                          i32.const 0
                          i32.load offset=1050132
                          local.tee 3
                          i32.eqz
                          br_if 0 (;@11;)
                          i32.const 1049832
                          local.set 0
                          loop  ;; label = @12
                            local.get 1
                            local.get 0
                            i32.load
                            local.tee 4
                            local.get 0
                            i32.load offset=4
                            local.tee 6
                            i32.add
                            i32.eq
                            br_if 2 (;@10;)
                            local.get 0
                            i32.load offset=8
                            local.tee 0
                            br_if 0 (;@12;)
                            br 3 (;@9;)
                          end
                        end
                        block  ;; label = @11
                          block  ;; label = @12
                            i32.const 0
                            i32.load offset=1050148
                            local.tee 0
                            i32.eqz
                            br_if 0 (;@12;)
                            local.get 1
                            local.get 0
                            i32.ge_u
                            br_if 1 (;@11;)
                          end
                          i32.const 0
                          local.get 1
                          i32.store offset=1050148
                        end
                        i32.const 0
                        i32.const 4095
                        i32.store offset=1050152
                        i32.const 0
                        local.get 7
                        i32.store offset=1049836
                        i32.const 0
                        local.get 1
                        i32.store offset=1049832
                        i32.const 0
                        i32.const 1049848
                        i32.store offset=1049860
                        i32.const 0
                        i32.const 1049856
                        i32.store offset=1049868
                        i32.const 0
                        i32.const 1049848
                        i32.store offset=1049856
                        i32.const 0
                        i32.const 1049864
                        i32.store offset=1049876
                        i32.const 0
                        i32.const 1049856
                        i32.store offset=1049864
                        i32.const 0
                        i32.const 1049872
                        i32.store offset=1049884
                        i32.const 0
                        i32.const 1049864
                        i32.store offset=1049872
                        i32.const 0
                        i32.const 1049880
                        i32.store offset=1049892
                        i32.const 0
                        i32.const 1049872
                        i32.store offset=1049880
                        i32.const 0
                        i32.const 1049888
                        i32.store offset=1049900
                        i32.const 0
                        i32.const 1049880
                        i32.store offset=1049888
                        i32.const 0
                        i32.const 1049896
                        i32.store offset=1049908
                        i32.const 0
                        i32.const 1049888
                        i32.store offset=1049896
                        i32.const 0
                        i32.const 1049904
                        i32.store offset=1049916
                        i32.const 0
                        i32.const 1049896
                        i32.store offset=1049904
                        i32.const 0
                        i32.const 0
                        i32.store offset=1049844
                        i32.const 0
                        i32.const 1049912
                        i32.store offset=1049924
                        i32.const 0
                        i32.const 1049904
                        i32.store offset=1049912
                        i32.const 0
                        i32.const 1049912
                        i32.store offset=1049920
                        i32.const 0
                        i32.const 1049920
                        i32.store offset=1049932
                        i32.const 0
                        i32.const 1049920
                        i32.store offset=1049928
                        i32.const 0
                        i32.const 1049928
                        i32.store offset=1049940
                        i32.const 0
                        i32.const 1049928
                        i32.store offset=1049936
                        i32.const 0
                        i32.const 1049936
                        i32.store offset=1049948
                        i32.const 0
                        i32.const 1049936
                        i32.store offset=1049944
                        i32.const 0
                        i32.const 1049944
                        i32.store offset=1049956
                        i32.const 0
                        i32.const 1049944
                        i32.store offset=1049952
                        i32.const 0
                        i32.const 1049952
                        i32.store offset=1049964
                        i32.const 0
                        i32.const 1049952
                        i32.store offset=1049960
                        i32.const 0
                        i32.const 1049960
                        i32.store offset=1049972
                        i32.const 0
                        i32.const 1049960
                        i32.store offset=1049968
                        i32.const 0
                        i32.const 1049968
                        i32.store offset=1049980
                        i32.const 0
                        i32.const 1049968
                        i32.store offset=1049976
                        i32.const 0
                        i32.const 1049976
                        i32.store offset=1049988
                        i32.const 0
                        i32.const 1049984
                        i32.store offset=1049996
                        i32.const 0
                        i32.const 1049976
                        i32.store offset=1049984
                        i32.const 0
                        i32.const 1049992
                        i32.store offset=1050004
                        i32.const 0
                        i32.const 1049984
                        i32.store offset=1049992
                        i32.const 0
                        i32.const 1050000
                        i32.store offset=1050012
                        i32.const 0
                        i32.const 1049992
                        i32.store offset=1050000
                        i32.const 0
                        i32.const 1050008
                        i32.store offset=1050020
                        i32.const 0
                        i32.const 1050000
                        i32.store offset=1050008
                        i32.const 0
                        i32.const 1050016
                        i32.store offset=1050028
                        i32.const 0
                        i32.const 1050008
                        i32.store offset=1050016
                        i32.const 0
                        i32.const 1050024
                        i32.store offset=1050036
                        i32.const 0
                        i32.const 1050016
                        i32.store offset=1050024
                        i32.const 0
                        i32.const 1050032
                        i32.store offset=1050044
                        i32.const 0
                        i32.const 1050024
                        i32.store offset=1050032
                        i32.const 0
                        i32.const 1050040
                        i32.store offset=1050052
                        i32.const 0
                        i32.const 1050032
                        i32.store offset=1050040
                        i32.const 0
                        i32.const 1050048
                        i32.store offset=1050060
                        i32.const 0
                        i32.const 1050040
                        i32.store offset=1050048
                        i32.const 0
                        i32.const 1050056
                        i32.store offset=1050068
                        i32.const 0
                        i32.const 1050048
                        i32.store offset=1050056
                        i32.const 0
                        i32.const 1050064
                        i32.store offset=1050076
                        i32.const 0
                        i32.const 1050056
                        i32.store offset=1050064
                        i32.const 0
                        i32.const 1050072
                        i32.store offset=1050084
                        i32.const 0
                        i32.const 1050064
                        i32.store offset=1050072
                        i32.const 0
                        i32.const 1050080
                        i32.store offset=1050092
                        i32.const 0
                        i32.const 1050072
                        i32.store offset=1050080
                        i32.const 0
                        i32.const 1050088
                        i32.store offset=1050100
                        i32.const 0
                        i32.const 1050080
                        i32.store offset=1050088
                        i32.const 0
                        i32.const 1050096
                        i32.store offset=1050108
                        i32.const 0
                        i32.const 1050088
                        i32.store offset=1050096
                        i32.const 0
                        local.get 1
                        i32.const 15
                        i32.add
                        i32.const -8
                        i32.and
                        local.tee 0
                        i32.const -8
                        i32.add
                        local.tee 3
                        i32.store offset=1050132
                        i32.const 0
                        i32.const 1050096
                        i32.store offset=1050104
                        i32.const 0
                        local.get 1
                        local.get 0
                        i32.sub
                        local.get 7
                        i32.const -40
                        i32.add
                        local.tee 0
                        i32.add
                        i32.const 8
                        i32.add
                        local.tee 4
                        i32.store offset=1050124
                        local.get 3
                        local.get 4
                        i32.const 1
                        i32.or
                        i32.store offset=4
                        local.get 1
                        local.get 0
                        i32.add
                        i32.const 40
                        i32.store offset=4
                        i32.const 0
                        i32.const 2097152
                        i32.store offset=1050144
                        br 8 (;@2;)
                      end
                      local.get 3
                      local.get 1
                      i32.ge_u
                      br_if 0 (;@9;)
                      local.get 4
                      local.get 3
                      i32.gt_u
                      br_if 0 (;@9;)
                      local.get 0
                      i32.load offset=12
                      i32.eqz
                      br_if 3 (;@6;)
                    end
                    i32.const 0
                    i32.const 0
                    i32.load offset=1050148
                    local.tee 0
                    local.get 1
                    local.get 0
                    local.get 1
                    i32.lt_u
                    select
                    i32.store offset=1050148
                    local.get 1
                    local.get 7
                    i32.add
                    local.set 4
                    i32.const 1049832
                    local.set 0
                    block  ;; label = @9
                      block  ;; label = @10
                        block  ;; label = @11
                          loop  ;; label = @12
                            local.get 0
                            i32.load
                            local.tee 6
                            local.get 4
                            i32.eq
                            br_if 1 (;@11;)
                            local.get 0
                            i32.load offset=8
                            local.tee 0
                            br_if 0 (;@12;)
                            br 2 (;@10;)
                          end
                        end
                        local.get 0
                        i32.load offset=12
                        i32.eqz
                        br_if 1 (;@9;)
                      end
                      i32.const 1049832
                      local.set 0
                      block  ;; label = @10
                        loop  ;; label = @11
                          block  ;; label = @12
                            local.get 0
                            i32.load
                            local.tee 4
                            local.get 3
                            i32.gt_u
                            br_if 0 (;@12;)
                            local.get 3
                            local.get 4
                            local.get 0
                            i32.load offset=4
                            i32.add
                            local.tee 4
                            i32.lt_u
                            br_if 2 (;@10;)
                          end
                          local.get 0
                          i32.load offset=8
                          local.set 0
                          br 0 (;@11;)
                        end
                      end
                      i32.const 0
                      local.get 1
                      i32.const 15
                      i32.add
                      i32.const -8
                      i32.and
                      local.tee 0
                      i32.const -8
                      i32.add
                      local.tee 6
                      i32.store offset=1050132
                      i32.const 0
                      local.get 1
                      local.get 0
                      i32.sub
                      local.get 7
                      i32.const -40
                      i32.add
                      local.tee 0
                      i32.add
                      i32.const 8
                      i32.add
                      local.tee 5
                      i32.store offset=1050124
                      local.get 6
                      local.get 5
                      i32.const 1
                      i32.or
                      i32.store offset=4
                      local.get 1
                      local.get 0
                      i32.add
                      i32.const 40
                      i32.store offset=4
                      i32.const 0
                      i32.const 2097152
                      i32.store offset=1050144
                      local.get 3
                      local.get 4
                      i32.const -32
                      i32.add
                      i32.const -8
                      i32.and
                      i32.const -8
                      i32.add
                      local.tee 0
                      local.get 0
                      local.get 3
                      i32.const 16
                      i32.add
                      i32.lt_u
                      select
                      local.tee 6
                      i32.const 27
                      i32.store offset=4
                      i32.const 0
                      i64.load offset=1049832 align=4
                      local.set 9
                      local.get 6
                      i32.const 16
                      i32.add
                      i32.const 0
                      i64.load offset=1049840 align=4
                      i64.store align=4
                      local.get 6
                      i32.const 8
                      i32.add
                      local.tee 0
                      local.get 9
                      i64.store align=4
                      i32.const 0
                      local.get 7
                      i32.store offset=1049836
                      i32.const 0
                      local.get 1
                      i32.store offset=1049832
                      i32.const 0
                      local.get 0
                      i32.store offset=1049840
                      i32.const 0
                      i32.const 0
                      i32.store offset=1049844
                      local.get 6
                      i32.const 28
                      i32.add
                      local.set 0
                      loop  ;; label = @10
                        local.get 0
                        i32.const 7
                        i32.store
                        local.get 0
                        i32.const 4
                        i32.add
                        local.tee 0
                        local.get 4
                        i32.lt_u
                        br_if 0 (;@10;)
                      end
                      local.get 6
                      local.get 3
                      i32.eq
                      br_if 7 (;@2;)
                      local.get 6
                      local.get 6
                      i32.load offset=4
                      i32.const -2
                      i32.and
                      i32.store offset=4
                      local.get 3
                      local.get 6
                      local.get 3
                      i32.sub
                      local.tee 0
                      i32.const 1
                      i32.or
                      i32.store offset=4
                      local.get 6
                      local.get 0
                      i32.store
                      block  ;; label = @10
                        local.get 0
                        i32.const 256
                        i32.lt_u
                        br_if 0 (;@10;)
                        local.get 3
                        local.get 0
                        call $_RNvMs0_NtCs4Cv9UrsK3vC_8dlmalloc8dlmallocINtB5_8DlmallocNtNtB7_3sys6SystemE18insert_large_chunkCsiuDZNDVGlkl_3std
                        br 8 (;@2;)
                      end
                      block  ;; label = @10
                        block  ;; label = @11
                          i32.const 0
                          i32.load offset=1050112
                          local.tee 4
                          i32.const 1
                          local.get 0
                          i32.const 3
                          i32.shr_u
                          i32.shl
                          local.tee 1
                          i32.and
                          br_if 0 (;@11;)
                          i32.const 0
                          local.get 4
                          local.get 1
                          i32.or
                          i32.store offset=1050112
                          local.get 0
                          i32.const 248
                          i32.and
                          i32.const 1049848
                          i32.add
                          local.tee 0
                          local.set 4
                          br 1 (;@10;)
                        end
                        local.get 0
                        i32.const 248
                        i32.and
                        local.tee 0
                        i32.const 1049848
                        i32.add
                        local.set 4
                        local.get 0
                        i32.const 1049856
                        i32.add
                        i32.load
                        local.set 0
                      end
                      local.get 4
                      local.get 3
                      i32.store offset=8
                      local.get 0
                      local.get 3
                      i32.store offset=12
                      local.get 3
                      local.get 4
                      i32.store offset=12
                      local.get 3
                      local.get 0
                      i32.store offset=8
                      br 7 (;@2;)
                    end
                    local.get 0
                    local.get 1
                    i32.store
                    local.get 0
                    local.get 0
                    i32.load offset=4
                    local.get 7
                    i32.add
                    i32.store offset=4
                    local.get 1
                    i32.const 15
                    i32.add
                    i32.const -8
                    i32.and
                    i32.const -8
                    i32.add
                    local.tee 1
                    local.get 2
                    i32.const 3
                    i32.or
                    i32.store offset=4
                    local.get 6
                    i32.const 15
                    i32.add
                    i32.const -8
                    i32.and
                    i32.const -8
                    i32.add
                    local.tee 4
                    local.get 1
                    local.get 2
                    i32.add
                    local.tee 0
                    i32.sub
                    local.set 3
                    local.get 4
                    i32.const 0
                    i32.load offset=1050132
                    i32.eq
                    br_if 3 (;@5;)
                    local.get 4
                    i32.const 0
                    i32.load offset=1050128
                    i32.eq
                    br_if 4 (;@4;)
                    block  ;; label = @9
                      local.get 4
                      i32.load offset=4
                      local.tee 2
                      i32.const 3
                      i32.and
                      i32.const 1
                      i32.ne
                      br_if 0 (;@9;)
                      local.get 4
                      local.get 2
                      i32.const -8
                      i32.and
                      local.tee 2
                      call $_RNvMs0_NtCs4Cv9UrsK3vC_8dlmalloc8dlmallocINtB5_8DlmallocNtNtB7_3sys6SystemE12unlink_chunkCsiuDZNDVGlkl_3std
                      local.get 2
                      local.get 3
                      i32.add
                      local.set 3
                      local.get 4
                      local.get 2
                      i32.add
                      local.tee 4
                      i32.load offset=4
                      local.set 2
                    end
                    local.get 4
                    local.get 2
                    i32.const -2
                    i32.and
                    i32.store offset=4
                    local.get 0
                    local.get 3
                    i32.const 1
                    i32.or
                    i32.store offset=4
                    local.get 0
                    local.get 3
                    i32.add
                    local.get 3
                    i32.store
                    block  ;; label = @9
                      local.get 3
                      i32.const 256
                      i32.lt_u
                      br_if 0 (;@9;)
                      local.get 0
                      local.get 3
                      call $_RNvMs0_NtCs4Cv9UrsK3vC_8dlmalloc8dlmallocINtB5_8DlmallocNtNtB7_3sys6SystemE18insert_large_chunkCsiuDZNDVGlkl_3std
                      br 6 (;@3;)
                    end
                    block  ;; label = @9
                      block  ;; label = @10
                        i32.const 0
                        i32.load offset=1050112
                        local.tee 2
                        i32.const 1
                        local.get 3
                        i32.const 3
                        i32.shr_u
                        i32.shl
                        local.tee 4
                        i32.and
                        br_if 0 (;@10;)
                        i32.const 0
                        local.get 2
                        local.get 4
                        i32.or
                        i32.store offset=1050112
                        local.get 3
                        i32.const 248
                        i32.and
                        i32.const 1049848
                        i32.add
                        local.tee 3
                        local.set 2
                        br 1 (;@9;)
                      end
                      local.get 3
                      i32.const 248
                      i32.and
                      local.tee 3
                      i32.const 1049848
                      i32.add
                      local.set 2
                      local.get 3
                      i32.const 1049856
                      i32.add
                      i32.load
                      local.set 3
                    end
                    local.get 2
                    local.get 0
                    i32.store offset=8
                    local.get 3
                    local.get 0
                    i32.store offset=12
                    local.get 0
                    local.get 2
                    i32.store offset=12
                    local.get 0
                    local.get 3
                    i32.store offset=8
                    br 5 (;@3;)
                  end
                  i32.const 0
                  local.get 0
                  local.get 2
                  i32.sub
                  local.tee 3
                  i32.store offset=1050124
                  i32.const 0
                  i32.const 0
                  i32.load offset=1050132
                  local.tee 0
                  local.get 2
                  i32.add
                  local.tee 4
                  i32.store offset=1050132
                  local.get 4
                  local.get 3
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
                  local.set 0
                  br 6 (;@1;)
                end
                i32.const 0
                i32.load offset=1050128
                local.set 3
                block  ;; label = @7
                  block  ;; label = @8
                    local.get 0
                    local.get 2
                    i32.sub
                    local.tee 4
                    i32.const 15
                    i32.gt_u
                    br_if 0 (;@8;)
                    i32.const 0
                    i32.const 0
                    i32.store offset=1050128
                    i32.const 0
                    i32.const 0
                    i32.store offset=1050120
                    local.get 3
                    local.get 0
                    i32.const 3
                    i32.or
                    i32.store offset=4
                    local.get 3
                    local.get 0
                    i32.add
                    local.tee 0
                    local.get 0
                    i32.load offset=4
                    i32.const 1
                    i32.or
                    i32.store offset=4
                    br 1 (;@7;)
                  end
                  i32.const 0
                  local.get 4
                  i32.store offset=1050120
                  i32.const 0
                  local.get 3
                  local.get 2
                  i32.add
                  local.tee 1
                  i32.store offset=1050128
                  local.get 1
                  local.get 4
                  i32.const 1
                  i32.or
                  i32.store offset=4
                  local.get 3
                  local.get 0
                  i32.add
                  local.get 4
                  i32.store
                  local.get 3
                  local.get 2
                  i32.const 3
                  i32.or
                  i32.store offset=4
                end
                local.get 3
                i32.const 8
                i32.add
                return
              end
              local.get 0
              local.get 6
              local.get 7
              i32.add
              i32.store offset=4
              i32.const 0
              i32.const 0
              i32.load offset=1050132
              local.tee 0
              i32.const 15
              i32.add
              i32.const -8
              i32.and
              local.tee 3
              i32.const -8
              i32.add
              local.tee 4
              i32.store offset=1050132
              i32.const 0
              local.get 0
              local.get 3
              i32.sub
              i32.const 0
              i32.load offset=1050124
              local.get 7
              i32.add
              local.tee 3
              i32.add
              i32.const 8
              i32.add
              local.tee 1
              i32.store offset=1050124
              local.get 4
              local.get 1
              i32.const 1
              i32.or
              i32.store offset=4
              local.get 0
              local.get 3
              i32.add
              i32.const 40
              i32.store offset=4
              i32.const 0
              i32.const 2097152
              i32.store offset=1050144
              br 3 (;@2;)
            end
            i32.const 0
            local.get 0
            i32.store offset=1050132
            i32.const 0
            i32.const 0
            i32.load offset=1050124
            local.get 3
            i32.add
            local.tee 3
            i32.store offset=1050124
            local.get 0
            local.get 3
            i32.const 1
            i32.or
            i32.store offset=4
            br 1 (;@3;)
          end
          i32.const 0
          local.get 0
          i32.store offset=1050128
          i32.const 0
          i32.const 0
          i32.load offset=1050120
          local.get 3
          i32.add
          local.tee 3
          i32.store offset=1050120
          local.get 0
          local.get 3
          i32.const 1
          i32.or
          i32.store offset=4
          local.get 0
          local.get 3
          i32.add
          local.get 3
          i32.store
        end
        local.get 1
        i32.const 8
        i32.add
        return
      end
      i32.const 0
      local.set 0
      i32.const 0
      i32.load offset=1050124
      local.tee 3
      local.get 2
      i32.le_u
      br_if 0 (;@1;)
      i32.const 0
      local.get 3
      local.get 2
      i32.sub
      local.tee 3
      i32.store offset=1050124
      i32.const 0
      i32.const 0
      i32.load offset=1050132
      local.tee 0
      local.get 2
      i32.add
      local.tee 4
      i32.store offset=1050132
      local.get 4
      local.get 3
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
    local.get 0)
  (func $_RNvYINtNvNtCsiuDZNDVGlkl_3std9panicking11begin_panic7PayloadReENtNtCs6EU1PHFTFol_4core5panic12PanicPayload6as_strB9_ (type 3) (param i32 i32)
    local.get 0
    i32.const 0
    i32.store)
  (func $_RNvXNtCs6EU1PHFTFol_4core3anyReNtB2_3Any7type_idCsiuDZNDVGlkl_3std (type 3) (param i32 i32)
    local.get 0
    i32.const 0
    i64.load offset=1049264 align=4
    i64.store offset=8 align=4
    local.get 0
    i32.const 0
    i64.load offset=1049256 align=4
    i64.store align=4)
  (func $_RINvNtNtCsiuDZNDVGlkl_3std3sys9backtrace26___rust_end_short_backtraceNCNvNtB6_5alloc8rust_oom0zEB6_ (type 3) (param i32 i32)
    i32.const 0
    i32.const 1
    i32.store8 offset=1050177
    unreachable)
  (func $_RINvNtNtCsiuDZNDVGlkl_3std3sys9backtrace26___rust_end_short_backtraceNCNvNtB6_9panicking13panic_handler0zEB6_ (type 4) (param i32)
    local.get 0
    call $_RNCNvNtCsiuDZNDVGlkl_3std9panicking13panic_handler0B5_
    unreachable)
  (func $_RNCNvNtCsiuDZNDVGlkl_3std9panicking13panic_handler0B5_ (type 4) (param i32)
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
      i32.load offset=4
      local.tee 3
      i32.const 1
      i32.and
      i32.eqz
      br_if 0 (;@1;)
      local.get 2
      i32.load
      local.set 2
      local.get 1
      local.get 3
      i32.const 1
      i32.shr_u
      i32.store offset=4
      local.get 1
      local.get 2
      i32.store
      local.get 1
      i32.const 1049200
      local.get 0
      i32.load offset=8
      local.tee 0
      i32.load8_u offset=8
      local.get 0
      i32.load8_u offset=9
      call $_RNvNtCsiuDZNDVGlkl_3std9panicking15panic_with_hook
      unreachable
    end
    local.get 1
    i32.const -1
    i32.store
    local.get 1
    local.get 0
    i32.store offset=12
    local.get 1
    i32.const 1049228
    local.get 0
    i32.load offset=8
    local.tee 0
    i32.load8_u offset=8
    local.get 0
    i32.load8_u offset=9
    call $_RNvNtCsiuDZNDVGlkl_3std9panicking15panic_with_hook
    unreachable)
  (func $_RINvNtCs6EU1PHFTFol_4core3ptr9drop_glueNtNvNtCsiuDZNDVGlkl_3std9panicking13panic_handler19FormatStringPayloadEBH_ (type 4) (param i32)
    (local i32)
    block  ;; label = @1
      local.get 0
      i32.load
      local.tee 1
      i32.const 1
      i32.lt_s
      br_if 0 (;@1;)
      local.get 0
      i32.load offset=4
      local.get 1
      call $_RNvCsit533lh8FIi_7___rustc14___rust_dealloc
    end)
  (func $_RNvXs0_NvNtCsiuDZNDVGlkl_3std9panicking13panic_handlerNtB5_19FormatStringPayloadNtNtCs6EU1PHFTFol_4core3fmt7Display3fmt (type 1) (param i32 i32) (result i32)
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
      call_indirect (type 2)
      return
    end
    local.get 1
    i32.load
    local.get 1
    i32.load offset=4
    local.get 0
    i32.load offset=12
    i32.load
    local.tee 0
    i32.load
    local.get 0
    i32.load offset=4
    call $_RNvNtCs6EU1PHFTFol_4core3fmt5write)
  (func $_RNvXs_NvNtCsiuDZNDVGlkl_3std9panicking13panic_handlerNtB4_19FormatStringPayloadNtNtCs6EU1PHFTFol_4core5panic12PanicPayload8take_box (type 3) (param i32 i32)
    (local i32 i32 i64)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    block  ;; label = @1
      local.get 1
      i32.load
      i32.const -1
      i32.ne
      br_if 0 (;@1;)
      local.get 1
      i32.load offset=12
      local.set 3
      local.get 2
      i32.const 0
      i32.store offset=24
      local.get 2
      i64.const 4294967296
      i64.store offset=16 align=4
      local.get 2
      i32.const 16
      i32.add
      i32.const 1049176
      local.get 3
      i32.load
      local.tee 3
      i32.load
      local.get 3
      i32.load offset=4
      call $_RNvNtCs6EU1PHFTFol_4core3fmt5write
      drop
      local.get 2
      local.get 2
      i32.load offset=24
      local.tee 3
      i32.store offset=8
      local.get 2
      local.get 2
      i64.load offset=16 align=4
      local.tee 4
      i64.store
      local.get 1
      local.get 3
      i32.store offset=8
      local.get 1
      local.get 4
      i64.store align=4
    end
    local.get 1
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
    i32.store offset=24
    local.get 2
    local.get 4
    i64.store offset=16
    block  ;; label = @1
      i32.const 12
      call $_RNvMs0_NtCs4Cv9UrsK3vC_8dlmalloc8dlmallocINtB5_8DlmallocNtNtB7_3sys6SystemE6mallocCsiuDZNDVGlkl_3std
      local.tee 1
      br_if 0 (;@1;)
      i32.const 4
      i32.const 12
      call $_RNvNtCs8YPOlzcMnTl_5alloc5alloc18handle_alloc_error
      unreachable
    end
    local.get 1
    local.get 2
    i32.load offset=24
    i32.store offset=8
    local.get 1
    local.get 2
    i64.load offset=16
    i64.store align=4
    local.get 0
    i32.const 1049580
    i32.store offset=4
    local.get 0
    local.get 1
    i32.store
    local.get 2
    i32.const 32
    i32.add
    global.set $__stack_pointer)
  (func $_RNvXs_NvNtCsiuDZNDVGlkl_3std9panicking13panic_handlerNtB4_19FormatStringPayloadNtNtCs6EU1PHFTFol_4core5panic12PanicPayload3get (type 3) (param i32 i32)
    (local i32 i32 i64)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    block  ;; label = @1
      local.get 1
      i32.load
      i32.const -1
      i32.ne
      br_if 0 (;@1;)
      local.get 1
      i32.load offset=12
      local.set 3
      local.get 2
      i32.const 0
      i32.store offset=28
      local.get 2
      i64.const 4294967296
      i64.store offset=20 align=4
      local.get 2
      i32.const 20
      i32.add
      i32.const 1049176
      local.get 3
      i32.load
      local.tee 3
      i32.load
      local.get 3
      i32.load offset=4
      call $_RNvNtCs6EU1PHFTFol_4core3fmt5write
      drop
      local.get 2
      local.get 2
      i32.load offset=28
      local.tee 3
      i32.store offset=16
      local.get 2
      local.get 2
      i64.load offset=20 align=4
      local.tee 4
      i64.store offset=8
      local.get 1
      local.get 3
      i32.store offset=8
      local.get 1
      local.get 4
      i64.store align=4
    end
    local.get 0
    i32.const 1049580
    i32.store offset=4
    local.get 0
    local.get 1
    i32.store
    local.get 2
    i32.const 32
    i32.add
    global.set $__stack_pointer)
  (func $_RINvNvMs2_NtCs8YPOlzcMnTl_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsiuDZNDVGlkl_3std (type 6) (param i32 i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    block  ;; label = @1
      local.get 2
      local.get 1
      i32.add
      local.tee 1
      local.get 2
      i32.ge_u
      br_if 0 (;@1;)
      i32.const 0
      i32.const 0
      call $_RNvNtCs8YPOlzcMnTl_5alloc7raw_vec12handle_error
      unreachable
    end
    local.get 3
    i32.const 4
    i32.add
    local.get 0
    i32.load
    local.tee 2
    local.get 0
    i32.load offset=4
    local.get 1
    local.get 2
    i32.const 1
    i32.shl
    local.tee 2
    local.get 1
    local.get 2
    i32.gt_u
    select
    local.tee 2
    i32.const 8
    local.get 2
    i32.const 8
    i32.gt_u
    select
    local.tee 2
    call $_RNvMs4_NtCs8YPOlzcMnTl_5alloc7raw_vecNtB5_11RawVecInner11finish_growCsiuDZNDVGlkl_3std
    block  ;; label = @1
      local.get 3
      i32.load offset=4
      i32.const 1
      i32.ne
      br_if 0 (;@1;)
      local.get 3
      i32.load offset=8
      local.get 3
      i32.load offset=12
      call $_RNvNtCs8YPOlzcMnTl_5alloc7raw_vec12handle_error
      unreachable
    end
    local.get 3
    i32.load offset=8
    local.set 1
    local.get 0
    local.get 2
    i32.store
    local.get 0
    local.get 1
    i32.store offset=4
    local.get 3
    i32.const 16
    i32.add
    global.set $__stack_pointer)
  (func $_RNvMs4_NtCs8YPOlzcMnTl_5alloc7raw_vecNtB5_11RawVecInner11finish_growCsiuDZNDVGlkl_3std (type 8) (param i32 i32 i32 i32)
    (local i32 i32 i32 i32 i32)
    block  ;; label = @1
      block  ;; label = @2
        local.get 3
        i32.const 0
        i32.ge_s
        br_if 0 (;@2;)
        i32.const 1
        local.set 1
        i32.const 4
        local.set 2
        i32.const 0
        local.set 3
        br 1 (;@1;)
      end
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      block  ;; label = @10
                        local.get 1
                        i32.eqz
                        br_if 0 (;@10;)
                        local.get 2
                        i32.const -4
                        i32.add
                        local.tee 4
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
                        local.tee 7
                        select
                        local.get 1
                        i32.add
                        i32.lt_u
                        br_if 1 (;@9;)
                        block  ;; label = @11
                          local.get 7
                          i32.eqz
                          br_if 0 (;@11;)
                          local.get 6
                          local.get 1
                          i32.const 39
                          i32.add
                          i32.gt_u
                          br_if 3 (;@8;)
                        end
                        i32.const 16
                        local.get 3
                        i32.const 11
                        i32.add
                        i32.const -8
                        i32.and
                        local.get 3
                        i32.const 11
                        i32.lt_u
                        select
                        local.set 1
                        local.get 2
                        i32.const -8
                        i32.add
                        local.set 8
                        block  ;; label = @11
                          local.get 7
                          br_if 0 (;@11;)
                          local.get 1
                          i32.const 256
                          i32.lt_u
                          br_if 6 (;@5;)
                          local.get 8
                          i32.eqz
                          br_if 6 (;@5;)
                          local.get 6
                          local.get 1
                          i32.le_u
                          br_if 6 (;@5;)
                          local.get 6
                          local.get 1
                          i32.sub
                          i32.const 131072
                          i32.gt_u
                          br_if 6 (;@5;)
                          local.get 2
                          local.set 1
                          br 7 (;@4;)
                        end
                        local.get 8
                        local.get 6
                        i32.add
                        local.set 7
                        block  ;; label = @11
                          block  ;; label = @12
                            local.get 6
                            local.get 1
                            i32.ge_u
                            br_if 0 (;@12;)
                            local.get 7
                            i32.const 0
                            i32.load offset=1050132
                            i32.eq
                            br_if 1 (;@11;)
                            block  ;; label = @13
                              local.get 7
                              i32.const 0
                              i32.load offset=1050128
                              i32.eq
                              br_if 0 (;@13;)
                              local.get 7
                              i32.load offset=4
                              local.tee 5
                              i32.const 2
                              i32.and
                              br_if 8 (;@5;)
                              local.get 5
                              i32.const -8
                              i32.and
                              local.tee 5
                              local.get 6
                              i32.add
                              local.tee 6
                              local.get 1
                              i32.lt_u
                              br_if 8 (;@5;)
                              local.get 7
                              local.get 5
                              call $_RNvMs0_NtCs4Cv9UrsK3vC_8dlmalloc8dlmallocINtB5_8DlmallocNtNtB7_3sys6SystemE12unlink_chunkCsiuDZNDVGlkl_3std
                              block  ;; label = @14
                                local.get 6
                                local.get 1
                                i32.sub
                                local.tee 7
                                i32.const 16
                                i32.lt_u
                                br_if 0 (;@14;)
                                local.get 4
                                local.get 1
                                local.get 4
                                i32.load
                                i32.const 1
                                i32.and
                                i32.or
                                i32.const 2
                                i32.or
                                i32.store
                                local.get 8
                                local.get 1
                                i32.add
                                local.tee 1
                                local.get 7
                                i32.const 3
                                i32.or
                                i32.store offset=4
                                local.get 8
                                local.get 6
                                i32.add
                                local.tee 6
                                local.get 6
                                i32.load offset=4
                                i32.const 1
                                i32.or
                                i32.store offset=4
                                local.get 1
                                local.get 7
                                call $_RNvMs0_NtCs4Cv9UrsK3vC_8dlmalloc8dlmallocINtB5_8DlmallocNtNtB7_3sys6SystemE13dispose_chunkCsiuDZNDVGlkl_3std
                                br 8 (;@6;)
                              end
                              local.get 4
                              local.get 6
                              local.get 4
                              i32.load
                              i32.const 1
                              i32.and
                              i32.or
                              i32.const 2
                              i32.or
                              i32.store
                              local.get 8
                              local.get 6
                              i32.add
                              local.tee 1
                              local.get 1
                              i32.load offset=4
                              i32.const 1
                              i32.or
                              i32.store offset=4
                              br 7 (;@6;)
                            end
                            i32.const 0
                            i32.load offset=1050120
                            local.get 6
                            i32.add
                            local.tee 6
                            local.get 1
                            i32.lt_u
                            br_if 7 (;@5;)
                            block  ;; label = @13
                              block  ;; label = @14
                                local.get 6
                                local.get 1
                                i32.sub
                                local.tee 7
                                i32.const 15
                                i32.gt_u
                                br_if 0 (;@14;)
                                local.get 4
                                local.get 5
                                i32.const 1
                                i32.and
                                local.get 6
                                i32.or
                                i32.const 2
                                i32.or
                                i32.store
                                local.get 8
                                local.get 6
                                i32.add
                                local.tee 1
                                local.get 1
                                i32.load offset=4
                                i32.const 1
                                i32.or
                                i32.store offset=4
                                i32.const 0
                                local.set 7
                                i32.const 0
                                local.set 1
                                br 1 (;@13;)
                              end
                              local.get 4
                              local.get 1
                              local.get 5
                              i32.const 1
                              i32.and
                              i32.or
                              i32.const 2
                              i32.or
                              i32.store
                              local.get 8
                              local.get 1
                              i32.add
                              local.tee 1
                              local.get 7
                              i32.const 1
                              i32.or
                              i32.store offset=4
                              local.get 8
                              local.get 6
                              i32.add
                              local.tee 6
                              local.get 7
                              i32.store
                              local.get 6
                              local.get 6
                              i32.load offset=4
                              i32.const -2
                              i32.and
                              i32.store offset=4
                            end
                            i32.const 0
                            local.get 1
                            i32.store offset=1050128
                            i32.const 0
                            local.get 7
                            i32.store offset=1050120
                            br 6 (;@6;)
                          end
                          local.get 6
                          local.get 1
                          i32.sub
                          local.tee 6
                          i32.const 15
                          i32.le_u
                          br_if 5 (;@6;)
                          local.get 4
                          local.get 1
                          local.get 5
                          i32.const 1
                          i32.and
                          i32.or
                          i32.const 2
                          i32.or
                          i32.store
                          local.get 8
                          local.get 1
                          i32.add
                          local.tee 1
                          local.get 6
                          i32.const 3
                          i32.or
                          i32.store offset=4
                          local.get 7
                          local.get 7
                          i32.load offset=4
                          i32.const 1
                          i32.or
                          i32.store offset=4
                          local.get 1
                          local.get 6
                          call $_RNvMs0_NtCs4Cv9UrsK3vC_8dlmalloc8dlmallocINtB5_8DlmallocNtNtB7_3sys6SystemE13dispose_chunkCsiuDZNDVGlkl_3std
                          br 5 (;@6;)
                        end
                        i32.const 0
                        i32.load offset=1050124
                        local.get 6
                        i32.add
                        local.tee 6
                        local.get 1
                        i32.gt_u
                        br_if 3 (;@7;)
                        br 5 (;@5;)
                      end
                      local.get 3
                      call $_RNvMs0_NtCs4Cv9UrsK3vC_8dlmalloc8dlmallocINtB5_8DlmallocNtNtB7_3sys6SystemE6mallocCsiuDZNDVGlkl_3std
                      local.tee 1
                      br_if 5 (;@4;)
                      br 6 (;@3;)
                    end
                    i32.const 1049288
                    i32.const 46
                    i32.const 1049336
                    call $_RNvNtCs6EU1PHFTFol_4core9panicking5panic
                    unreachable
                  end
                  i32.const 1049352
                  i32.const 46
                  i32.const 1049400
                  call $_RNvNtCs6EU1PHFTFol_4core9panicking5panic
                  unreachable
                end
                local.get 4
                local.get 1
                local.get 5
                i32.const 1
                i32.and
                i32.or
                i32.const 2
                i32.or
                i32.store
                local.get 8
                local.get 1
                i32.add
                local.tee 7
                local.get 6
                local.get 1
                i32.sub
                local.tee 1
                i32.const 1
                i32.or
                i32.store offset=4
                i32.const 0
                local.get 1
                i32.store offset=1050124
                i32.const 0
                local.get 7
                i32.store offset=1050132
              end
              local.get 8
              i32.eqz
              br_if 0 (;@5;)
              local.get 2
              local.set 1
              br 1 (;@4;)
            end
            local.get 3
            call $_RNvMs0_NtCs4Cv9UrsK3vC_8dlmalloc8dlmallocINtB5_8DlmallocNtNtB7_3sys6SystemE6mallocCsiuDZNDVGlkl_3std
            local.tee 1
            i32.eqz
            br_if 1 (;@3;)
            block  ;; label = @5
              local.get 3
              i32.const -4
              i32.const -8
              local.get 4
              i32.load
              local.tee 6
              i32.const 3
              i32.and
              select
              local.get 6
              i32.const -8
              i32.and
              i32.add
              local.tee 6
              local.get 3
              local.get 6
              i32.lt_u
              select
              local.tee 6
              i32.eqz
              br_if 0 (;@5;)
              local.get 1
              local.get 2
              local.get 6
              memory.copy
            end
            local.get 2
            call $_RNvMs0_NtCs4Cv9UrsK3vC_8dlmalloc8dlmallocINtB5_8DlmallocNtNtB7_3sys6SystemE4freeCsiuDZNDVGlkl_3std
          end
          local.get 0
          local.get 1
          i32.store offset=4
          i32.const 0
          local.set 1
          br 1 (;@2;)
        end
        i32.const 1
        local.set 1
        local.get 0
        i32.const 1
        i32.store offset=4
      end
      i32.const 8
      local.set 2
    end
    local.get 0
    local.get 2
    i32.add
    local.get 3
    i32.store
    local.get 0
    local.get 1
    i32.store)
  (func $_RINvNtCs6EU1PHFTFol_4core3ptr9drop_glueNtNtCs8YPOlzcMnTl_5alloc6string6StringECsiuDZNDVGlkl_3std (type 4) (param i32)
    (local i32)
    block  ;; label = @1
      local.get 0
      i32.load
      local.tee 1
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      i32.load offset=4
      local.get 1
      call $_RNvCsit533lh8FIi_7___rustc14___rust_dealloc
    end)
  (func $_RNvXNtCs6EU1PHFTFol_4core3anyNtNtCs8YPOlzcMnTl_5alloc6string6StringNtB2_3Any7type_idCsiuDZNDVGlkl_3std (type 3) (param i32 i32)
    local.get 0
    i32.const 0
    i64.load offset=1049280 align=4
    i64.store offset=8 align=4
    local.get 0
    i32.const 0
    i64.load offset=1049272 align=4
    i64.store align=4)
  (func $_RNvXsZ_NtCs8YPOlzcMnTl_5alloc6stringNtB5_6StringNtNtCs6EU1PHFTFol_4core3fmt5Write9write_str.62 (type 2) (param i32 i32 i32) (result i32)
    (local i32)
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 2
          local.get 0
          i32.load
          local.get 0
          i32.load offset=8
          local.tee 3
          i32.sub
          i32.le_u
          br_if 0 (;@3;)
          local.get 0
          local.get 3
          local.get 2
          call $_RINvNvMs2_NtCs8YPOlzcMnTl_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsiuDZNDVGlkl_3std
          local.get 0
          i32.load offset=8
          local.set 3
          br 1 (;@2;)
        end
        local.get 2
        i32.eqz
        br_if 1 (;@1;)
      end
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
    i32.store offset=8
    i32.const 0)
  (func $_RNvXsZ_NtCs8YPOlzcMnTl_5alloc6stringNtB5_6StringNtNtCs6EU1PHFTFol_4core3fmt5Write10write_char.63 (type 1) (param i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32)
    local.get 0
    i32.load offset=8
    local.set 2
    block  ;; label = @1
      block  ;; label = @2
        local.get 1
        i32.const 128
        i32.ge_u
        br_if 0 (;@2;)
        i32.const 1
        local.set 3
        br 1 (;@1;)
      end
      block  ;; label = @2
        local.get 1
        i32.const 2048
        i32.ge_u
        br_if 0 (;@2;)
        i32.const 2
        local.set 3
        br 1 (;@1;)
      end
      i32.const 3
      i32.const 4
      local.get 1
      i32.const 65536
      i32.lt_u
      select
      local.set 3
    end
    block  ;; label = @1
      local.get 3
      local.get 0
      i32.load
      local.get 2
      i32.sub
      i32.le_u
      br_if 0 (;@1;)
      local.get 0
      local.get 2
      local.get 3
      call $_RINvNvMs2_NtCs8YPOlzcMnTl_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsiuDZNDVGlkl_3std
    end
    local.get 0
    i32.load offset=4
    local.get 2
    i32.add
    local.set 4
    block  ;; label = @1
      block  ;; label = @2
        local.get 1
        i32.const 128
        i32.lt_u
        br_if 0 (;@2;)
        local.get 1
        i32.const 63
        i32.and
        i32.const -128
        i32.or
        local.set 5
        local.get 1
        i32.const 6
        i32.shr_u
        local.set 6
        block  ;; label = @3
          local.get 1
          i32.const 2048
          i32.ge_u
          br_if 0 (;@3;)
          local.get 4
          local.get 5
          i32.store8 offset=1
          local.get 4
          local.get 6
          i32.const 192
          i32.or
          i32.store8
          br 2 (;@1;)
        end
        local.get 1
        i32.const 12
        i32.shr_u
        local.set 7
        local.get 6
        i32.const 63
        i32.and
        i32.const -128
        i32.or
        local.set 6
        block  ;; label = @3
          local.get 1
          i32.const 65535
          i32.gt_u
          br_if 0 (;@3;)
          local.get 4
          local.get 5
          i32.store8 offset=2
          local.get 4
          local.get 6
          i32.store8 offset=1
          local.get 4
          local.get 7
          i32.const 224
          i32.or
          i32.store8
          br 2 (;@1;)
        end
        local.get 4
        local.get 5
        i32.store8 offset=3
        local.get 4
        local.get 6
        i32.store8 offset=2
        local.get 4
        local.get 7
        i32.const 63
        i32.and
        i32.const -128
        i32.or
        i32.store8 offset=1
        local.get 4
        local.get 1
        i32.const 18
        i32.shr_u
        i32.const -16
        i32.or
        i32.store8
        br 1 (;@1;)
      end
      local.get 4
      local.get 1
      i32.store8
    end
    local.get 0
    local.get 3
    local.get 2
    i32.add
    i32.store offset=8
    i32.const 0)
  (func $_RNvYNtNtCs8YPOlzcMnTl_5alloc6string6StringNtNtCs6EU1PHFTFol_4core3fmt5Write9write_fmtCsiuDZNDVGlkl_3std (type 2) (param i32 i32 i32) (result i32)
    local.get 0
    i32.const 1049176
    local.get 1
    local.get 2
    call $_RNvNtCs6EU1PHFTFol_4core3fmt5write)
  (func $_RNvMs0_NtCs4Cv9UrsK3vC_8dlmalloc8dlmallocINtB5_8DlmallocNtNtB7_3sys6SystemE12unlink_chunkCsiuDZNDVGlkl_3std (type 3) (param i32 i32)
    (local i32 i32 i32 i32)
    local.get 0
    i32.load offset=12
    local.set 2
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            local.get 1
            i32.const 256
            i32.lt_u
            br_if 0 (;@4;)
            local.get 0
            i32.load offset=24
            local.set 3
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  local.get 2
                  local.get 0
                  i32.ne
                  br_if 0 (;@7;)
                  local.get 0
                  i32.const 20
                  i32.const 16
                  local.get 0
                  i32.load offset=20
                  local.tee 2
                  select
                  i32.add
                  i32.load
                  local.tee 1
                  br_if 1 (;@6;)
                  i32.const 0
                  local.set 2
                  br 2 (;@5;)
                end
                local.get 0
                i32.load offset=8
                local.tee 1
                local.get 2
                i32.store offset=12
                local.get 2
                local.get 1
                i32.store offset=8
                br 1 (;@5;)
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
              loop  ;; label = @6
                local.get 4
                local.set 5
                local.get 1
                local.tee 2
                i32.const 20
                i32.add
                local.get 2
                i32.const 16
                i32.add
                local.get 2
                i32.load offset=20
                local.tee 1
                select
                local.set 4
                local.get 2
                i32.const 20
                i32.const 16
                local.get 1
                select
                i32.add
                i32.load
                local.tee 1
                br_if 0 (;@6;)
              end
              local.get 5
              i32.const 0
              i32.store
            end
            local.get 3
            i32.eqz
            br_if 2 (;@2;)
            block  ;; label = @5
              block  ;; label = @6
                local.get 0
                local.get 0
                i32.load offset=28
                i32.const 2
                i32.shl
                i32.const 1049704
                i32.add
                local.tee 1
                i32.load
                i32.eq
                br_if 0 (;@6;)
                local.get 3
                i32.load offset=16
                local.get 0
                i32.eq
                br_if 1 (;@5;)
                local.get 3
                local.get 2
                i32.store offset=20
                local.get 2
                br_if 3 (;@3;)
                br 4 (;@2;)
              end
              local.get 1
              local.get 2
              i32.store
              local.get 2
              i32.eqz
              br_if 4 (;@1;)
              br 2 (;@3;)
            end
            local.get 3
            local.get 2
            i32.store offset=16
            local.get 2
            br_if 1 (;@3;)
            br 2 (;@2;)
          end
          block  ;; label = @4
            local.get 2
            local.get 0
            i32.load offset=8
            local.tee 4
            i32.eq
            br_if 0 (;@4;)
            local.get 4
            local.get 2
            i32.store offset=12
            local.get 2
            local.get 4
            i32.store offset=8
            return
          end
          i32.const 0
          i32.const 0
          i32.load offset=1050112
          i32.const -2
          local.get 1
          i32.const 3
          i32.shr_u
          i32.rotl
          i32.and
          i32.store offset=1050112
          return
        end
        local.get 2
        local.get 3
        i32.store offset=24
        block  ;; label = @3
          local.get 0
          i32.load offset=16
          local.tee 1
          i32.eqz
          br_if 0 (;@3;)
          local.get 2
          local.get 1
          i32.store offset=16
          local.get 1
          local.get 2
          i32.store offset=24
        end
        local.get 0
        i32.load offset=20
        local.tee 1
        i32.eqz
        br_if 0 (;@2;)
        local.get 2
        local.get 1
        i32.store offset=20
        local.get 1
        local.get 2
        i32.store offset=24
        return
      end
      return
    end
    i32.const 0
    i32.const 0
    i32.load offset=1050116
    i32.const -2
    local.get 0
    i32.load offset=28
    i32.rotl
    i32.and
    i32.store offset=1050116)
  (func $_RNvMs0_NtCs4Cv9UrsK3vC_8dlmalloc8dlmallocINtB5_8DlmallocNtNtB7_3sys6SystemE13dispose_chunkCsiuDZNDVGlkl_3std (type 3) (param i32 i32)
    (local i32 i32)
    local.get 0
    local.get 1
    i32.add
    local.set 2
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 0
          i32.load offset=4
          local.tee 3
          i32.const 1
          i32.and
          br_if 0 (;@3;)
          local.get 3
          i32.const 2
          i32.and
          i32.eqz
          br_if 1 (;@2;)
          local.get 0
          i32.load
          local.tee 3
          local.get 1
          i32.add
          local.set 1
          block  ;; label = @4
            local.get 0
            local.get 3
            i32.sub
            local.tee 0
            i32.const 0
            i32.load offset=1050128
            i32.ne
            br_if 0 (;@4;)
            local.get 2
            i32.load offset=4
            i32.const 3
            i32.and
            i32.const 3
            i32.ne
            br_if 1 (;@3;)
            i32.const 0
            local.get 1
            i32.store offset=1050120
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
          local.get 3
          call $_RNvMs0_NtCs4Cv9UrsK3vC_8dlmalloc8dlmallocINtB5_8DlmallocNtNtB7_3sys6SystemE12unlink_chunkCsiuDZNDVGlkl_3std
        end
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              local.get 2
              i32.load offset=4
              local.tee 3
              i32.const 2
              i32.and
              br_if 0 (;@5;)
              local.get 2
              i32.const 0
              i32.load offset=1050132
              i32.eq
              br_if 2 (;@3;)
              local.get 2
              i32.const 0
              i32.load offset=1050128
              i32.eq
              br_if 4 (;@1;)
              local.get 2
              local.get 3
              i32.const -8
              i32.and
              local.tee 3
              call $_RNvMs0_NtCs4Cv9UrsK3vC_8dlmalloc8dlmallocINtB5_8DlmallocNtNtB7_3sys6SystemE12unlink_chunkCsiuDZNDVGlkl_3std
              local.get 0
              local.get 3
              local.get 1
              i32.add
              local.tee 1
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
              i32.load offset=1050128
              i32.ne
              br_if 1 (;@4;)
              i32.const 0
              local.get 1
              i32.store offset=1050120
              return
            end
            local.get 2
            local.get 3
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
          block  ;; label = @4
            local.get 1
            i32.const 256
            i32.lt_u
            br_if 0 (;@4;)
            local.get 0
            local.get 1
            call $_RNvMs0_NtCs4Cv9UrsK3vC_8dlmalloc8dlmallocINtB5_8DlmallocNtNtB7_3sys6SystemE18insert_large_chunkCsiuDZNDVGlkl_3std
            return
          end
          block  ;; label = @4
            block  ;; label = @5
              i32.const 0
              i32.load offset=1050112
              local.tee 2
              i32.const 1
              local.get 1
              i32.const 3
              i32.shr_u
              i32.shl
              local.tee 3
              i32.and
              br_if 0 (;@5;)
              i32.const 0
              local.get 2
              local.get 3
              i32.or
              i32.store offset=1050112
              local.get 1
              i32.const 248
              i32.and
              i32.const 1049848
              i32.add
              local.tee 1
              local.set 2
              br 1 (;@4;)
            end
            local.get 1
            i32.const 248
            i32.and
            local.tee 1
            i32.const 1049848
            i32.add
            local.set 2
            local.get 1
            i32.const 1049856
            i32.add
            i32.load
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
        i32.const 0
        local.get 0
        i32.store offset=1050132
        i32.const 0
        i32.const 0
        i32.load offset=1050124
        local.get 1
        i32.add
        local.tee 1
        i32.store offset=1050124
        local.get 0
        local.get 1
        i32.const 1
        i32.or
        i32.store offset=4
        local.get 0
        i32.const 0
        i32.load offset=1050128
        i32.ne
        br_if 0 (;@2;)
        i32.const 0
        i32.const 0
        i32.store offset=1050120
        i32.const 0
        i32.const 0
        i32.store offset=1050128
      end
      return
    end
    i32.const 0
    local.get 0
    i32.store offset=1050128
    i32.const 0
    i32.const 0
    i32.load offset=1050120
    local.get 1
    i32.add
    local.tee 1
    i32.store offset=1050120
    local.get 0
    local.get 1
    i32.const 1
    i32.or
    i32.store offset=4
    local.get 0
    local.get 1
    i32.add
    local.get 1
    i32.store)
  (func $_RNvXs2_NvNtCsiuDZNDVGlkl_3std9panicking13panic_handlerNtB5_16StaticStrPayloadNtNtCs6EU1PHFTFol_4core3fmt7Display3fmt (type 1) (param i32 i32) (result i32)
    local.get 1
    i32.load
    local.get 0
    i32.load
    local.get 0
    i32.load offset=4
    local.get 1
    i32.load offset=4
    i32.load offset=12
    call_indirect (type 2))
  (func $_RNvXs1_NvNtCsiuDZNDVGlkl_3std9panicking13panic_handlerNtB5_16StaticStrPayloadNtNtCs6EU1PHFTFol_4core5panic12PanicPayload8take_box (type 3) (param i32 i32)
    (local i32 i32)
    local.get 1
    i32.load offset=4
    local.set 2
    local.get 1
    i32.load
    local.set 3
    block  ;; label = @1
      i32.const 8
      call $_RNvMs0_NtCs4Cv9UrsK3vC_8dlmalloc8dlmallocINtB5_8DlmallocNtNtB7_3sys6SystemE6mallocCsiuDZNDVGlkl_3std
      local.tee 1
      br_if 0 (;@1;)
      i32.const 4
      i32.const 8
      call $_RNvNtCs8YPOlzcMnTl_5alloc5alloc18handle_alloc_error
      unreachable
    end
    local.get 1
    local.get 2
    i32.store offset=4
    local.get 1
    local.get 3
    i32.store
    local.get 0
    i32.const 1049564
    i32.store offset=4
    local.get 0
    local.get 1
    i32.store)
  (func $_RNvXs1_NvNtCsiuDZNDVGlkl_3std9panicking13panic_handlerNtB5_16StaticStrPayloadNtNtCs6EU1PHFTFol_4core5panic12PanicPayload3get (type 3) (param i32 i32)
    local.get 0
    i32.const 1049564
    i32.store offset=4
    local.get 0
    local.get 1
    i32.store)
  (func $_RNvXs1_NvNtCsiuDZNDVGlkl_3std9panicking13panic_handlerNtB5_16StaticStrPayloadNtNtCs6EU1PHFTFol_4core5panic12PanicPayload6as_str (type 3) (param i32 i32)
    local.get 0
    local.get 1
    i64.load align=4
    i64.store)
  (func $_RNvMs0_NtCs4Cv9UrsK3vC_8dlmalloc8dlmallocINtB5_8DlmallocNtNtB7_3sys6SystemE18insert_large_chunkCsiuDZNDVGlkl_3std (type 3) (param i32 i32)
    (local i32 i32 i32 i32)
    i32.const 31
    local.set 2
    block  ;; label = @1
      local.get 1
      i32.const 16777216
      i32.ge_u
      br_if 0 (;@1;)
      local.get 1
      i32.const 38
      local.get 1
      i32.const 8
      i32.shr_u
      i32.clz
      local.tee 2
      i32.sub
      i32.shr_u
      i32.const 1
      i32.and
      local.get 2
      i32.const 1
      i32.shl
      i32.or
      i32.const 62
      i32.xor
      local.set 2
    end
    local.get 0
    i64.const 0
    i64.store offset=16 align=4
    local.get 0
    local.get 2
    i32.store offset=28
    local.get 2
    i32.const 2
    i32.shl
    i32.const 1049704
    i32.add
    local.set 3
    block  ;; label = @1
      i32.const 0
      i32.load offset=1050116
      i32.const 1
      local.get 2
      i32.shl
      local.tee 4
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
      i32.const 0
      i32.load offset=1050116
      local.get 4
      i32.or
      i32.store offset=1050116
      return
    end
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 3
          i32.load
          local.tee 4
          i32.load offset=4
          i32.const -8
          i32.and
          local.get 1
          i32.ne
          br_if 0 (;@3;)
          local.get 4
          local.set 2
          br 1 (;@2;)
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
        local.set 3
        loop  ;; label = @3
          local.get 4
          local.get 3
          i32.const 29
          i32.shr_u
          i32.const 4
          i32.and
          i32.add
          local.tee 5
          i32.load offset=16
          local.tee 2
          i32.eqz
          br_if 2 (;@1;)
          local.get 3
          i32.const 1
          i32.shl
          local.set 3
          local.get 2
          local.set 4
          local.get 2
          i32.load offset=4
          i32.const -8
          i32.and
          local.get 1
          i32.ne
          br_if 0 (;@3;)
        end
      end
      local.get 2
      i32.load offset=8
      local.tee 3
      local.get 0
      i32.store offset=12
      local.get 2
      local.get 0
      i32.store offset=8
      local.get 0
      i32.const 0
      i32.store offset=24
      local.get 0
      local.get 2
      i32.store offset=12
      local.get 0
      local.get 3
      i32.store offset=8
      return
    end
    local.get 5
    i32.const 16
    i32.add
    local.get 0
    i32.store
    local.get 0
    local.get 4
    i32.store offset=24
    local.get 0
    local.get 0
    i32.store offset=12
    local.get 0
    local.get 0
    i32.store offset=8)
  (func $_RNvNtCsiuDZNDVGlkl_3std5alloc8rust_oom (type 3) (param i32 i32)
    local.get 0
    local.get 1
    call $_RINvNtNtCsiuDZNDVGlkl_3std3sys9backtrace26___rust_end_short_backtraceNCNvNtB6_5alloc8rust_oom0zEB6_
    unreachable)
  (func $main (type 1) (param i32 i32) (result i32)
    call $__original_main)
  (table (;0;) 19 19 funcref)
  (memory (;0;) 17)
  (global $__stack_pointer (mut i32) (i32.const 1048576))
  (export "memory" (memory 0))
  (export "main" (func $main))
  (elem (;0;) (i32.const 1) func $_RNvCshnbvUaKcrCY_26casperguard_build_contract4main $_RNvXsr_NtCs6EU1PHFTFol_4core4cellNtB5_14BorrowMutErrorNtNtB7_3fmt7Display3fmt $_RNvXs1i_NtCs6EU1PHFTFol_4core3fmtReNtB6_7Display3fmtB8_ $_RINvNtCs6EU1PHFTFol_4core3ptr9drop_glueNtNtCs8YPOlzcMnTl_5alloc6string6StringECsiuDZNDVGlkl_3std $_RNvXsZ_NtCs8YPOlzcMnTl_5alloc6stringNtB5_6StringNtNtCs6EU1PHFTFol_4core3fmt5Write9write_str.62 $_RNvXsZ_NtCs8YPOlzcMnTl_5alloc6stringNtB5_6StringNtNtCs6EU1PHFTFol_4core3fmt5Write10write_char.63 $_RNvYNtNtCs8YPOlzcMnTl_5alloc6string6StringNtNtCs6EU1PHFTFol_4core3fmt5Write9write_fmtCsiuDZNDVGlkl_3std $_RNvXs2_NvNtCsiuDZNDVGlkl_3std9panicking13panic_handlerNtB5_16StaticStrPayloadNtNtCs6EU1PHFTFol_4core3fmt7Display3fmt $_RNvXs1_NvNtCsiuDZNDVGlkl_3std9panicking13panic_handlerNtB5_16StaticStrPayloadNtNtCs6EU1PHFTFol_4core5panic12PanicPayload8take_box $_RNvXs1_NvNtCsiuDZNDVGlkl_3std9panicking13panic_handlerNtB5_16StaticStrPayloadNtNtCs6EU1PHFTFol_4core5panic12PanicPayload3get $_RNvXs1_NvNtCsiuDZNDVGlkl_3std9panicking13panic_handlerNtB5_16StaticStrPayloadNtNtCs6EU1PHFTFol_4core5panic12PanicPayload6as_str $_RINvNtCs6EU1PHFTFol_4core3ptr9drop_glueNtNvNtCsiuDZNDVGlkl_3std9panicking13panic_handler19FormatStringPayloadEBH_ $_RNvXs0_NvNtCsiuDZNDVGlkl_3std9panicking13panic_handlerNtB5_19FormatStringPayloadNtNtCs6EU1PHFTFol_4core3fmt7Display3fmt $_RNvXs_NvNtCsiuDZNDVGlkl_3std9panicking13panic_handlerNtB4_19FormatStringPayloadNtNtCs6EU1PHFTFol_4core5panic12PanicPayload8take_box $_RNvXs_NvNtCsiuDZNDVGlkl_3std9panicking13panic_handlerNtB4_19FormatStringPayloadNtNtCs6EU1PHFTFol_4core5panic12PanicPayload3get $_RNvYINtNvNtCsiuDZNDVGlkl_3std9panicking11begin_panic7PayloadReENtNtCs6EU1PHFTFol_4core5panic12PanicPayload6as_strB9_ $_RNvXNtCs6EU1PHFTFol_4core3anyReNtB2_3Any7type_idCsiuDZNDVGlkl_3std $_RNvXNtCs6EU1PHFTFol_4core3anyNtNtCs8YPOlzcMnTl_5alloc6string6StringNtB2_3Any7type_idCsiuDZNDVGlkl_3std)
  (data $.rodata (i32.const 1048576) "\c0\00/rustc/b354133fb126352871bea4b40795a45739adff2b/library/std/src/rt.rs\00/rustc/b354133fb126352871bea4b40795a45739adff2b/library/std/src/sys/sync/rwlock/no_threads.rs\00/rustc/b354133fb126352871bea4b40795a45739adff2b/library/std/src/io/stdio.rs\00/rustc/b354133fb126352871bea4b40795a45739adff2b/library/alloc/src/raw_vec/mod.rs\00/rustc/b354133fb126352871bea4b40795a45739adff2b/library/std/src/thread/id.rs\00/rust/deps/dlmalloc-0.2.13/src/dlmalloc.rs\00capacity overflow\f2\00\10\00P\00\00\00\1c\00\00\00\05\00\00\00RefCell already borrowedOnce instance has previously been poisonedone-time initialization may not be performed recursively\00\00\04\00\00\00\0c\00\00\00\04\00\00\00\05\00\00\00\06\00\00\00\07\00\00\00\00\00\00\00\08\00\00\00\04\00\00\00\08\00\00\00\09\00\00\00\0a\00\00\00\0b\00\00\00\0c\00\00\00\10\00\00\00\04\00\00\00\0d\00\00\00\0e\00\00\00\0f\00\00\00\10\00\00\00\5c\f6\e9_\dc\02\f6\b9\f1\c1pl\f2a\c1$Ie\18\ad\14\a0\006>\01\d7\00,\c7,Wassertion failed: psize >= size + min_overhead\00\00\90\01\10\00*\00\00\00\b1\04\00\00\09\00\00\00assertion failed: psize <= size + max_overhead\00\00\90\01\10\00*\00\00\00\b7\04\00\00\0d\00\00\00rwlock overflowed read locksH\00\10\00]\00\00\00\15\00\00\00,\00\00\00\02\00\10\00E\00\00\00\8d\00\00\00\0d\00\00\00\a6\00\10\00K\00\00\00\e4\02\00\00\13\00\00\00failed to generate unique thread ID: bitspace exhausted\00C\01\10\00L\00\00\00&\00\00\00\0d\00\00\00\00\00\00\00\08\00\00\00\04\00\00\00\11\00\00\00\04\00\00\00\0c\00\00\00\04\00\00\00\12\00\00\00rwlock has not been locked for reading\00\00H\00\10\00]\00\00\00>\00\00\00\09\00\00\00"))
