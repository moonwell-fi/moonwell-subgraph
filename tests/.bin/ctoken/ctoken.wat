(module
  (type (;0;) (func (param i32) (result i32)))
  (type (;1;) (func (param i32)))
  (type (;2;) (func (param i32 i32 i32)))
  (type (;3;) (func (param i32 i32) (result i32)))
  (type (;4;) (func))
  (type (;5;) (func (param i32 i32 i32 i32)))
  (type (;6;) (func (param i32 i32)))
  (import "env" "abort" (func $~lib/builtins/abort (type 5)))
  (import "conversion" "typeConversion.stringToH160" (func $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.stringToH160 (type 0)))
  (import "numbers" "bigDecimal.fromString" (func $~lib/@graphprotocol/graph-ts/common/numbers/bigDecimal.fromString (type 0)))
  (import "numbers" "bigInt.times" (func $~lib/@graphprotocol/graph-ts/common/numbers/bigInt.times (type 3)))
  (import "numbers" "bigInt.fromString" (func $~lib/@graphprotocol/graph-ts/common/numbers/bigInt.fromString (type 0)))
  (func $~lib/rt/stub/__alloc (type 0) (param i32) (result i32)
    (local i32 i32 i32 i32 i32)
    local.get 0
    i32.const 1073741820
    i32.gt_u
    if  ;; label = @1
      i32.const 1056
      i32.const 1120
      i32.const 33
      i32.const 29
      call $~lib/builtins/abort
      unreachable
    end
    global.get $~lib/rt/stub/offset
    local.tee 3
    i32.const 4
    i32.add
    local.tee 4
    local.get 0
    i32.const 19
    i32.add
    i32.const -16
    i32.and
    i32.const 4
    i32.sub
    local.tee 5
    i32.add
    local.tee 0
    memory.size
    local.tee 2
    i32.const 16
    i32.shl
    i32.const 15
    i32.add
    i32.const -16
    i32.and
    local.tee 1
    i32.gt_u
    if  ;; label = @1
      local.get 2
      local.get 0
      local.get 1
      i32.sub
      i32.const 65535
      i32.add
      i32.const -65536
      i32.and
      i32.const 16
      i32.shr_u
      local.tee 1
      local.get 1
      local.get 2
      i32.lt_s
      select
      memory.grow
      i32.const 0
      i32.lt_s
      if  ;; label = @2
        local.get 1
        memory.grow
        i32.const 0
        i32.lt_s
        if  ;; label = @3
          unreachable
        end
      end
    end
    local.get 0
    global.set $~lib/rt/stub/offset
    local.get 3
    local.get 5
    i32.store
    local.get 4)
  (func $~lib/rt/stub/__new (type 3) (param i32 i32) (result i32)
    (local i32 i32)
    local.get 0
    i32.const 1073741804
    i32.gt_u
    if  ;; label = @1
      i32.const 1056
      i32.const 1120
      i32.const 86
      i32.const 30
      call $~lib/builtins/abort
      unreachable
    end
    local.get 0
    i32.const 16
    i32.add
    call $~lib/rt/stub/__alloc
    local.tee 3
    i32.const 4
    i32.sub
    local.tee 2
    i32.const 0
    i32.store offset=4
    local.get 2
    i32.const 0
    i32.store offset=8
    local.get 2
    local.get 1
    i32.store offset=12
    local.get 2
    local.get 0
    i32.store offset=16
    local.get 3
    i32.const 16
    i32.add)
  (func $~lib/memory/memory.fill (type 6) (param i32 i32)
    (local i32)
    block  ;; label = @1
      local.get 1
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      i32.const 0
      i32.store8
      local.get 0
      local.get 1
      i32.add
      local.tee 2
      i32.const 1
      i32.sub
      i32.const 0
      i32.store8
      local.get 1
      i32.const 2
      i32.le_u
      br_if 0 (;@1;)
      local.get 0
      i32.const 0
      i32.store8 offset=1
      local.get 0
      i32.const 0
      i32.store8 offset=2
      local.get 2
      i32.const 2
      i32.sub
      i32.const 0
      i32.store8
      local.get 2
      i32.const 3
      i32.sub
      i32.const 0
      i32.store8
      local.get 1
      i32.const 6
      i32.le_u
      br_if 0 (;@1;)
      local.get 0
      i32.const 0
      i32.store8 offset=3
      local.get 2
      i32.const 4
      i32.sub
      i32.const 0
      i32.store8
      local.get 1
      i32.const 8
      i32.le_u
      br_if 0 (;@1;)
      local.get 0
      i32.const 0
      local.get 0
      i32.sub
      i32.const 3
      i32.and
      local.tee 2
      i32.add
      local.tee 0
      i32.const 0
      i32.store
      local.get 0
      local.get 1
      local.get 2
      i32.sub
      i32.const -4
      i32.and
      local.tee 2
      i32.add
      local.tee 1
      i32.const 4
      i32.sub
      i32.const 0
      i32.store
      local.get 2
      i32.const 8
      i32.le_u
      br_if 0 (;@1;)
      local.get 0
      i32.const 0
      i32.store offset=4
      local.get 0
      i32.const 0
      i32.store offset=8
      local.get 1
      i32.const 12
      i32.sub
      i32.const 0
      i32.store
      local.get 1
      i32.const 8
      i32.sub
      i32.const 0
      i32.store
      local.get 2
      i32.const 24
      i32.le_u
      br_if 0 (;@1;)
      local.get 0
      i32.const 0
      i32.store offset=12
      local.get 0
      i32.const 0
      i32.store offset=16
      local.get 0
      i32.const 0
      i32.store offset=20
      local.get 0
      i32.const 0
      i32.store offset=24
      local.get 1
      i32.const 28
      i32.sub
      i32.const 0
      i32.store
      local.get 1
      i32.const 24
      i32.sub
      i32.const 0
      i32.store
      local.get 1
      i32.const 20
      i32.sub
      i32.const 0
      i32.store
      local.get 1
      i32.const 16
      i32.sub
      i32.const 0
      i32.store
      local.get 0
      local.get 0
      i32.const 4
      i32.and
      i32.const 24
      i32.add
      local.tee 1
      i32.add
      local.set 0
      local.get 2
      local.get 1
      i32.sub
      local.set 1
      loop  ;; label = @2
        local.get 1
        i32.const 32
        i32.ge_u
        if  ;; label = @3
          local.get 0
          i64.const 0
          i64.store
          local.get 0
          i64.const 0
          i64.store offset=8
          local.get 0
          i64.const 0
          i64.store offset=16
          local.get 0
          i64.const 0
          i64.store offset=24
          local.get 1
          i32.const 32
          i32.sub
          local.set 1
          local.get 0
          i32.const 32
          i32.add
          local.set 0
          br 1 (;@2;)
        end
      end
    end)
  (func $~lib/typedarray/Uint8Array#__set (type 2) (param i32 i32 i32)
    local.get 1
    local.get 0
    i32.load offset=8
    i32.ge_u
    if  ;; label = @1
      i32.const 2000
      i32.const 2064
      i32.const 175
      i32.const 45
      call $~lib/builtins/abort
      unreachable
    end
    local.get 1
    local.get 0
    i32.load offset=4
    i32.add
    local.get 2
    i32.store8)
  (func $~lib/@graphprotocol/graph-ts/common/collections/ByteArray.fromI32 (type 0) (param i32) (result i32)
    (local i32 i32)
    block (result i32)  ;; label = @1
      block (result i32)  ;; label = @2
        i32.const 12
        i32.const 12
        call $~lib/rt/stub/__new
        local.tee 1
        i32.eqz
        if  ;; label = @3
          i32.const 12
          i32.const 13
          call $~lib/rt/stub/__new
          local.set 1
        end
        local.get 1
      end
      i32.eqz
      if  ;; label = @2
        i32.const 12
        i32.const 2
        call $~lib/rt/stub/__new
        local.set 1
      end
      local.get 1
    end
    i32.const 0
    i32.store
    local.get 1
    i32.const 0
    i32.store offset=4
    local.get 1
    i32.const 0
    i32.store offset=8
    i32.const 4
    i32.const 0
    call $~lib/rt/stub/__new
    local.tee 2
    i32.const 4
    call $~lib/memory/memory.fill
    local.get 1
    local.get 2
    i32.store
    local.get 1
    local.get 2
    i32.store offset=4
    local.get 1
    i32.const 4
    i32.store offset=8
    local.get 1
    i32.const 0
    local.get 0
    i32.const 255
    i32.and
    call $~lib/typedarray/Uint8Array#__set
    local.get 1
    i32.const 1
    local.get 0
    i32.const 8
    i32.shr_s
    i32.const 255
    i32.and
    call $~lib/typedarray/Uint8Array#__set
    local.get 1
    i32.const 2
    local.get 0
    i32.const 16
    i32.shr_s
    i32.const 255
    i32.and
    call $~lib/typedarray/Uint8Array#__set
    local.get 1
    i32.const 3
    local.get 0
    i32.const 24
    i32.shr_s
    call $~lib/typedarray/Uint8Array#__set
    local.get 1)
  (func $~lib/util/memory/memcpy (type 2) (param i32 i32 i32)
    (local i32 i32 i32)
    loop  ;; label = @1
      local.get 1
      i32.const 3
      i32.and
      i32.const 0
      local.get 2
      select
      if  ;; label = @2
        local.get 0
        local.tee 3
        i32.const 1
        i32.add
        local.set 0
        local.get 1
        local.tee 4
        i32.const 1
        i32.add
        local.set 1
        local.get 3
        local.get 4
        i32.load8_u
        i32.store8
        local.get 2
        i32.const 1
        i32.sub
        local.set 2
        br 1 (;@1;)
      end
    end
    local.get 0
    i32.const 3
    i32.and
    i32.eqz
    if  ;; label = @1
      loop  ;; label = @2
        local.get 2
        i32.const 16
        i32.ge_u
        if  ;; label = @3
          local.get 0
          local.get 1
          i32.load
          i32.store
          local.get 0
          local.get 1
          i32.load offset=4
          i32.store offset=4
          local.get 0
          local.get 1
          i32.load offset=8
          i32.store offset=8
          local.get 0
          local.get 1
          i32.load offset=12
          i32.store offset=12
          local.get 1
          i32.const 16
          i32.add
          local.set 1
          local.get 0
          i32.const 16
          i32.add
          local.set 0
          local.get 2
          i32.const 16
          i32.sub
          local.set 2
          br 1 (;@2;)
        end
      end
      local.get 2
      i32.const 8
      i32.and
      if  ;; label = @2
        block (result i32)  ;; label = @3
          local.get 0
          local.get 1
          i32.load
          i32.store
          local.get 0
          local.get 1
          i32.load offset=4
          i32.store offset=4
          local.get 1
          i32.const 8
          i32.add
          local.set 1
          local.get 0
          i32.const 8
          i32.add
        end
        local.set 0
      end
      local.get 2
      i32.const 4
      i32.and
      if  ;; label = @2
        block (result i32)  ;; label = @3
          local.get 0
          local.get 1
          i32.load
          i32.store
          local.get 1
          i32.const 4
          i32.add
          local.set 1
          local.get 0
          i32.const 4
          i32.add
        end
        local.set 0
      end
      local.get 2
      i32.const 2
      i32.and
      if  ;; label = @2
        block (result i32)  ;; label = @3
          local.get 0
          local.get 1
          i32.load16_u
          i32.store16
          local.get 1
          i32.const 2
          i32.add
          local.set 1
          local.get 0
          i32.const 2
          i32.add
        end
        local.set 0
      end
      local.get 2
      i32.const 1
      i32.and
      if  ;; label = @2
        local.get 0
        local.get 1
        i32.load8_u
        i32.store8
      end
      return
    end
    local.get 2
    i32.const 32
    i32.ge_u
    if  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              local.get 0
              i32.const 3
              i32.and
              i32.const 1
              i32.sub
              br_table 0 (;@5;) 1 (;@4;) 2 (;@3;) 3 (;@2;)
            end
            local.get 1
            i32.load
            local.set 5
            local.get 0
            local.get 1
            i32.load8_u
            i32.store8
            local.get 0
            i32.const 1
            i32.add
            local.tee 0
            local.get 1
            i32.const 1
            i32.add
            local.tee 1
            i32.load8_u
            i32.store8
            local.get 0
            local.tee 4
            i32.const 2
            i32.add
            local.set 0
            local.get 1
            local.tee 3
            i32.const 2
            i32.add
            local.set 1
            local.get 4
            local.get 3
            i32.load8_u offset=1
            i32.store8 offset=1
            local.get 2
            i32.const 3
            i32.sub
            local.set 2
            loop  ;; label = @5
              local.get 2
              i32.const 17
              i32.ge_u
              if  ;; label = @6
                local.get 0
                local.get 1
                i32.load offset=1
                local.tee 3
                i32.const 8
                i32.shl
                local.get 5
                i32.const 24
                i32.shr_u
                i32.or
                i32.store
                local.get 0
                local.get 3
                i32.const 24
                i32.shr_u
                local.get 1
                i32.load offset=5
                local.tee 3
                i32.const 8
                i32.shl
                i32.or
                i32.store offset=4
                local.get 0
                local.get 3
                i32.const 24
                i32.shr_u
                local.get 1
                i32.load offset=9
                local.tee 3
                i32.const 8
                i32.shl
                i32.or
                i32.store offset=8
                local.get 0
                local.get 1
                i32.load offset=13
                local.tee 5
                i32.const 8
                i32.shl
                local.get 3
                i32.const 24
                i32.shr_u
                i32.or
                i32.store offset=12
                local.get 1
                i32.const 16
                i32.add
                local.set 1
                local.get 0
                i32.const 16
                i32.add
                local.set 0
                local.get 2
                i32.const 16
                i32.sub
                local.set 2
                br 1 (;@5;)
              end
            end
            br 2 (;@2;)
          end
          local.get 1
          i32.load
          local.set 5
          local.get 0
          local.get 1
          i32.load8_u
          i32.store8
          local.get 0
          local.tee 4
          i32.const 2
          i32.add
          local.set 0
          local.get 1
          local.tee 3
          i32.const 2
          i32.add
          local.set 1
          local.get 4
          local.get 3
          i32.load8_u offset=1
          i32.store8 offset=1
          local.get 2
          i32.const 2
          i32.sub
          local.set 2
          loop  ;; label = @4
            local.get 2
            i32.const 18
            i32.ge_u
            if  ;; label = @5
              local.get 0
              local.get 1
              i32.load offset=2
              local.tee 3
              i32.const 16
              i32.shl
              local.get 5
              i32.const 16
              i32.shr_u
              i32.or
              i32.store
              local.get 0
              local.get 3
              i32.const 16
              i32.shr_u
              local.get 1
              i32.load offset=6
              local.tee 3
              i32.const 16
              i32.shl
              i32.or
              i32.store offset=4
              local.get 0
              local.get 3
              i32.const 16
              i32.shr_u
              local.get 1
              i32.load offset=10
              local.tee 3
              i32.const 16
              i32.shl
              i32.or
              i32.store offset=8
              local.get 0
              local.get 1
              i32.load offset=14
              local.tee 5
              i32.const 16
              i32.shl
              local.get 3
              i32.const 16
              i32.shr_u
              i32.or
              i32.store offset=12
              local.get 1
              i32.const 16
              i32.add
              local.set 1
              local.get 0
              i32.const 16
              i32.add
              local.set 0
              local.get 2
              i32.const 16
              i32.sub
              local.set 2
              br 1 (;@4;)
            end
          end
          br 1 (;@2;)
        end
        local.get 1
        i32.load
        local.set 5
        local.get 0
        local.tee 3
        i32.const 1
        i32.add
        local.set 0
        local.get 1
        local.tee 4
        i32.const 1
        i32.add
        local.set 1
        local.get 3
        local.get 4
        i32.load8_u
        i32.store8
        local.get 2
        i32.const 1
        i32.sub
        local.set 2
        loop  ;; label = @3
          local.get 2
          i32.const 19
          i32.ge_u
          if  ;; label = @4
            local.get 0
            local.get 1
            i32.load offset=3
            local.tee 3
            i32.const 24
            i32.shl
            local.get 5
            i32.const 8
            i32.shr_u
            i32.or
            i32.store
            local.get 0
            local.get 3
            i32.const 8
            i32.shr_u
            local.get 1
            i32.load offset=7
            local.tee 3
            i32.const 24
            i32.shl
            i32.or
            i32.store offset=4
            local.get 0
            local.get 3
            i32.const 8
            i32.shr_u
            local.get 1
            i32.load offset=11
            local.tee 3
            i32.const 24
            i32.shl
            i32.or
            i32.store offset=8
            local.get 0
            local.get 1
            i32.load offset=15
            local.tee 5
            i32.const 24
            i32.shl
            local.get 3
            i32.const 8
            i32.shr_u
            i32.or
            i32.store offset=12
            local.get 1
            i32.const 16
            i32.add
            local.set 1
            local.get 0
            i32.const 16
            i32.add
            local.set 0
            local.get 2
            i32.const 16
            i32.sub
            local.set 2
            br 1 (;@3;)
          end
        end
      end
    end
    local.get 2
    i32.const 16
    i32.and
    if  ;; label = @1
      local.get 0
      local.get 1
      i32.load8_u
      i32.store8
      local.get 0
      i32.const 1
      i32.add
      local.tee 0
      local.get 1
      i32.const 1
      i32.add
      local.tee 1
      i32.load8_u
      i32.store8
      local.get 0
      i32.const 1
      i32.add
      local.tee 0
      local.get 1
      i32.const 1
      i32.add
      local.tee 1
      i32.load8_u
      i32.store8
      local.get 0
      i32.const 1
      i32.add
      local.tee 0
      local.get 1
      i32.const 1
      i32.add
      local.tee 1
      i32.load8_u
      i32.store8
      local.get 0
      i32.const 1
      i32.add
      local.tee 0
      local.get 1
      i32.const 1
      i32.add
      local.tee 1
      i32.load8_u
      i32.store8
      local.get 0
      i32.const 1
      i32.add
      local.tee 0
      local.get 1
      i32.const 1
      i32.add
      local.tee 1
      i32.load8_u
      i32.store8
      local.get 0
      i32.const 1
      i32.add
      local.tee 0
      local.get 1
      i32.const 1
      i32.add
      local.tee 1
      i32.load8_u
      i32.store8
      local.get 0
      i32.const 1
      i32.add
      local.tee 0
      local.get 1
      i32.const 1
      i32.add
      local.tee 1
      i32.load8_u
      i32.store8
      local.get 0
      i32.const 1
      i32.add
      local.tee 0
      local.get 1
      i32.const 1
      i32.add
      local.tee 1
      i32.load8_u
      i32.store8
      local.get 0
      i32.const 1
      i32.add
      local.tee 0
      local.get 1
      i32.const 1
      i32.add
      local.tee 1
      i32.load8_u
      i32.store8
      local.get 0
      i32.const 1
      i32.add
      local.tee 0
      local.get 1
      i32.const 1
      i32.add
      local.tee 1
      i32.load8_u
      i32.store8
      local.get 0
      i32.const 1
      i32.add
      local.tee 0
      local.get 1
      i32.const 1
      i32.add
      local.tee 1
      i32.load8_u
      i32.store8
      local.get 0
      i32.const 1
      i32.add
      local.tee 0
      local.get 1
      i32.const 1
      i32.add
      local.tee 1
      i32.load8_u
      i32.store8
      local.get 0
      i32.const 1
      i32.add
      local.tee 0
      local.get 1
      i32.const 1
      i32.add
      local.tee 1
      i32.load8_u
      i32.store8
      local.get 0
      i32.const 1
      i32.add
      local.tee 0
      local.get 1
      i32.const 1
      i32.add
      local.tee 1
      i32.load8_u
      i32.store8
      local.get 0
      local.tee 4
      i32.const 2
      i32.add
      local.set 0
      local.get 1
      local.tee 3
      i32.const 2
      i32.add
      local.set 1
      local.get 4
      local.get 3
      i32.load8_u offset=1
      i32.store8 offset=1
    end
    local.get 2
    i32.const 8
    i32.and
    if  ;; label = @1
      local.get 0
      local.get 1
      i32.load8_u
      i32.store8
      local.get 0
      i32.const 1
      i32.add
      local.tee 0
      local.get 1
      i32.const 1
      i32.add
      local.tee 1
      i32.load8_u
      i32.store8
      local.get 0
      i32.const 1
      i32.add
      local.tee 0
      local.get 1
      i32.const 1
      i32.add
      local.tee 1
      i32.load8_u
      i32.store8
      local.get 0
      i32.const 1
      i32.add
      local.tee 0
      local.get 1
      i32.const 1
      i32.add
      local.tee 1
      i32.load8_u
      i32.store8
      local.get 0
      i32.const 1
      i32.add
      local.tee 0
      local.get 1
      i32.const 1
      i32.add
      local.tee 1
      i32.load8_u
      i32.store8
      local.get 0
      i32.const 1
      i32.add
      local.tee 0
      local.get 1
      i32.const 1
      i32.add
      local.tee 1
      i32.load8_u
      i32.store8
      local.get 0
      i32.const 1
      i32.add
      local.tee 0
      local.get 1
      i32.const 1
      i32.add
      local.tee 1
      i32.load8_u
      i32.store8
      local.get 0
      local.tee 4
      i32.const 2
      i32.add
      local.set 0
      local.get 1
      local.tee 3
      i32.const 2
      i32.add
      local.set 1
      local.get 4
      local.get 3
      i32.load8_u offset=1
      i32.store8 offset=1
    end
    local.get 2
    i32.const 4
    i32.and
    if  ;; label = @1
      local.get 0
      local.get 1
      i32.load8_u
      i32.store8
      local.get 0
      i32.const 1
      i32.add
      local.tee 0
      local.get 1
      i32.const 1
      i32.add
      local.tee 1
      i32.load8_u
      i32.store8
      local.get 0
      i32.const 1
      i32.add
      local.tee 0
      local.get 1
      i32.const 1
      i32.add
      local.tee 1
      i32.load8_u
      i32.store8
      local.get 0
      local.tee 4
      i32.const 2
      i32.add
      local.set 0
      local.get 1
      local.tee 3
      i32.const 2
      i32.add
      local.set 1
      local.get 4
      local.get 3
      i32.load8_u offset=1
      i32.store8 offset=1
    end
    local.get 2
    i32.const 2
    i32.and
    if  ;; label = @1
      local.get 0
      local.get 1
      i32.load8_u
      i32.store8
      local.get 0
      local.tee 4
      i32.const 2
      i32.add
      local.set 0
      local.get 1
      local.tee 3
      i32.const 2
      i32.add
      local.set 1
      local.get 4
      local.get 3
      i32.load8_u offset=1
      i32.store8 offset=1
    end
    local.get 2
    i32.const 1
    i32.and
    if  ;; label = @1
      local.get 0
      local.get 1
      i32.load8_u
      i32.store8
    end)
  (func $~lib/memory/memory.copy (type 2) (param i32 i32 i32)
    (local i32 i32)
    block  ;; label = @1
      local.get 2
      local.set 4
      local.get 0
      local.get 1
      i32.eq
      br_if 0 (;@1;)
      local.get 1
      local.get 0
      i32.sub
      local.get 4
      i32.sub
      i32.const 0
      local.get 4
      i32.const 1
      i32.shl
      i32.sub
      i32.le_u
      if  ;; label = @2
        local.get 0
        local.get 1
        local.get 4
        call $~lib/util/memory/memcpy
        br 1 (;@1;)
      end
      local.get 0
      local.get 1
      i32.lt_u
      if  ;; label = @2
        local.get 1
        i32.const 7
        i32.and
        local.get 0
        i32.const 7
        i32.and
        i32.eq
        if  ;; label = @3
          loop  ;; label = @4
            local.get 0
            i32.const 7
            i32.and
            if  ;; label = @5
              local.get 4
              i32.eqz
              br_if 4 (;@1;)
              local.get 4
              i32.const 1
              i32.sub
              local.set 4
              local.get 0
              local.tee 2
              i32.const 1
              i32.add
              local.set 0
              local.get 1
              local.tee 3
              i32.const 1
              i32.add
              local.set 1
              local.get 2
              local.get 3
              i32.load8_u
              i32.store8
              br 1 (;@4;)
            end
          end
          loop  ;; label = @4
            local.get 4
            i32.const 8
            i32.ge_u
            if  ;; label = @5
              local.get 0
              local.get 1
              i64.load
              i64.store
              local.get 4
              i32.const 8
              i32.sub
              local.set 4
              local.get 0
              i32.const 8
              i32.add
              local.set 0
              local.get 1
              i32.const 8
              i32.add
              local.set 1
              br 1 (;@4;)
            end
          end
        end
        loop  ;; label = @3
          local.get 4
          if  ;; label = @4
            local.get 0
            local.tee 2
            i32.const 1
            i32.add
            local.set 0
            local.get 1
            local.tee 3
            i32.const 1
            i32.add
            local.set 1
            local.get 2
            local.get 3
            i32.load8_u
            i32.store8
            local.get 4
            i32.const 1
            i32.sub
            local.set 4
            br 1 (;@3;)
          end
        end
      else
        local.get 1
        i32.const 7
        i32.and
        local.get 0
        i32.const 7
        i32.and
        i32.eq
        if  ;; label = @3
          loop  ;; label = @4
            local.get 0
            local.get 4
            i32.add
            i32.const 7
            i32.and
            if  ;; label = @5
              local.get 4
              i32.eqz
              br_if 4 (;@1;)
              local.get 4
              i32.const 1
              i32.sub
              local.tee 4
              local.get 0
              i32.add
              local.get 1
              local.get 4
              i32.add
              i32.load8_u
              i32.store8
              br 1 (;@4;)
            end
          end
          loop  ;; label = @4
            local.get 4
            i32.const 8
            i32.ge_u
            if  ;; label = @5
              local.get 4
              i32.const 8
              i32.sub
              local.tee 4
              local.get 0
              i32.add
              local.get 1
              local.get 4
              i32.add
              i64.load
              i64.store
              br 1 (;@4;)
            end
          end
        end
        loop  ;; label = @3
          local.get 4
          if  ;; label = @4
            local.get 4
            i32.const 1
            i32.sub
            local.tee 4
            local.get 0
            i32.add
            local.get 1
            local.get 4
            i32.add
            i32.load8_u
            i32.store8
            br 1 (;@3;)
          end
        end
      end
    end)
  (func $~lib/@graphprotocol/graph-ts/common/numbers/BigDecimal#constructor (type 1) (param i32)
    (local i32)
    i32.const 8
    i32.const 15
    call $~lib/rt/stub/__new
    local.tee 1
    i32.const 0
    i32.store
    local.get 1
    i32.const 0
    i32.store offset=4
    local.get 1
    local.get 0
    i32.store
    local.get 1
    i32.const 0
    call $~lib/@graphprotocol/graph-ts/common/collections/ByteArray.fromI32
    i32.store offset=4)
  (func $src/helpers/exponentToBigDecimal (type 1) (param i32)
    (local i32 i32 i32)
    i32.const 10
    call $~lib/@graphprotocol/graph-ts/common/collections/ByteArray.fromI32
    local.set 3
    i32.const 1
    call $~lib/@graphprotocol/graph-ts/common/collections/ByteArray.fromI32
    local.set 1
    loop  ;; label = @1
      local.get 0
      local.get 2
      i32.gt_s
      if  ;; label = @2
        local.get 1
        i32.eqz
        if  ;; label = @3
          i32.const 3968
          i32.const 4112
          i32.const 196
          i32.const 5
          call $~lib/builtins/abort
          unreachable
        end
        local.get 1
        local.get 3
        call $~lib/@graphprotocol/graph-ts/common/numbers/bigInt.times
        local.set 1
        local.get 2
        i32.const 1
        i32.add
        local.set 2
        br 1 (;@1;)
      end
    end
    local.get 1
    call $~lib/@graphprotocol/graph-ts/common/numbers/BigDecimal#constructor)
  (func $~lib/string/String#toLowerCase (type 1) (param i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    local.get 0
    i32.const 20
    i32.sub
    i32.load offset=16
    i32.const 1
    i32.shr_u
    local.tee 7
    i32.eqz
    if  ;; label = @1
      return
    end
    local.get 7
    i32.const 2
    i32.shl
    i32.const 1
    call $~lib/rt/stub/__new
    local.set 8
    loop  ;; label = @1
      local.get 4
      local.get 7
      i32.lt_u
      if  ;; label = @2
        local.get 0
        local.get 4
        i32.const 1
        i32.shl
        i32.add
        i32.load16_u
        local.tee 2
        i32.const 7
        i32.shr_u
        if  ;; label = @3
          block  ;; label = @4
            local.get 4
            local.get 7
            i32.const 1
            i32.sub
            i32.lt_u
            i32.const 0
            local.get 2
            i32.const 55295
            i32.sub
            i32.const 1025
            i32.lt_u
            select
            if  ;; label = @5
              local.get 0
              local.get 4
              i32.const 1
              i32.shl
              i32.add
              i32.load16_u offset=2
              local.tee 10
              i32.const 56319
              i32.sub
              i32.const 1025
              i32.lt_u
              if  ;; label = @6
                local.get 4
                i32.const 1
                i32.add
                local.set 4
                local.get 10
                i32.const 1023
                i32.and
                local.get 2
                local.tee 1
                i32.const 1023
                i32.and
                i32.const 10
                i32.shl
                i32.or
                i32.const 65536
                i32.add
                local.tee 2
                i32.const 131072
                i32.ge_u
                if  ;; label = @7
                  local.get 8
                  local.get 9
                  i32.const 1
                  i32.shl
                  i32.add
                  local.get 1
                  local.get 10
                  i32.const 16
                  i32.shl
                  i32.or
                  i32.store
                  local.get 9
                  i32.const 1
                  i32.add
                  local.set 9
                  br 3 (;@4;)
                end
              end
            end
            local.get 2
            i32.const 304
            i32.eq
            if  ;; label = @5
              local.get 8
              local.get 9
              i32.const 1
              i32.shl
              i32.add
              i32.const 50790505
              i32.store
              local.get 9
              i32.const 1
              i32.add
              local.set 9
            else
              local.get 2
              i32.const 931
              i32.eq
              if  ;; label = @6
                local.get 8
                local.get 9
                i32.const 1
                i32.shl
                i32.add
                i32.const 962
                i32.const 963
                local.get 7
                i32.const 1
                i32.gt_u
                if (result i32)  ;; label = @7
                  block (result i32)  ;; label = @8
                    i32.const 0
                    local.set 3
                    i32.const 0
                    local.get 4
                    local.tee 2
                    i32.const 30
                    i32.sub
                    local.tee 1
                    local.get 1
                    i32.const 0
                    i32.lt_s
                    select
                    local.set 5
                    loop  ;; label = @9
                      local.get 2
                      local.get 5
                      i32.gt_s
                      if  ;; label = @10
                        local.get 2
                        local.set 1
                        i32.const -1
                        local.set 2
                        block  ;; label = @11
                          local.get 1
                          i32.const 0
                          i32.le_s
                          br_if 0 (;@11;)
                          local.get 0
                          local.get 1
                          i32.const 1
                          i32.sub
                          i32.const 1
                          i32.shl
                          i32.add
                          i32.load16_u
                          local.tee 10
                          i32.const 64512
                          i32.and
                          i32.const 56320
                          i32.eq
                          local.get 1
                          i32.const 2
                          i32.sub
                          i32.const 0
                          i32.ge_s
                          i32.and
                          if  ;; label = @12
                            local.get 10
                            i32.const 1023
                            i32.and
                            local.get 0
                            local.get 1
                            i32.const 2
                            i32.sub
                            i32.const 1
                            i32.shl
                            i32.add
                            i32.load16_u
                            local.tee 6
                            i32.const 1023
                            i32.and
                            i32.const 10
                            i32.shl
                            i32.add
                            i32.const 65536
                            i32.add
                            local.set 2
                            local.get 6
                            i32.const 64512
                            i32.and
                            i32.const 55296
                            i32.eq
                            br_if 1 (;@11;)
                          end
                          i32.const 65533
                          local.get 10
                          local.get 10
                          i32.const 63488
                          i32.and
                          i32.const 55296
                          i32.eq
                          select
                          local.set 2
                        end
                        local.get 2
                        i32.const 918000
                        i32.lt_u
                        if (result i32)  ;; label = @11
                          local.get 2
                          i32.const 8
                          i32.shr_u
                          i32.const 4556
                          i32.add
                          i32.load8_u
                          i32.const 5
                          i32.shl
                          i32.const 4556
                          i32.add
                          local.get 2
                          i32.const 255
                          i32.and
                          i32.const 3
                          i32.shr_u
                          i32.add
                          i32.load8_u
                          local.get 2
                          i32.const 7
                          i32.and
                          i32.shr_u
                          i32.const 1
                          i32.and
                        else
                          i32.const 0
                        end
                        i32.eqz
                        if  ;; label = @11
                          block (result i32)  ;; label = @12
                            i32.const 0
                            local.get 2
                            i32.const 127370
                            i32.lt_u
                            if (result i32)  ;; label = @13
                              local.get 2
                              i32.const 8
                              i32.shr_u
                              i32.const 7564
                              i32.add
                              i32.load8_u
                              i32.const 5
                              i32.shl
                              i32.const 7564
                              i32.add
                              local.get 2
                              i32.const 255
                              i32.and
                              i32.const 3
                              i32.shr_u
                              i32.add
                              i32.load8_u
                              local.get 2
                              i32.const 7
                              i32.and
                              i32.shr_u
                              i32.const 1
                              i32.and
                            else
                              i32.const 0
                            end
                            i32.eqz
                            br_if 4 (;@8;)
                            drop
                            i32.const 1
                          end
                          local.set 3
                        end
                        local.get 1
                        local.get 2
                        i32.const 65536
                        i32.ge_s
                        i32.const 1
                        i32.add
                        i32.sub
                        local.set 2
                        br 1 (;@9;)
                      end
                    end
                    i32.const 0
                    local.get 3
                    i32.eqz
                    br_if 0 (;@8;)
                    drop
                    local.get 4
                    i32.const 1
                    i32.add
                    local.tee 2
                    i32.const 30
                    i32.add
                    local.tee 1
                    local.get 7
                    local.get 1
                    local.get 7
                    i32.lt_s
                    select
                    local.set 3
                    loop  ;; label = @9
                      local.get 2
                      local.get 3
                      i32.lt_s
                      if  ;; label = @10
                        block (result i32)  ;; label = @11
                          local.get 0
                          local.get 2
                          i32.const 1
                          i32.shl
                          i32.add
                          i32.load16_u
                          local.tee 1
                          i32.const 64512
                          i32.and
                          i32.const 55296
                          i32.eq
                          local.get 7
                          local.get 2
                          i32.const 1
                          i32.add
                          i32.ne
                          i32.and
                          if  ;; label = @12
                            local.get 0
                            local.get 2
                            i32.const 1
                            i32.shl
                            i32.add
                            i32.load16_u offset=2
                            local.tee 10
                            i32.const 64512
                            i32.and
                            i32.const 56320
                            i32.eq
                            if  ;; label = @13
                              local.get 10
                              local.get 1
                              i32.const 10
                              i32.shl
                              i32.add
                              i32.const 56613888
                              i32.sub
                              local.set 1
                            end
                          end
                          local.get 1
                        end
                        i32.const 918000
                        i32.lt_u
                        if (result i32)  ;; label = @11
                          local.get 1
                          i32.const 8
                          i32.shr_u
                          i32.const 4556
                          i32.add
                          i32.load8_u
                          i32.const 5
                          i32.shl
                          i32.const 4556
                          i32.add
                          local.get 1
                          i32.const 255
                          i32.and
                          i32.const 3
                          i32.shr_u
                          i32.add
                          i32.load8_u
                          local.get 1
                          i32.const 7
                          i32.and
                          i32.shr_u
                          i32.const 1
                          i32.and
                        else
                          i32.const 0
                        end
                        i32.eqz
                        if  ;; label = @11
                          local.get 1
                          i32.const 127370
                          i32.lt_u
                          if (result i32)  ;; label = @12
                            local.get 1
                            i32.const 8
                            i32.shr_u
                            i32.const 7564
                            i32.add
                            i32.load8_u
                            i32.const 5
                            i32.shl
                            i32.const 7564
                            i32.add
                            local.get 1
                            i32.const 255
                            i32.and
                            i32.const 3
                            i32.shr_u
                            i32.add
                            i32.load8_u
                            local.get 1
                            i32.const 7
                            i32.and
                            i32.shr_u
                            i32.const 1
                            i32.and
                          else
                            i32.const 0
                          end
                          i32.eqz
                          br 3 (;@8;)
                        end
                        local.get 2
                        local.get 1
                        i32.const 65536
                        i32.ge_u
                        i32.const 1
                        i32.add
                        i32.add
                        local.set 2
                        br 1 (;@9;)
                      end
                    end
                    i32.const 1
                  end
                else
                  i32.const 0
                end
                select
                i32.store16
              else
                local.get 2
                i32.const 9398
                i32.sub
                i32.const 25
                i32.le_u
                if  ;; label = @7
                  local.get 8
                  local.get 9
                  i32.const 1
                  i32.shl
                  i32.add
                  local.get 2
                  i32.const 26
                  i32.add
                  i32.store16
                else
                  local.get 2
                  local.tee 1
                  i32.const 8
                  i32.shr_u
                  local.tee 2
                  i32.const 12772
                  i32.add
                  i32.load8_u
                  local.get 2
                  i32.const 9132
                  i32.add
                  i32.load8_u
                  i32.const 86
                  i32.mul
                  i32.const 9132
                  i32.add
                  local.get 1
                  i32.const 255
                  i32.and
                  local.tee 6
                  i32.const 3
                  i32.div_u
                  i32.add
                  i32.load8_u
                  local.get 6
                  i32.const 3
                  i32.rem_u
                  i32.const 2
                  i32.shl
                  i32.const 11800
                  i32.add
                  i32.load
                  i32.mul
                  i32.const 11
                  i32.shr_u
                  i32.const 6
                  i32.rem_u
                  i32.add
                  i32.const 2
                  i32.shl
                  i32.const 11812
                  i32.add
                  i32.load
                  local.tee 2
                  i32.const 8
                  i32.shr_s
                  local.set 10
                  block  ;; label = @8
                    block  ;; label = @9
                      local.get 2
                      i32.const 255
                      i32.and
                      local.tee 2
                      i32.const 2
                      i32.lt_u
                      br_if 0 (;@9;)
                      local.get 10
                      i32.const 255
                      i32.and
                      local.set 2
                      local.get 10
                      i32.const 8
                      i32.shr_u
                      local.set 3
                      loop  ;; label = @10
                        local.get 2
                        if  ;; label = @11
                          local.get 6
                          local.get 3
                          local.get 2
                          i32.const 1
                          i32.shr_u
                          local.tee 10
                          i32.add
                          i32.const 1
                          i32.shl
                          i32.const 13284
                          i32.add
                          i32.load8_u
                          local.tee 5
                          i32.eq
                          if (result i32)  ;; label = @12
                            local.get 3
                            local.get 10
                            i32.add
                            i32.const 1
                            i32.shl
                            i32.const 13284
                            i32.add
                            i32.load8_u offset=1
                            i32.const 2
                            i32.shl
                            i32.const 11812
                            i32.add
                            i32.load
                            local.tee 2
                            i32.const 8
                            i32.shr_s
                            local.set 10
                            local.get 2
                            i32.const 255
                            i32.and
                            local.tee 2
                            i32.const 2
                            i32.lt_u
                            br_if 3 (;@9;)
                            local.get 1
                            i32.const 1
                            i32.add
                            local.set 1
                            br 4 (;@8;)
                          else
                            local.get 5
                            local.get 6
                            i32.gt_u
                            if (result i32)  ;; label = @13
                              local.get 10
                            else
                              local.get 3
                              local.get 10
                              i32.add
                              local.set 3
                              local.get 2
                              local.get 10
                              i32.sub
                            end
                          end
                          local.set 2
                          br 1 (;@10;)
                        end
                      end
                      br 1 (;@8;)
                    end
                    local.get 1
                    local.get 10
                    i32.const 0
                    local.get 2
                    i32.sub
                    i32.and
                    i32.add
                    local.set 1
                  end
                  local.get 1
                  i32.const 2097151
                  i32.and
                  local.tee 2
                  i32.const 65536
                  i32.lt_u
                  if  ;; label = @8
                    local.get 8
                    local.get 9
                    i32.const 1
                    i32.shl
                    i32.add
                    local.get 2
                    i32.store16
                  else
                    local.get 8
                    local.get 9
                    i32.const 1
                    i32.shl
                    i32.add
                    local.get 2
                    i32.const 65536
                    i32.sub
                    local.tee 2
                    i32.const 10
                    i32.shr_u
                    i32.const 55296
                    i32.or
                    local.get 2
                    i32.const 1023
                    i32.and
                    i32.const 56320
                    i32.or
                    i32.const 16
                    i32.shl
                    i32.or
                    i32.store
                    local.get 9
                    i32.const 1
                    i32.add
                    local.set 9
                  end
                end
              end
            end
          end
        else
          local.get 8
          local.get 9
          i32.const 1
          i32.shl
          i32.add
          local.get 2
          i32.const 4428
          i32.add
          i32.load8_u
          i32.store16
        end
        local.get 4
        i32.const 1
        i32.add
        local.set 4
        local.get 9
        i32.const 1
        i32.add
        local.set 9
        br 1 (;@1;)
      end
    end
    local.get 9
    i32.const 1
    i32.shl
    local.tee 10
    i32.const 1073741804
    i32.gt_u
    if  ;; label = @1
      i32.const 1056
      i32.const 1120
      i32.const 99
      i32.const 30
      call $~lib/builtins/abort
      unreachable
    end
    local.get 10
    i32.const 16
    i32.add
    local.set 1
    local.get 8
    i32.const 16
    i32.sub
    local.tee 0
    i32.const 15
    i32.and
    i32.const 1
    local.get 0
    select
    if  ;; label = @1
      i32.const 0
      i32.const 1120
      i32.const 45
      i32.const 3
      call $~lib/builtins/abort
      unreachable
    end
    global.get $~lib/rt/stub/offset
    local.get 0
    local.get 0
    i32.const 4
    i32.sub
    local.tee 9
    i32.load
    local.tee 4
    i32.add
    i32.eq
    local.set 8
    local.get 1
    i32.const 19
    i32.add
    i32.const -16
    i32.and
    i32.const 4
    i32.sub
    local.set 2
    local.get 1
    local.get 4
    i32.gt_u
    if  ;; label = @1
      local.get 8
      if  ;; label = @2
        local.get 1
        i32.const 1073741820
        i32.gt_u
        if  ;; label = @3
          i32.const 1056
          i32.const 1120
          i32.const 52
          i32.const 33
          call $~lib/builtins/abort
          unreachable
        end
        local.get 0
        local.get 2
        i32.add
        local.tee 1
        memory.size
        local.tee 4
        i32.const 16
        i32.shl
        i32.const 15
        i32.add
        i32.const -16
        i32.and
        local.tee 8
        i32.gt_u
        if  ;; label = @3
          local.get 4
          local.get 1
          local.get 8
          i32.sub
          i32.const 65535
          i32.add
          i32.const -65536
          i32.and
          i32.const 16
          i32.shr_u
          local.tee 8
          local.get 4
          local.get 8
          i32.gt_s
          select
          memory.grow
          i32.const 0
          i32.lt_s
          if  ;; label = @4
            local.get 8
            memory.grow
            i32.const 0
            i32.lt_s
            if  ;; label = @5
              unreachable
            end
          end
        end
        local.get 1
        global.set $~lib/rt/stub/offset
        local.get 9
        local.get 2
        i32.store
      else
        local.get 2
        local.get 4
        i32.const 1
        i32.shl
        local.tee 1
        local.get 1
        local.get 2
        i32.lt_u
        select
        call $~lib/rt/stub/__alloc
        local.tee 2
        local.get 0
        local.get 4
        call $~lib/memory/memory.copy
        local.get 2
        local.set 0
      end
    else
      local.get 8
      if  ;; label = @2
        local.get 0
        local.get 2
        i32.add
        global.set $~lib/rt/stub/offset
        local.get 9
        local.get 2
        i32.store
      end
    end
    local.get 0
    i32.const 4
    i32.sub
    local.get 10
    i32.store offset=16)
  (func $~lib/string/String#repeat (type 0) (param i32) (result i32)
    (local i32 i32 i32 i32 i32)
    local.get 0
    i32.const 20
    i32.sub
    i32.load offset=16
    i32.const 1
    i32.shr_u
    local.tee 1
    i64.extend_i32_s
    i64.const 40
    i64.mul
    i64.const 268435456
    i64.gt_u
    if  ;; label = @1
      i32.const 1728
      i32.const 14432
      i32.const 333
      i32.const 7
      call $~lib/builtins/abort
      unreachable
    end
    local.get 1
    i32.eqz
    if  ;; label = @1
      i32.const 14480
      return
    end
    local.get 1
    i32.const 40
    i32.mul
    i32.const 1
    i32.shl
    i32.const 1
    call $~lib/rt/stub/__new
    local.tee 3
    local.set 4
    local.get 1
    i32.const 1
    i32.shl
    local.tee 1
    i32.const 40
    i32.mul
    local.set 5
    loop  ;; label = @1
      local.get 2
      local.get 5
      i32.lt_u
      if  ;; label = @2
        local.get 2
        local.get 4
        i32.add
        local.get 0
        local.get 1
        call $~lib/memory/memory.copy
        local.get 1
        local.get 2
        i32.add
        local.set 2
        br 1 (;@1;)
      end
    end
    local.get 3)
  (func $~lib/string/String#concat (type 1) (param i32)
    (local i32 i32 i32)
    i32.const 14396
    i32.load
    i32.const 1
    i32.shr_u
    i32.const 1
    i32.shl
    local.tee 2
    local.get 0
    i32.const 20
    i32.sub
    i32.load offset=16
    i32.const 1
    i32.shr_u
    i32.const 1
    i32.shl
    local.tee 3
    i32.add
    local.tee 1
    i32.eqz
    if  ;; label = @1
      return
    end
    local.get 1
    i32.const 1
    call $~lib/rt/stub/__new
    local.tee 1
    i32.const 14400
    local.get 2
    call $~lib/memory/memory.copy
    local.get 1
    local.get 2
    i32.add
    local.get 0
    local.get 3
    call $~lib/memory/memory.copy)
  (func $start:tests/ctoken/ctoken.test (type 4)
    (local i32 i32 i32)
    i32.const 14604
    global.set $~lib/rt/stub/offset
    i32.const 0
    call $~lib/rt/stub/__alloc
    drop
    block (result i32)  ;; label = @1
      block (result i32)  ;; label = @2
        i32.const 4
        i32.const 4
        call $~lib/rt/stub/__new
        local.tee 0
        i32.eqz
        if  ;; label = @3
          i32.const 4
          i32.const 5
          call $~lib/rt/stub/__new
          local.set 0
        end
        local.get 0
      end
      i32.eqz
      if  ;; label = @2
        i32.const 4
        i32.const 7
        call $~lib/rt/stub/__new
        local.set 0
      end
      local.get 0
    end
    i32.const 0
    i32.store
    i32.const 16
    i32.const 9
    call $~lib/rt/stub/__new
    local.tee 1
    i32.const 0
    i32.store
    local.get 1
    i32.const 0
    i32.store offset=4
    local.get 1
    i32.const 0
    i32.store offset=8
    local.get 1
    i32.const 0
    i32.store offset=12
    i32.const 32
    i32.const 0
    call $~lib/rt/stub/__new
    local.tee 2
    i32.const 32
    call $~lib/memory/memory.fill
    local.get 1
    local.get 2
    i32.store
    local.get 1
    local.get 2
    i32.store offset=4
    local.get 1
    i32.const 32
    i32.store offset=8
    local.get 1
    i32.const 0
    i32.store offset=12
    local.get 0
    local.get 1
    i32.store
    i32.const 1824
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.stringToH160
    drop
    i32.const 1
    call $~lib/@graphprotocol/graph-ts/common/collections/ByteArray.fromI32
    drop
    i32.const 1
    call $~lib/@graphprotocol/graph-ts/common/collections/ByteArray.fromI32
    drop
    i32.const 3600
    call $~lib/@graphprotocol/graph-ts/common/collections/ByteArray.fromI32
    drop
    i32.const 3600
    call $~lib/@graphprotocol/graph-ts/common/collections/ByteArray.fromI32
    drop
    i32.const 216000
    call $~lib/@graphprotocol/graph-ts/common/collections/ByteArray.fromI32
    drop
    i32.const 5184000
    call $~lib/@graphprotocol/graph-ts/common/collections/ByteArray.fromI32
    drop
    i32.const 2784
    call $~lib/@graphprotocol/graph-ts/common/numbers/bigDecimal.fromString
    drop
    i32.const 2816
    call $~lib/@graphprotocol/graph-ts/common/numbers/bigDecimal.fromString
    drop
    i32.const 2848
    call $~lib/@graphprotocol/graph-ts/common/numbers/bigDecimal.fromString
    drop
    i32.const 2880
    call $~lib/@graphprotocol/graph-ts/common/numbers/bigDecimal.fromString
    drop
    i32.const 2912
    call $~lib/@graphprotocol/graph-ts/common/numbers/bigDecimal.fromString
    drop
    i32.const -1
    call $~lib/@graphprotocol/graph-ts/common/collections/ByteArray.fromI32
    drop
    i32.const 0
    call $~lib/@graphprotocol/graph-ts/common/collections/ByteArray.fromI32
    drop
    i32.const 1
    call $~lib/@graphprotocol/graph-ts/common/collections/ByteArray.fromI32
    drop
    i32.const 2
    call $~lib/@graphprotocol/graph-ts/common/collections/ByteArray.fromI32
    drop
    i32.const 1000
    call $~lib/@graphprotocol/graph-ts/common/collections/ByteArray.fromI32
    drop
    i32.const -1486618624
    call $~lib/@graphprotocol/graph-ts/common/collections/ByteArray.fromI32
    drop
    i32.const 2944
    call $~lib/@graphprotocol/graph-ts/common/numbers/bigDecimal.fromString
    drop
    i32.const 3008
    call $~lib/@graphprotocol/graph-ts/common/numbers/bigDecimal.fromString
    drop
    i32.const 3088
    call $~lib/@graphprotocol/graph-ts/common/numbers/bigDecimal.fromString
    drop
    i32.const 4
    i32.const 0
    call $~lib/rt/stub/__new
    local.set 1
    i32.const 16
    i32.const 18
    call $~lib/rt/stub/__new
    local.tee 0
    local.get 1
    i32.store
    local.get 0
    local.get 1
    i32.store offset=4
    local.get 0
    i32.const 4
    i32.store offset=8
    local.get 0
    i32.const 1
    i32.store offset=12
    local.get 0
    i32.load offset=4
    drop
    i32.const 12
    i32.const 17
    call $~lib/rt/stub/__new
    local.tee 1
    i32.const 2536028
    i32.store
    local.get 1
    i32.const 3344
    i32.store offset=4
    local.get 1
    i32.const 3680
    i32.store offset=8
    local.get 0
    i32.load offset=4
    local.get 1
    i32.store
    i32.const 32
    i32.const 16
    call $~lib/rt/stub/__new
    local.tee 1
    i32.const 3200
    i32.store
    local.get 1
    i32.const 3312
    i32.store offset=4
    local.get 1
    i32.const 3344
    i32.store offset=8
    local.get 1
    i32.const 3456
    i32.store offset=12
    local.get 1
    i32.const 1512356
    i32.store offset=16
    local.get 1
    i32.const 1
    i32.store offset=20
    local.get 1
    i32.const 3568
    i32.store offset=24
    local.get 1
    local.get 0
    i32.store offset=28
    i32.const 0
    call $~lib/@graphprotocol/graph-ts/common/collections/ByteArray.fromI32
    drop
    i32.const 18
    call $src/helpers/exponentToBigDecimal
    i32.const 8
    call $src/helpers/exponentToBigDecimal
    i32.const 0
    call $~lib/@graphprotocol/graph-ts/common/collections/ByteArray.fromI32
    call $~lib/@graphprotocol/graph-ts/common/numbers/BigDecimal#constructor
    i32.const 0
    call $~lib/@graphprotocol/graph-ts/common/collections/ByteArray.fromI32
    drop
    i32.const 3200
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.stringToH160
    drop
    i32.const 4224
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.stringToH160
    drop
    i32.const 4336
    call $~lib/string/String#toLowerCase
    i32.const 13712
    call $~lib/@graphprotocol/graph-ts/common/numbers/bigInt.fromString
    drop
    i32.const 13776
    call $~lib/string/String#toLowerCase
    i32.const 13888
    call $~lib/string/String#toLowerCase
    i32.const 3680
    call $~lib/string/String#toLowerCase
    i32.const 14000
    call $~lib/string/String#toLowerCase
    i32.const 3344
    call $~lib/string/String#toLowerCase
    i32.const 14144
    call $~lib/string/String#toLowerCase
    i32.const 14256
    call $~lib/string/String#toLowerCase
    i32.const 2848
    call $~lib/string/String#repeat
    call $~lib/string/String#concat
    i32.const 2880
    call $~lib/string/String#repeat
    call $~lib/string/String#concat)
  (func $node_modules/@graphprotocol/graph-ts/global/global/id_of_type (type 0) (param i32) (result i32)
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
                                                  block  ;; label = @24
                                                    block  ;; label = @25
                                                      block  ;; label = @26
                                                        block  ;; label = @27
                                                          block  ;; label = @28
                                                            block  ;; label = @29
                                                              block  ;; label = @30
                                                                block  ;; label = @31
                                                                  block  ;; label = @32
                                                                    block  ;; label = @33
                                                                      block  ;; label = @34
                                                                        block  ;; label = @35
                                                                          block  ;; label = @36
                                                                            block  ;; label = @37
                                                                              block  ;; label = @38
                                                                                block  ;; label = @39
                                                                                  block  ;; label = @40
                                                                                    block  ;; label = @41
                                                                                      block  ;; label = @42
                                                                                        block  ;; label = @43
                                                                                          block  ;; label = @44
                                                                                            block  ;; label = @45
                                                                                              block  ;; label = @46
                                                                                                block  ;; label = @47
                                                                                                  block  ;; label = @48
                                                                                                    block  ;; label = @49
                                                                                                      block  ;; label = @50
                                                                                                        block  ;; label = @51
                                                                                                          block  ;; label = @52
                                                                                                            block  ;; label = @53
                                                                                                              block  ;; label = @54
                                                                                                                block  ;; label = @55
                                                                                                                  block  ;; label = @56
                                                                                                                    block  ;; label = @57
                                                                                                                      block  ;; label = @58
                                                                                                                        block  ;; label = @59
                                                                                                                          block  ;; label = @60
                                                                                                                            block  ;; label = @61
                                                                                                                              block  ;; label = @62
                                                                                                                                block  ;; label = @63
                                                                                                                                  block  ;; label = @64
                                                                                                                                    block  ;; label = @65
                                                                                                                                      block  ;; label = @66
                                                                                                                                        block  ;; label = @67
                                                                                                                                          block  ;; label = @68
                                                                                                                                            block  ;; label = @69
                                                                                                                                              block  ;; label = @70
                                                                                                                                                block  ;; label = @71
                                                                                                                                                  block  ;; label = @72
                                                                                                                                                    block  ;; label = @73
                                                                                                                                                      block  ;; label = @74
                                                                                                                                                        block  ;; label = @75
                                                                                                                                                          block  ;; label = @76
                                                                                                                                                            block  ;; label = @77
                                                                                                                                                              block  ;; label = @78
                                                                                                                                                                block  ;; label = @79
                                                                                                                                                                  block  ;; label = @80
                                                                                                                                                                    block  ;; label = @81
                                                                                                                                                                      block  ;; label = @82
                                                                                                                                                                        block  ;; label = @83
                                                                                                                                                                          block  ;; label = @84
                                                                                                                                                                            block  ;; label = @85
                                                                                                                                                                              block  ;; label = @86
                                                                                                                                                                                block  ;; label = @87
                                                                                                                                                                                  block  ;; label = @88
                                                                                                                                                                                    block  ;; label = @89
                                                                                                                                                                                      block  ;; label = @90
                                                                                                                                                                                        block  ;; label = @91
                                                                                                                                                                                          block  ;; label = @92
                                                                                                                                                                                            block  ;; label = @93
                                                                                                                                                                                              block  ;; label = @94
                                                                                                                                                                                                block  ;; label = @95
                                                                                                                                                                                                  block  ;; label = @96
                                                                                                                                                                                                    block  ;; label = @97
                                                                                                                                                                                                      block  ;; label = @98
                                                                                                                                                                                                        block  ;; label = @99
                                                                                                                                                                                                          block  ;; label = @100
                                                                                                                                                                                                            block  ;; label = @101
                                                                                                                                                                                                              block  ;; label = @102
                                                                                                                                                                                                                block  ;; label = @103
                                                                                                                                                                                                                  block  ;; label = @104
                                                                                                                                                                                                                    block  ;; label = @105
                                                                                                                                                                                                                      block  ;; label = @106
                                                                                                                                                                                                                        block  ;; label = @107
                                                                                                                                                                                                                          block  ;; label = @108
                                                                                                                                                                                                                            block  ;; label = @109
                                                                                                                                                                                                                              block  ;; label = @110
                                                                                                                                                                                                                                block  ;; label = @111
                                                                                                                                                                                                                                  block  ;; label = @112
                                                                                                                                                                                                                                    block  ;; label = @113
                                                                                                                                                                                                                                      block  ;; label = @114
                                                                                                                                                                                                                                        block  ;; label = @115
                                                                                                                                                                                                                                          block  ;; label = @116
                                                                                                                                                                                                                                            block  ;; label = @117
                                                                                                                                                                                                                                              block  ;; label = @118
                                                                                                                                                                                                                                                block  ;; label = @119
                                                                                                                                                                                                                                                  block  ;; label = @120
                                                                                                                                                                                                                                                    block  ;; label = @121
                                                                                                                                                                                                                                                      block  ;; label = @122
                                                                                                                                                                                                                                                        block  ;; label = @123
                                                                                                                                                                                                                                                          block  ;; label = @124
                                                                                                                                                                                                                                                            block  ;; label = @125
                                                                                                                                                                                                                                                              block  ;; label = @126
                                                                                                                                                                                                                                                                block  ;; label = @127
                                                                                                                                                                                                                                                                  block  ;; label = @128
                                                                                                                                                                                                                                                                    block  ;; label = @129
                                                                                                                                                                                                                                                                      block  ;; label = @130
                                                                                                                                                                                                                                                                        block  ;; label = @131
                                                                                                                                                                                                                                                                          block  ;; label = @132
                                                                                                                                                                                                                                                                            block  ;; label = @133
                                                                                                                                                                                                                                                                              block  ;; label = @134
                                                                                                                                                                                                                                                                                block  ;; label = @135
                                                                                                                                                                                                                                                                                  block  ;; label = @136
                                                                                                                                                                                                                                                                                    block  ;; label = @137
                                                                                                                                                                                                                                                                                      block  ;; label = @138
                                                                                                                                                                                                                                                                                        block  ;; label = @139
                                                                                                                                                                                                                                                                                          block  ;; label = @140
                                                                                                                                                                                                                                                                                            block  ;; label = @141
                                                                                                                                                                                                                                                                                              block  ;; label = @142
                                                                                                                                                                                                                                                                                                block  ;; label = @143
                                                                                                                                                                                                                                                                                                  block  ;; label = @144
                                                                                                                                                                                                                                                                                                    block  ;; label = @145
                                                                                                                                                                                                                                                                                                      block  ;; label = @146
                                                                                                                                                                                                                                                                                                        block  ;; label = @147
                                                                                                                                                                                                                                                                                                          block  ;; label = @148
                                                                                                                                                                                                                                                                                                            block  ;; label = @149
                                                                                                                                                                                                                                                                                                              block  ;; label = @150
                                                                                                                                                                                                                                                                                                                block  ;; label = @151
                                                                                                                                                                                                                                                                                                                  block  ;; label = @152
                                                                                                                                                                                                                                                                                                                    block  ;; label = @153
                                                                                                                                                                                                                                                                                                                      block  ;; label = @154
                                                                                                                                                                                                                                                                                                                        block  ;; label = @155
                                                                                                                                                                                                                                                                                                                          block  ;; label = @156
                                                                                                                                                                                                                                                                                                                            block  ;; label = @157
                                                                                                                                                                                                                                                                                                                              block  ;; label = @158
                                                                                                                                                                                                                                                                                                                                block  ;; label = @159
                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                  if  ;; label = @160
                                                                                                                                                                                                                                                                                                                                    local.get 0
                                                                                                                                                                                                                                                                                                                                    i32.const 1
                                                                                                                                                                                                                                                                                                                                    i32.eq
                                                                                                                                                                                                                                                                                                                                    br_if 1 (;@159;)
                                                                                                                                                                                                                                                                                                                                    local.get 0
                                                                                                                                                                                                                                                                                                                                    i32.const 2
                                                                                                                                                                                                                                                                                                                                    i32.eq
                                                                                                                                                                                                                                                                                                                                    br_if 2 (;@158;)
                                                                                                                                                                                                                                                                                                                                    local.get 0
                                                                                                                                                                                                                                                                                                                                    i32.const 3
                                                                                                                                                                                                                                                                                                                                    i32.eq
                                                                                                                                                                                                                                                                                                                                    br_if 3 (;@157;)
                                                                                                                                                                                                                                                                                                                                    local.get 0
                                                                                                                                                                                                                                                                                                                                    i32.const 4
                                                                                                                                                                                                                                                                                                                                    i32.eq
                                                                                                                                                                                                                                                                                                                                    br_if 4 (;@156;)
                                                                                                                                                                                                                                                                                                                                    local.get 0
                                                                                                                                                                                                                                                                                                                                    i32.const 5
                                                                                                                                                                                                                                                                                                                                    i32.eq
                                                                                                                                                                                                                                                                                                                                    br_if 5 (;@155;)
                                                                                                                                                                                                                                                                                                                                    local.get 0
                                                                                                                                                                                                                                                                                                                                    i32.const 6
                                                                                                                                                                                                                                                                                                                                    i32.eq
                                                                                                                                                                                                                                                                                                                                    br_if 6 (;@154;)
                                                                                                                                                                                                                                                                                                                                    local.get 0
                                                                                                                                                                                                                                                                                                                                    i32.const 7
                                                                                                                                                                                                                                                                                                                                    i32.eq
                                                                                                                                                                                                                                                                                                                                    br_if 7 (;@153;)
                                                                                                                                                                                                                                                                                                                                    local.get 0
                                                                                                                                                                                                                                                                                                                                    i32.const 8
                                                                                                                                                                                                                                                                                                                                    i32.eq
                                                                                                                                                                                                                                                                                                                                    br_if 8 (;@152;)
                                                                                                                                                                                                                                                                                                                                    local.get 0
                                                                                                                                                                                                                                                                                                                                    i32.const 9
                                                                                                                                                                                                                                                                                                                                    i32.eq
                                                                                                                                                                                                                                                                                                                                    br_if 9 (;@151;)
                                                                                                                                                                                                                                                                                                                                    local.get 0
                                                                                                                                                                                                                                                                                                                                    i32.const 10
                                                                                                                                                                                                                                                                                                                                    i32.eq
                                                                                                                                                                                                                                                                                                                                    br_if 10 (;@150;)
                                                                                                                                                                                                                                                                                                                                    local.get 0
                                                                                                                                                                                                                                                                                                                                    i32.const 11
                                                                                                                                                                                                                                                                                                                                    i32.eq
                                                                                                                                                                                                                                                                                                                                    br_if 11 (;@149;)
                                                                                                                                                                                                                                                                                                                                    local.get 0
                                                                                                                                                                                                                                                                                                                                    i32.const 12
                                                                                                                                                                                                                                                                                                                                    i32.eq
                                                                                                                                                                                                                                                                                                                                    br_if 12 (;@148;)
                                                                                                                                                                                                                                                                                                                                    local.get 0
                                                                                                                                                                                                                                                                                                                                    i32.const 13
                                                                                                                                                                                                                                                                                                                                    i32.eq
                                                                                                                                                                                                                                                                                                                                    br_if 13 (;@147;)
                                                                                                                                                                                                                                                                                                                                    local.get 0
                                                                                                                                                                                                                                                                                                                                    i32.const 14
                                                                                                                                                                                                                                                                                                                                    i32.eq
                                                                                                                                                                                                                                                                                                                                    br_if 14 (;@146;)
                                                                                                                                                                                                                                                                                                                                    local.get 0
                                                                                                                                                                                                                                                                                                                                    i32.const 15
                                                                                                                                                                                                                                                                                                                                    i32.eq
                                                                                                                                                                                                                                                                                                                                    br_if 15 (;@145;)
                                                                                                                                                                                                                                                                                                                                    local.get 0
                                                                                                                                                                                                                                                                                                                                    i32.const 16
                                                                                                                                                                                                                                                                                                                                    i32.eq
                                                                                                                                                                                                                                                                                                                                    br_if 16 (;@144;)
                                                                                                                                                                                                                                                                                                                                    local.get 0
                                                                                                                                                                                                                                                                                                                                    i32.const 17
                                                                                                                                                                                                                                                                                                                                    i32.eq
                                                                                                                                                                                                                                                                                                                                    br_if 17 (;@143;)
                                                                                                                                                                                                                                                                                                                                    local.get 0
                                                                                                                                                                                                                                                                                                                                    i32.const 18
                                                                                                                                                                                                                                                                                                                                    i32.eq
                                                                                                                                                                                                                                                                                                                                    br_if 18 (;@142;)
                                                                                                                                                                                                                                                                                                                                    local.get 0
                                                                                                                                                                                                                                                                                                                                    i32.const 19
                                                                                                                                                                                                                                                                                                                                    i32.eq
                                                                                                                                                                                                                                                                                                                                    br_if 19 (;@141;)
                                                                                                                                                                                                                                                                                                                                    local.get 0
                                                                                                                                                                                                                                                                                                                                    i32.const 20
                                                                                                                                                                                                                                                                                                                                    i32.eq
                                                                                                                                                                                                                                                                                                                                    br_if 20 (;@140;)
                                                                                                                                                                                                                                                                                                                                    local.get 0
                                                                                                                                                                                                                                                                                                                                    i32.const 21
                                                                                                                                                                                                                                                                                                                                    i32.eq
                                                                                                                                                                                                                                                                                                                                    br_if 21 (;@139;)
                                                                                                                                                                                                                                                                                                                                    local.get 0
                                                                                                                                                                                                                                                                                                                                    i32.const 27
                                                                                                                                                                                                                                                                                                                                    i32.eq
                                                                                                                                                                                                                                                                                                                                    br_if 22 (;@138;)
                                                                                                                                                                                                                                                                                                                                    local.get 0
                                                                                                                                                                                                                                                                                                                                    i32.const 28
                                                                                                                                                                                                                                                                                                                                    i32.eq
                                                                                                                                                                                                                                                                                                                                    br_if 23 (;@137;)
                                                                                                                                                                                                                                                                                                                                    local.get 0
                                                                                                                                                                                                                                                                                                                                    i32.const 29
                                                                                                                                                                                                                                                                                                                                    i32.eq
                                                                                                                                                                                                                                                                                                                                    br_if 24 (;@136;)
                                                                                                                                                                                                                                                                                                                                    local.get 0
                                                                                                                                                                                                                                                                                                                                    i32.const 22
                                                                                                                                                                                                                                                                                                                                    i32.eq
                                                                                                                                                                                                                                                                                                                                    br_if 25 (;@135;)
                                                                                                                                                                                                                                                                                                                                    local.get 0
                                                                                                                                                                                                                                                                                                                                    i32.const 23
                                                                                                                                                                                                                                                                                                                                    i32.eq
                                                                                                                                                                                                                                                                                                                                    br_if 26 (;@134;)
                                                                                                                                                                                                                                                                                                                                    local.get 0
                                                                                                                                                                                                                                                                                                                                    i32.const 24
                                                                                                                                                                                                                                                                                                                                    i32.eq
                                                                                                                                                                                                                                                                                                                                    br_if 27 (;@133;)
                                                                                                                                                                                                                                                                                                                                    local.get 0
                                                                                                                                                                                                                                                                                                                                    i32.const 25
                                                                                                                                                                                                                                                                                                                                    i32.eq
                                                                                                                                                                                                                                                                                                                                    br_if 28 (;@132;)
                                                                                                                                                                                                                                                                                                                                    local.get 0
                                                                                                                                                                                                                                                                                                                                    i32.const 26
                                                                                                                                                                                                                                                                                                                                    i32.eq
                                                                                                                                                                                                                                                                                                                                    br_if 29 (;@131;)
                                                                                                                                                                                                                                                                                                                                    local.get 0
                                                                                                                                                                                                                                                                                                                                    i32.const 30
                                                                                                                                                                                                                                                                                                                                    i32.eq
                                                                                                                                                                                                                                                                                                                                    br_if 30 (;@130;)
                                                                                                                                                                                                                                                                                                                                    local.get 0
                                                                                                                                                                                                                                                                                                                                    i32.const 31
                                                                                                                                                                                                                                                                                                                                    i32.eq
                                                                                                                                                                                                                                                                                                                                    br_if 31 (;@129;)
                                                                                                                                                                                                                                                                                                                                    local.get 0
                                                                                                                                                                                                                                                                                                                                    i32.const 32
                                                                                                                                                                                                                                                                                                                                    i32.eq
                                                                                                                                                                                                                                                                                                                                    br_if 32 (;@128;)
                                                                                                                                                                                                                                                                                                                                    local.get 0
                                                                                                                                                                                                                                                                                                                                    i32.const 33
                                                                                                                                                                                                                                                                                                                                    i32.eq
                                                                                                                                                                                                                                                                                                                                    br_if 33 (;@127;)
                                                                                                                                                                                                                                                                                                                                    local.get 0
                                                                                                                                                                                                                                                                                                                                    i32.const 34
                                                                                                                                                                                                                                                                                                                                    i32.eq
                                                                                                                                                                                                                                                                                                                                    br_if 34 (;@126;)
                                                                                                                                                                                                                                                                                                                                    local.get 0
                                                                                                                                                                                                                                                                                                                                    i32.const 35
                                                                                                                                                                                                                                                                                                                                    i32.eq
                                                                                                                                                                                                                                                                                                                                    br_if 35 (;@125;)
                                                                                                                                                                                                                                                                                                                                    local.get 0
                                                                                                                                                                                                                                                                                                                                    i32.const 36
                                                                                                                                                                                                                                                                                                                                    i32.eq
                                                                                                                                                                                                                                                                                                                                    br_if 36 (;@124;)
                                                                                                                                                                                                                                                                                                                                    local.get 0
                                                                                                                                                                                                                                                                                                                                    i32.const 37
                                                                                                                                                                                                                                                                                                                                    i32.eq
                                                                                                                                                                                                                                                                                                                                    br_if 37 (;@123;)
                                                                                                                                                                                                                                                                                                                                    local.get 0
                                                                                                                                                                                                                                                                                                                                    i32.const 38
                                                                                                                                                                                                                                                                                                                                    i32.eq
                                                                                                                                                                                                                                                                                                                                    br_if 38 (;@122;)
                                                                                                                                                                                                                                                                                                                                    local.get 0
                                                                                                                                                                                                                                                                                                                                    i32.const 39
                                                                                                                                                                                                                                                                                                                                    i32.eq
                                                                                                                                                                                                                                                                                                                                    br_if 39 (;@121;)
                                                                                                                                                                                                                                                                                                                                    local.get 0
                                                                                                                                                                                                                                                                                                                                    i32.const 40
                                                                                                                                                                                                                                                                                                                                    i32.eq
                                                                                                                                                                                                                                                                                                                                    br_if 40 (;@120;)
                                                                                                                                                                                                                                                                                                                                    local.get 0
                                                                                                                                                                                                                                                                                                                                    i32.const 41
                                                                                                                                                                                                                                                                                                                                    i32.eq
                                                                                                                                                                                                                                                                                                                                    br_if 41 (;@119;)
                                                                                                                                                                                                                                                                                                                                    local.get 0
                                                                                                                                                                                                                                                                                                                                    i32.const 42
                                                                                                                                                                                                                                                                                                                                    i32.eq
                                                                                                                                                                                                                                                                                                                                    br_if 42 (;@118;)
                                                                                                                                                                                                                                                                                                                                    local.get 0
                                                                                                                                                                                                                                                                                                                                    i32.const 43
                                                                                                                                                                                                                                                                                                                                    i32.eq
                                                                                                                                                                                                                                                                                                                                    br_if 43 (;@117;)
                                                                                                                                                                                                                                                                                                                                    local.get 0
                                                                                                                                                                                                                                                                                                                                    i32.const 44
                                                                                                                                                                                                                                                                                                                                    i32.eq
                                                                                                                                                                                                                                                                                                                                    br_if 44 (;@116;)
                                                                                                                                                                                                                                                                                                                                    local.get 0
                                                                                                                                                                                                                                                                                                                                    i32.const 45
                                                                                                                                                                                                                                                                                                                                    i32.eq
                                                                                                                                                                                                                                                                                                                                    br_if 45 (;@115;)
                                                                                                                                                                                                                                                                                                                                    local.get 0
                                                                                                                                                                                                                                                                                                                                    i32.const 46
                                                                                                                                                                                                                                                                                                                                    i32.eq
                                                                                                                                                                                                                                                                                                                                    br_if 46 (;@114;)
                                                                                                                                                                                                                                                                                                                                    local.get 0
                                                                                                                                                                                                                                                                                                                                    i32.const 47
                                                                                                                                                                                                                                                                                                                                    i32.eq
                                                                                                                                                                                                                                                                                                                                    br_if 47 (;@113;)
                                                                                                                                                                                                                                                                                                                                    local.get 0
                                                                                                                                                                                                                                                                                                                                    i32.const 48
                                                                                                                                                                                                                                                                                                                                    i32.eq
                                                                                                                                                                                                                                                                                                                                    br_if 48 (;@112;)
                                                                                                                                                                                                                                                                                                                                    local.get 0
                                                                                                                                                                                                                                                                                                                                    i32.const 49
                                                                                                                                                                                                                                                                                                                                    i32.eq
                                                                                                                                                                                                                                                                                                                                    br_if 49 (;@111;)
                                                                                                                                                                                                                                                                                                                                    local.get 0
                                                                                                                                                                                                                                                                                                                                    i32.const 50
                                                                                                                                                                                                                                                                                                                                    i32.eq
                                                                                                                                                                                                                                                                                                                                    br_if 50 (;@110;)
                                                                                                                                                                                                                                                                                                                                    local.get 0
                                                                                                                                                                                                                                                                                                                                    i32.const 51
                                                                                                                                                                                                                                                                                                                                    i32.eq
                                                                                                                                                                                                                                                                                                                                    br_if 51 (;@109;)
                                                                                                                                                                                                                                                                                                                                    local.get 0
                                                                                                                                                                                                                                                                                                                                    i32.const 52
                                                                                                                                                                                                                                                                                                                                    i32.eq
                                                                                                                                                                                                                                                                                                                                    br_if 52 (;@108;)
                                                                                                                                                                                                                                                                                                                                    local.get 0
                                                                                                                                                                                                                                                                                                                                    i32.const 53
                                                                                                                                                                                                                                                                                                                                    i32.eq
                                                                                                                                                                                                                                                                                                                                    br_if 53 (;@107;)
                                                                                                                                                                                                                                                                                                                                    local.get 0
                                                                                                                                                                                                                                                                                                                                    i32.const 54
                                                                                                                                                                                                                                                                                                                                    i32.eq
                                                                                                                                                                                                                                                                                                                                    br_if 54 (;@106;)
                                                                                                                                                                                                                                                                                                                                    local.get 0
                                                                                                                                                                                                                                                                                                                                    i32.const 55
                                                                                                                                                                                                                                                                                                                                    i32.eq
                                                                                                                                                                                                                                                                                                                                    br_if 55 (;@105;)
                                                                                                                                                                                                                                                                                                                                    local.get 0
                                                                                                                                                                                                                                                                                                                                    i32.const 56
                                                                                                                                                                                                                                                                                                                                    i32.eq
                                                                                                                                                                                                                                                                                                                                    br_if 56 (;@104;)
                                                                                                                                                                                                                                                                                                                                    local.get 0
                                                                                                                                                                                                                                                                                                                                    i32.const 57
                                                                                                                                                                                                                                                                                                                                    i32.eq
                                                                                                                                                                                                                                                                                                                                    br_if 57 (;@103;)
                                                                                                                                                                                                                                                                                                                                    local.get 0
                                                                                                                                                                                                                                                                                                                                    i32.const 58
                                                                                                                                                                                                                                                                                                                                    i32.eq
                                                                                                                                                                                                                                                                                                                                    br_if 58 (;@102;)
                                                                                                                                                                                                                                                                                                                                    local.get 0
                                                                                                                                                                                                                                                                                                                                    i32.const 59
                                                                                                                                                                                                                                                                                                                                    i32.eq
                                                                                                                                                                                                                                                                                                                                    br_if 59 (;@101;)
                                                                                                                                                                                                                                                                                                                                    local.get 0
                                                                                                                                                                                                                                                                                                                                    i32.const 60
                                                                                                                                                                                                                                                                                                                                    i32.eq
                                                                                                                                                                                                                                                                                                                                    br_if 60 (;@100;)
                                                                                                                                                                                                                                                                                                                                    local.get 0
                                                                                                                                                                                                                                                                                                                                    i32.const 61
                                                                                                                                                                                                                                                                                                                                    i32.eq
                                                                                                                                                                                                                                                                                                                                    br_if 61 (;@99;)
                                                                                                                                                                                                                                                                                                                                    local.get 0
                                                                                                                                                                                                                                                                                                                                    i32.const 63
                                                                                                                                                                                                                                                                                                                                    i32.eq
                                                                                                                                                                                                                                                                                                                                    br_if 62 (;@98;)
                                                                                                                                                                                                                                                                                                                                    local.get 0
                                                                                                                                                                                                                                                                                                                                    i32.const 64
                                                                                                                                                                                                                                                                                                                                    i32.eq
                                                                                                                                                                                                                                                                                                                                    br_if 63 (;@97;)
                                                                                                                                                                                                                                                                                                                                    local.get 0
                                                                                                                                                                                                                                                                                                                                    i32.const 65
                                                                                                                                                                                                                                                                                                                                    i32.eq
                                                                                                                                                                                                                                                                                                                                    br_if 64 (;@96;)
                                                                                                                                                                                                                                                                                                                                    local.get 0
                                                                                                                                                                                                                                                                                                                                    i32.const 66
                                                                                                                                                                                                                                                                                                                                    i32.eq
                                                                                                                                                                                                                                                                                                                                    br_if 65 (;@95;)
                                                                                                                                                                                                                                                                                                                                    local.get 0
                                                                                                                                                                                                                                                                                                                                    i32.const 67
                                                                                                                                                                                                                                                                                                                                    i32.eq
                                                                                                                                                                                                                                                                                                                                    br_if 66 (;@94;)
                                                                                                                                                                                                                                                                                                                                    local.get 0
                                                                                                                                                                                                                                                                                                                                    i32.const 68
                                                                                                                                                                                                                                                                                                                                    i32.eq
                                                                                                                                                                                                                                                                                                                                    br_if 67 (;@93;)
                                                                                                                                                                                                                                                                                                                                    local.get 0
                                                                                                                                                                                                                                                                                                                                    i32.const 69
                                                                                                                                                                                                                                                                                                                                    i32.eq
                                                                                                                                                                                                                                                                                                                                    br_if 68 (;@92;)
                                                                                                                                                                                                                                                                                                                                    local.get 0
                                                                                                                                                                                                                                                                                                                                    i32.const 70
                                                                                                                                                                                                                                                                                                                                    i32.eq
                                                                                                                                                                                                                                                                                                                                    br_if 69 (;@91;)
                                                                                                                                                                                                                                                                                                                                    local.get 0
                                                                                                                                                                                                                                                                                                                                    i32.const 71
                                                                                                                                                                                                                                                                                                                                    i32.eq
                                                                                                                                                                                                                                                                                                                                    br_if 70 (;@90;)
                                                                                                                                                                                                                                                                                                                                    local.get 0
                                                                                                                                                                                                                                                                                                                                    i32.const 72
                                                                                                                                                                                                                                                                                                                                    i32.eq
                                                                                                                                                                                                                                                                                                                                    br_if 71 (;@89;)
                                                                                                                                                                                                                                                                                                                                    local.get 0
                                                                                                                                                                                                                                                                                                                                    i32.const 73
                                                                                                                                                                                                                                                                                                                                    i32.eq
                                                                                                                                                                                                                                                                                                                                    br_if 72 (;@88;)
                                                                                                                                                                                                                                                                                                                                    local.get 0
                                                                                                                                                                                                                                                                                                                                    i32.const 74
                                                                                                                                                                                                                                                                                                                                    i32.eq
                                                                                                                                                                                                                                                                                                                                    br_if 73 (;@87;)
                                                                                                                                                                                                                                                                                                                                    local.get 0
                                                                                                                                                                                                                                                                                                                                    i32.const 75
                                                                                                                                                                                                                                                                                                                                    i32.eq
                                                                                                                                                                                                                                                                                                                                    br_if 74 (;@86;)
                                                                                                                                                                                                                                                                                                                                    local.get 0
                                                                                                                                                                                                                                                                                                                                    i32.const 76
                                                                                                                                                                                                                                                                                                                                    i32.eq
                                                                                                                                                                                                                                                                                                                                    br_if 75 (;@85;)
                                                                                                                                                                                                                                                                                                                                    local.get 0
                                                                                                                                                                                                                                                                                                                                    i32.const 77
                                                                                                                                                                                                                                                                                                                                    i32.eq
                                                                                                                                                                                                                                                                                                                                    br_if 76 (;@84;)
                                                                                                                                                                                                                                                                                                                                    local.get 0
                                                                                                                                                                                                                                                                                                                                    i32.const 78
                                                                                                                                                                                                                                                                                                                                    i32.eq
                                                                                                                                                                                                                                                                                                                                    br_if 77 (;@83;)
                                                                                                                                                                                                                                                                                                                                    local.get 0
                                                                                                                                                                                                                                                                                                                                    i32.const 79
                                                                                                                                                                                                                                                                                                                                    i32.eq
                                                                                                                                                                                                                                                                                                                                    br_if 78 (;@82;)
                                                                                                                                                                                                                                                                                                                                    local.get 0
                                                                                                                                                                                                                                                                                                                                    i32.const 80
                                                                                                                                                                                                                                                                                                                                    i32.eq
                                                                                                                                                                                                                                                                                                                                    br_if 79 (;@81;)
                                                                                                                                                                                                                                                                                                                                    local.get 0
                                                                                                                                                                                                                                                                                                                                    i32.const 81
                                                                                                                                                                                                                                                                                                                                    i32.eq
                                                                                                                                                                                                                                                                                                                                    br_if 80 (;@80;)
                                                                                                                                                                                                                                                                                                                                    local.get 0
                                                                                                                                                                                                                                                                                                                                    i32.const 82
                                                                                                                                                                                                                                                                                                                                    i32.eq
                                                                                                                                                                                                                                                                                                                                    br_if 81 (;@79;)
                                                                                                                                                                                                                                                                                                                                    local.get 0
                                                                                                                                                                                                                                                                                                                                    i32.const 83
                                                                                                                                                                                                                                                                                                                                    i32.eq
                                                                                                                                                                                                                                                                                                                                    br_if 82 (;@78;)
                                                                                                                                                                                                                                                                                                                                    local.get 0
                                                                                                                                                                                                                                                                                                                                    i32.const 84
                                                                                                                                                                                                                                                                                                                                    i32.eq
                                                                                                                                                                                                                                                                                                                                    br_if 83 (;@77;)
                                                                                                                                                                                                                                                                                                                                    local.get 0
                                                                                                                                                                                                                                                                                                                                    i32.const 85
                                                                                                                                                                                                                                                                                                                                    i32.eq
                                                                                                                                                                                                                                                                                                                                    br_if 84 (;@76;)
                                                                                                                                                                                                                                                                                                                                    local.get 0
                                                                                                                                                                                                                                                                                                                                    i32.const 86
                                                                                                                                                                                                                                                                                                                                    i32.eq
                                                                                                                                                                                                                                                                                                                                    br_if 85 (;@75;)
                                                                                                                                                                                                                                                                                                                                    local.get 0
                                                                                                                                                                                                                                                                                                                                    i32.const 1000
                                                                                                                                                                                                                                                                                                                                    i32.eq
                                                                                                                                                                                                                                                                                                                                    br_if 86 (;@74;)
                                                                                                                                                                                                                                                                                                                                    local.get 0
                                                                                                                                                                                                                                                                                                                                    i32.const 1001
                                                                                                                                                                                                                                                                                                                                    i32.eq
                                                                                                                                                                                                                                                                                                                                    br_if 87 (;@73;)
                                                                                                                                                                                                                                                                                                                                    local.get 0
                                                                                                                                                                                                                                                                                                                                    i32.const 1002
                                                                                                                                                                                                                                                                                                                                    i32.eq
                                                                                                                                                                                                                                                                                                                                    br_if 88 (;@72;)
                                                                                                                                                                                                                                                                                                                                    local.get 0
                                                                                                                                                                                                                                                                                                                                    i32.const 1003
                                                                                                                                                                                                                                                                                                                                    i32.eq
                                                                                                                                                                                                                                                                                                                                    br_if 89 (;@71;)
                                                                                                                                                                                                                                                                                                                                    local.get 0
                                                                                                                                                                                                                                                                                                                                    i32.const 1500
                                                                                                                                                                                                                                                                                                                                    i32.eq
                                                                                                                                                                                                                                                                                                                                    br_if 90 (;@70;)
                                                                                                                                                                                                                                                                                                                                    local.get 0
                                                                                                                                                                                                                                                                                                                                    i32.const 1501
                                                                                                                                                                                                                                                                                                                                    i32.eq
                                                                                                                                                                                                                                                                                                                                    br_if 91 (;@69;)
                                                                                                                                                                                                                                                                                                                                    local.get 0
                                                                                                                                                                                                                                                                                                                                    i32.const 1502
                                                                                                                                                                                                                                                                                                                                    i32.eq
                                                                                                                                                                                                                                                                                                                                    br_if 92 (;@68;)
                                                                                                                                                                                                                                                                                                                                    local.get 0
                                                                                                                                                                                                                                                                                                                                    i32.const 1503
                                                                                                                                                                                                                                                                                                                                    i32.eq
                                                                                                                                                                                                                                                                                                                                    br_if 93 (;@67;)
                                                                                                                                                                                                                                                                                                                                    local.get 0
                                                                                                                                                                                                                                                                                                                                    i32.const 1504
                                                                                                                                                                                                                                                                                                                                    i32.eq
                                                                                                                                                                                                                                                                                                                                    br_if 94 (;@66;)
                                                                                                                                                                                                                                                                                                                                    local.get 0
                                                                                                                                                                                                                                                                                                                                    i32.const 1505
                                                                                                                                                                                                                                                                                                                                    i32.eq
                                                                                                                                                                                                                                                                                                                                    br_if 95 (;@65;)
                                                                                                                                                                                                                                                                                                                                    local.get 0
                                                                                                                                                                                                                                                                                                                                    i32.const 1506
                                                                                                                                                                                                                                                                                                                                    i32.eq
                                                                                                                                                                                                                                                                                                                                    br_if 96 (;@64;)
                                                                                                                                                                                                                                                                                                                                    local.get 0
                                                                                                                                                                                                                                                                                                                                    i32.const 1507
                                                                                                                                                                                                                                                                                                                                    i32.eq
                                                                                                                                                                                                                                                                                                                                    br_if 97 (;@63;)
                                                                                                                                                                                                                                                                                                                                    local.get 0
                                                                                                                                                                                                                                                                                                                                    i32.const 1508
                                                                                                                                                                                                                                                                                                                                    i32.eq
                                                                                                                                                                                                                                                                                                                                    br_if 98 (;@62;)
                                                                                                                                                                                                                                                                                                                                    local.get 0
                                                                                                                                                                                                                                                                                                                                    i32.const 1509
                                                                                                                                                                                                                                                                                                                                    i32.eq
                                                                                                                                                                                                                                                                                                                                    br_if 99 (;@61;)
                                                                                                                                                                                                                                                                                                                                    local.get 0
                                                                                                                                                                                                                                                                                                                                    i32.const 1510
                                                                                                                                                                                                                                                                                                                                    i32.eq
                                                                                                                                                                                                                                                                                                                                    br_if 100 (;@60;)
                                                                                                                                                                                                                                                                                                                                    local.get 0
                                                                                                                                                                                                                                                                                                                                    i32.const 1511
                                                                                                                                                                                                                                                                                                                                    i32.eq
                                                                                                                                                                                                                                                                                                                                    br_if 101 (;@59;)
                                                                                                                                                                                                                                                                                                                                    local.get 0
                                                                                                                                                                                                                                                                                                                                    i32.const 1512
                                                                                                                                                                                                                                                                                                                                    i32.eq
                                                                                                                                                                                                                                                                                                                                    br_if 102 (;@58;)
                                                                                                                                                                                                                                                                                                                                    local.get 0
                                                                                                                                                                                                                                                                                                                                    i32.const 1513
                                                                                                                                                                                                                                                                                                                                    i32.eq
                                                                                                                                                                                                                                                                                                                                    br_if 103 (;@57;)
                                                                                                                                                                                                                                                                                                                                    local.get 0
                                                                                                                                                                                                                                                                                                                                    i32.const 1514
                                                                                                                                                                                                                                                                                                                                    i32.eq
                                                                                                                                                                                                                                                                                                                                    br_if 104 (;@56;)
                                                                                                                                                                                                                                                                                                                                    local.get 0
                                                                                                                                                                                                                                                                                                                                    i32.const 1515
                                                                                                                                                                                                                                                                                                                                    i32.eq
                                                                                                                                                                                                                                                                                                                                    br_if 105 (;@55;)
                                                                                                                                                                                                                                                                                                                                    local.get 0
                                                                                                                                                                                                                                                                                                                                    i32.const 1516
                                                                                                                                                                                                                                                                                                                                    i32.eq
                                                                                                                                                                                                                                                                                                                                    br_if 106 (;@54;)
                                                                                                                                                                                                                                                                                                                                    local.get 0
                                                                                                                                                                                                                                                                                                                                    i32.const 1517
                                                                                                                                                                                                                                                                                                                                    i32.eq
                                                                                                                                                                                                                                                                                                                                    br_if 107 (;@53;)
                                                                                                                                                                                                                                                                                                                                    local.get 0
                                                                                                                                                                                                                                                                                                                                    i32.const 1518
                                                                                                                                                                                                                                                                                                                                    i32.eq
                                                                                                                                                                                                                                                                                                                                    br_if 108 (;@52;)
                                                                                                                                                                                                                                                                                                                                    local.get 0
                                                                                                                                                                                                                                                                                                                                    i32.const 1519
                                                                                                                                                                                                                                                                                                                                    i32.eq
                                                                                                                                                                                                                                                                                                                                    br_if 109 (;@51;)
                                                                                                                                                                                                                                                                                                                                    local.get 0
                                                                                                                                                                                                                                                                                                                                    i32.const 1520
                                                                                                                                                                                                                                                                                                                                    i32.eq
                                                                                                                                                                                                                                                                                                                                    br_if 110 (;@50;)
                                                                                                                                                                                                                                                                                                                                    local.get 0
                                                                                                                                                                                                                                                                                                                                    i32.const 1521
                                                                                                                                                                                                                                                                                                                                    i32.eq
                                                                                                                                                                                                                                                                                                                                    br_if 111 (;@49;)
                                                                                                                                                                                                                                                                                                                                    local.get 0
                                                                                                                                                                                                                                                                                                                                    i32.const 1522
                                                                                                                                                                                                                                                                                                                                    i32.eq
                                                                                                                                                                                                                                                                                                                                    br_if 112 (;@48;)
                                                                                                                                                                                                                                                                                                                                    local.get 0
                                                                                                                                                                                                                                                                                                                                    i32.const 1523
                                                                                                                                                                                                                                                                                                                                    i32.eq
                                                                                                                                                                                                                                                                                                                                    br_if 113 (;@47;)
                                                                                                                                                                                                                                                                                                                                    local.get 0
                                                                                                                                                                                                                                                                                                                                    i32.const 1524
                                                                                                                                                                                                                                                                                                                                    i32.eq
                                                                                                                                                                                                                                                                                                                                    br_if 114 (;@46;)
                                                                                                                                                                                                                                                                                                                                    local.get 0
                                                                                                                                                                                                                                                                                                                                    i32.const 1525
                                                                                                                                                                                                                                                                                                                                    i32.eq
                                                                                                                                                                                                                                                                                                                                    br_if 115 (;@45;)
                                                                                                                                                                                                                                                                                                                                    local.get 0
                                                                                                                                                                                                                                                                                                                                    i32.const 1526
                                                                                                                                                                                                                                                                                                                                    i32.eq
                                                                                                                                                                                                                                                                                                                                    br_if 116 (;@44;)
                                                                                                                                                                                                                                                                                                                                    local.get 0
                                                                                                                                                                                                                                                                                                                                    i32.const 1527
                                                                                                                                                                                                                                                                                                                                    i32.eq
                                                                                                                                                                                                                                                                                                                                    br_if 117 (;@43;)
                                                                                                                                                                                                                                                                                                                                    local.get 0
                                                                                                                                                                                                                                                                                                                                    i32.const 1528
                                                                                                                                                                                                                                                                                                                                    i32.eq
                                                                                                                                                                                                                                                                                                                                    br_if 118 (;@42;)
                                                                                                                                                                                                                                                                                                                                    local.get 0
                                                                                                                                                                                                                                                                                                                                    i32.const 1529
                                                                                                                                                                                                                                                                                                                                    i32.eq
                                                                                                                                                                                                                                                                                                                                    br_if 119 (;@41;)
                                                                                                                                                                                                                                                                                                                                    local.get 0
                                                                                                                                                                                                                                                                                                                                    i32.const 1530
                                                                                                                                                                                                                                                                                                                                    i32.eq
                                                                                                                                                                                                                                                                                                                                    br_if 120 (;@40;)
                                                                                                                                                                                                                                                                                                                                    local.get 0
                                                                                                                                                                                                                                                                                                                                    i32.const 1531
                                                                                                                                                                                                                                                                                                                                    i32.eq
                                                                                                                                                                                                                                                                                                                                    br_if 121 (;@39;)
                                                                                                                                                                                                                                                                                                                                    local.get 0
                                                                                                                                                                                                                                                                                                                                    i32.const 1532
                                                                                                                                                                                                                                                                                                                                    i32.eq
                                                                                                                                                                                                                                                                                                                                    br_if 122 (;@38;)
                                                                                                                                                                                                                                                                                                                                    local.get 0
                                                                                                                                                                                                                                                                                                                                    i32.const 1533
                                                                                                                                                                                                                                                                                                                                    i32.eq
                                                                                                                                                                                                                                                                                                                                    br_if 123 (;@37;)
                                                                                                                                                                                                                                                                                                                                    local.get 0
                                                                                                                                                                                                                                                                                                                                    i32.const 1534
                                                                                                                                                                                                                                                                                                                                    i32.eq
                                                                                                                                                                                                                                                                                                                                    br_if 124 (;@36;)
                                                                                                                                                                                                                                                                                                                                    local.get 0
                                                                                                                                                                                                                                                                                                                                    i32.const 1535
                                                                                                                                                                                                                                                                                                                                    i32.eq
                                                                                                                                                                                                                                                                                                                                    br_if 125 (;@35;)
                                                                                                                                                                                                                                                                                                                                    local.get 0
                                                                                                                                                                                                                                                                                                                                    i32.const 1536
                                                                                                                                                                                                                                                                                                                                    i32.eq
                                                                                                                                                                                                                                                                                                                                    br_if 126 (;@34;)
                                                                                                                                                                                                                                                                                                                                    local.get 0
                                                                                                                                                                                                                                                                                                                                    i32.const 1537
                                                                                                                                                                                                                                                                                                                                    i32.eq
                                                                                                                                                                                                                                                                                                                                    br_if 127 (;@33;)
                                                                                                                                                                                                                                                                                                                                    local.get 0
                                                                                                                                                                                                                                                                                                                                    i32.const 1538
                                                                                                                                                                                                                                                                                                                                    i32.eq
                                                                                                                                                                                                                                                                                                                                    br_if 128 (;@32;)
                                                                                                                                                                                                                                                                                                                                    local.get 0
                                                                                                                                                                                                                                                                                                                                    i32.const 1539
                                                                                                                                                                                                                                                                                                                                    i32.eq
                                                                                                                                                                                                                                                                                                                                    br_if 129 (;@31;)
                                                                                                                                                                                                                                                                                                                                    local.get 0
                                                                                                                                                                                                                                                                                                                                    i32.const 1540
                                                                                                                                                                                                                                                                                                                                    i32.eq
                                                                                                                                                                                                                                                                                                                                    br_if 130 (;@30;)
                                                                                                                                                                                                                                                                                                                                    local.get 0
                                                                                                                                                                                                                                                                                                                                    i32.const 1541
                                                                                                                                                                                                                                                                                                                                    i32.eq
                                                                                                                                                                                                                                                                                                                                    br_if 131 (;@29;)
                                                                                                                                                                                                                                                                                                                                    local.get 0
                                                                                                                                                                                                                                                                                                                                    i32.const 1542
                                                                                                                                                                                                                                                                                                                                    i32.eq
                                                                                                                                                                                                                                                                                                                                    br_if 132 (;@28;)
                                                                                                                                                                                                                                                                                                                                    local.get 0
                                                                                                                                                                                                                                                                                                                                    i32.const 1543
                                                                                                                                                                                                                                                                                                                                    i32.eq
                                                                                                                                                                                                                                                                                                                                    br_if 133 (;@27;)
                                                                                                                                                                                                                                                                                                                                    local.get 0
                                                                                                                                                                                                                                                                                                                                    i32.const 1544
                                                                                                                                                                                                                                                                                                                                    i32.eq
                                                                                                                                                                                                                                                                                                                                    br_if 134 (;@26;)
                                                                                                                                                                                                                                                                                                                                    local.get 0
                                                                                                                                                                                                                                                                                                                                    i32.const 1545
                                                                                                                                                                                                                                                                                                                                    i32.eq
                                                                                                                                                                                                                                                                                                                                    br_if 135 (;@25;)
                                                                                                                                                                                                                                                                                                                                    local.get 0
                                                                                                                                                                                                                                                                                                                                    i32.const 1546
                                                                                                                                                                                                                                                                                                                                    i32.eq
                                                                                                                                                                                                                                                                                                                                    br_if 136 (;@24;)
                                                                                                                                                                                                                                                                                                                                    local.get 0
                                                                                                                                                                                                                                                                                                                                    i32.const 1547
                                                                                                                                                                                                                                                                                                                                    i32.eq
                                                                                                                                                                                                                                                                                                                                    br_if 137 (;@23;)
                                                                                                                                                                                                                                                                                                                                    local.get 0
                                                                                                                                                                                                                                                                                                                                    i32.const 1548
                                                                                                                                                                                                                                                                                                                                    i32.eq
                                                                                                                                                                                                                                                                                                                                    br_if 138 (;@22;)
                                                                                                                                                                                                                                                                                                                                    local.get 0
                                                                                                                                                                                                                                                                                                                                    i32.const 1549
                                                                                                                                                                                                                                                                                                                                    i32.eq
                                                                                                                                                                                                                                                                                                                                    br_if 139 (;@21;)
                                                                                                                                                                                                                                                                                                                                    local.get 0
                                                                                                                                                                                                                                                                                                                                    i32.const 1550
                                                                                                                                                                                                                                                                                                                                    i32.eq
                                                                                                                                                                                                                                                                                                                                    br_if 140 (;@20;)
                                                                                                                                                                                                                                                                                                                                    local.get 0
                                                                                                                                                                                                                                                                                                                                    i32.const 1551
                                                                                                                                                                                                                                                                                                                                    i32.eq
                                                                                                                                                                                                                                                                                                                                    br_if 141 (;@19;)
                                                                                                                                                                                                                                                                                                                                    local.get 0
                                                                                                                                                                                                                                                                                                                                    i32.const 1552
                                                                                                                                                                                                                                                                                                                                    i32.eq
                                                                                                                                                                                                                                                                                                                                    br_if 142 (;@18;)
                                                                                                                                                                                                                                                                                                                                    local.get 0
                                                                                                                                                                                                                                                                                                                                    i32.const 1553
                                                                                                                                                                                                                                                                                                                                    i32.eq
                                                                                                                                                                                                                                                                                                                                    br_if 143 (;@17;)
                                                                                                                                                                                                                                                                                                                                    local.get 0
                                                                                                                                                                                                                                                                                                                                    i32.const 1554
                                                                                                                                                                                                                                                                                                                                    i32.eq
                                                                                                                                                                                                                                                                                                                                    br_if 144 (;@16;)
                                                                                                                                                                                                                                                                                                                                    local.get 0
                                                                                                                                                                                                                                                                                                                                    i32.const 1555
                                                                                                                                                                                                                                                                                                                                    i32.eq
                                                                                                                                                                                                                                                                                                                                    br_if 145 (;@15;)
                                                                                                                                                                                                                                                                                                                                    local.get 0
                                                                                                                                                                                                                                                                                                                                    i32.const 1556
                                                                                                                                                                                                                                                                                                                                    i32.eq
                                                                                                                                                                                                                                                                                                                                    br_if 146 (;@14;)
                                                                                                                                                                                                                                                                                                                                    local.get 0
                                                                                                                                                                                                                                                                                                                                    i32.const 1557
                                                                                                                                                                                                                                                                                                                                    i32.eq
                                                                                                                                                                                                                                                                                                                                    br_if 147 (;@13;)
                                                                                                                                                                                                                                                                                                                                    local.get 0
                                                                                                                                                                                                                                                                                                                                    i32.const 1558
                                                                                                                                                                                                                                                                                                                                    i32.eq
                                                                                                                                                                                                                                                                                                                                    br_if 148 (;@12;)
                                                                                                                                                                                                                                                                                                                                    local.get 0
                                                                                                                                                                                                                                                                                                                                    i32.const 1559
                                                                                                                                                                                                                                                                                                                                    i32.eq
                                                                                                                                                                                                                                                                                                                                    br_if 149 (;@11;)
                                                                                                                                                                                                                                                                                                                                    local.get 0
                                                                                                                                                                                                                                                                                                                                    i32.const 1560
                                                                                                                                                                                                                                                                                                                                    i32.eq
                                                                                                                                                                                                                                                                                                                                    br_if 150 (;@10;)
                                                                                                                                                                                                                                                                                                                                    local.get 0
                                                                                                                                                                                                                                                                                                                                    i32.const 1561
                                                                                                                                                                                                                                                                                                                                    i32.eq
                                                                                                                                                                                                                                                                                                                                    br_if 151 (;@9;)
                                                                                                                                                                                                                                                                                                                                    local.get 0
                                                                                                                                                                                                                                                                                                                                    i32.const 2500
                                                                                                                                                                                                                                                                                                                                    i32.eq
                                                                                                                                                                                                                                                                                                                                    br_if 152 (;@8;)
                                                                                                                                                                                                                                                                                                                                    local.get 0
                                                                                                                                                                                                                                                                                                                                    i32.const 2501
                                                                                                                                                                                                                                                                                                                                    i32.eq
                                                                                                                                                                                                                                                                                                                                    br_if 153 (;@7;)
                                                                                                                                                                                                                                                                                                                                    local.get 0
                                                                                                                                                                                                                                                                                                                                    i32.const 2502
                                                                                                                                                                                                                                                                                                                                    i32.eq
                                                                                                                                                                                                                                                                                                                                    br_if 154 (;@6;)
                                                                                                                                                                                                                                                                                                                                    local.get 0
                                                                                                                                                                                                                                                                                                                                    i32.const 2503
                                                                                                                                                                                                                                                                                                                                    i32.eq
                                                                                                                                                                                                                                                                                                                                    br_if 155 (;@5;)
                                                                                                                                                                                                                                                                                                                                    local.get 0
                                                                                                                                                                                                                                                                                                                                    i32.const 2504
                                                                                                                                                                                                                                                                                                                                    i32.eq
                                                                                                                                                                                                                                                                                                                                    br_if 156 (;@4;)
                                                                                                                                                                                                                                                                                                                                    local.get 0
                                                                                                                                                                                                                                                                                                                                    i32.const 2505
                                                                                                                                                                                                                                                                                                                                    i32.eq
                                                                                                                                                                                                                                                                                                                                    br_if 157 (;@3;)
                                                                                                                                                                                                                                                                                                                                    local.get 0
                                                                                                                                                                                                                                                                                                                                    i32.const 2506
                                                                                                                                                                                                                                                                                                                                    i32.eq
                                                                                                                                                                                                                                                                                                                                    br_if 158 (;@2;)
                                                                                                                                                                                                                                                                                                                                    br 159 (;@1;)
                                                                                                                                                                                                                                                                                                                                  end
                                                                                                                                                                                                                                                                                                                                  i32.const 1
                                                                                                                                                                                                                                                                                                                                  return
                                                                                                                                                                                                                                                                                                                                end
                                                                                                                                                                                                                                                                                                                                i32.const 0
                                                                                                                                                                                                                                                                                                                                return
                                                                                                                                                                                                                                                                                                                              end
                                                                                                                                                                                                                                                                                                                              i32.const 20
                                                                                                                                                                                                                                                                                                                              return
                                                                                                                                                                                                                                                                                                                            end
                                                                                                                                                                                                                                                                                                                            i32.const 21
                                                                                                                                                                                                                                                                                                                            return
                                                                                                                                                                                                                                                                                                                          end
                                                                                                                                                                                                                                                                                                                          i32.const 22
                                                                                                                                                                                                                                                                                                                          return
                                                                                                                                                                                                                                                                                                                        end
                                                                                                                                                                                                                                                                                                                        i32.const 23
                                                                                                                                                                                                                                                                                                                        return
                                                                                                                                                                                                                                                                                                                      end
                                                                                                                                                                                                                                                                                                                      i32.const 13
                                                                                                                                                                                                                                                                                                                      return
                                                                                                                                                                                                                                                                                                                    end
                                                                                                                                                                                                                                                                                                                    i32.const 24
                                                                                                                                                                                                                                                                                                                    return
                                                                                                                                                                                                                                                                                                                  end
                                                                                                                                                                                                                                                                                                                  i32.const 25
                                                                                                                                                                                                                                                                                                                  return
                                                                                                                                                                                                                                                                                                                end
                                                                                                                                                                                                                                                                                                                i32.const 26
                                                                                                                                                                                                                                                                                                                return
                                                                                                                                                                                                                                                                                                              end
                                                                                                                                                                                                                                                                                                              i32.const 27
                                                                                                                                                                                                                                                                                                              return
                                                                                                                                                                                                                                                                                                            end
                                                                                                                                                                                                                                                                                                            i32.const 28
                                                                                                                                                                                                                                                                                                            return
                                                                                                                                                                                                                                                                                                          end
                                                                                                                                                                                                                                                                                                          i32.const 29
                                                                                                                                                                                                                                                                                                          return
                                                                                                                                                                                                                                                                                                        end
                                                                                                                                                                                                                                                                                                        i32.const 31
                                                                                                                                                                                                                                                                                                        return
                                                                                                                                                                                                                                                                                                      end
                                                                                                                                                                                                                                                                                                      i32.const 32
                                                                                                                                                                                                                                                                                                      return
                                                                                                                                                                                                                                                                                                    end
                                                                                                                                                                                                                                                                                                    i32.const 34
                                                                                                                                                                                                                                                                                                    return
                                                                                                                                                                                                                                                                                                  end
                                                                                                                                                                                                                                                                                                  i32.const 36
                                                                                                                                                                                                                                                                                                  return
                                                                                                                                                                                                                                                                                                end
                                                                                                                                                                                                                                                                                                i32.const 38
                                                                                                                                                                                                                                                                                                return
                                                                                                                                                                                                                                                                                              end
                                                                                                                                                                                                                                                                                              i32.const 3
                                                                                                                                                                                                                                                                                              return
                                                                                                                                                                                                                                                                                            end
                                                                                                                                                                                                                                                                                            i32.const 40
                                                                                                                                                                                                                                                                                            return
                                                                                                                                                                                                                                                                                          end
                                                                                                                                                                                                                                                                                          i32.const 42
                                                                                                                                                                                                                                                                                          return
                                                                                                                                                                                                                                                                                        end
                                                                                                                                                                                                                                                                                        i32.const 47
                                                                                                                                                                                                                                                                                        return
                                                                                                                                                                                                                                                                                      end
                                                                                                                                                                                                                                                                                      i32.const 48
                                                                                                                                                                                                                                                                                      return
                                                                                                                                                                                                                                                                                    end
                                                                                                                                                                                                                                                                                    i32.const 49
                                                                                                                                                                                                                                                                                    return
                                                                                                                                                                                                                                                                                  end
                                                                                                                                                                                                                                                                                  i32.const 50
                                                                                                                                                                                                                                                                                  return
                                                                                                                                                                                                                                                                                end
                                                                                                                                                                                                                                                                                i32.const 51
                                                                                                                                                                                                                                                                                return
                                                                                                                                                                                                                                                                              end
                                                                                                                                                                                                                                                                              i32.const 39
                                                                                                                                                                                                                                                                              return
                                                                                                                                                                                                                                                                            end
                                                                                                                                                                                                                                                                            i32.const 55
                                                                                                                                                                                                                                                                            return
                                                                                                                                                                                                                                                                          end
                                                                                                                                                                                                                                                                          i32.const 56
                                                                                                                                                                                                                                                                          return
                                                                                                                                                                                                                                                                        end
                                                                                                                                                                                                                                                                        i32.const 57
                                                                                                                                                                                                                                                                        return
                                                                                                                                                                                                                                                                      end
                                                                                                                                                                                                                                                                      i32.const 33
                                                                                                                                                                                                                                                                      return
                                                                                                                                                                                                                                                                    end
                                                                                                                                                                                                                                                                    i32.const 35
                                                                                                                                                                                                                                                                    return
                                                                                                                                                                                                                                                                  end
                                                                                                                                                                                                                                                                  i32.const 37
                                                                                                                                                                                                                                                                  return
                                                                                                                                                                                                                                                                end
                                                                                                                                                                                                                                                                i32.const 58
                                                                                                                                                                                                                                                                return
                                                                                                                                                                                                                                                              end
                                                                                                                                                                                                                                                              i32.const 43
                                                                                                                                                                                                                                                              return
                                                                                                                                                                                                                                                            end
                                                                                                                                                                                                                                                            i32.const 63
                                                                                                                                                                                                                                                            return
                                                                                                                                                                                                                                                          end
                                                                                                                                                                                                                                                          i32.const 44
                                                                                                                                                                                                                                                          return
                                                                                                                                                                                                                                                        end
                                                                                                                                                                                                                                                        i32.const 63
                                                                                                                                                                                                                                                        return
                                                                                                                                                                                                                                                      end
                                                                                                                                                                                                                                                      i32.const 64
                                                                                                                                                                                                                                                      return
                                                                                                                                                                                                                                                    end
                                                                                                                                                                                                                                                    i32.const 67
                                                                                                                                                                                                                                                    return
                                                                                                                                                                                                                                                  end
                                                                                                                                                                                                                                                  i32.const 69
                                                                                                                                                                                                                                                  return
                                                                                                                                                                                                                                                end
                                                                                                                                                                                                                                                i32.const 70
                                                                                                                                                                                                                                                return
                                                                                                                                                                                                                                              end
                                                                                                                                                                                                                                              i32.const 71
                                                                                                                                                                                                                                              return
                                                                                                                                                                                                                                            end
                                                                                                                                                                                                                                            i32.const 72
                                                                                                                                                                                                                                            return
                                                                                                                                                                                                                                          end
                                                                                                                                                                                                                                          i32.const 73
                                                                                                                                                                                                                                          return
                                                                                                                                                                                                                                        end
                                                                                                                                                                                                                                        i32.const 74
                                                                                                                                                                                                                                        return
                                                                                                                                                                                                                                      end
                                                                                                                                                                                                                                      i32.const 75
                                                                                                                                                                                                                                      return
                                                                                                                                                                                                                                    end
                                                                                                                                                                                                                                    i32.const 19
                                                                                                                                                                                                                                    return
                                                                                                                                                                                                                                  end
                                                                                                                                                                                                                                  i32.const 76
                                                                                                                                                                                                                                  return
                                                                                                                                                                                                                                end
                                                                                                                                                                                                                                i32.const 77
                                                                                                                                                                                                                                return
                                                                                                                                                                                                                              end
                                                                                                                                                                                                                              i32.const 78
                                                                                                                                                                                                                              return
                                                                                                                                                                                                                            end
                                                                                                                                                                                                                            i32.const 79
                                                                                                                                                                                                                            return
                                                                                                                                                                                                                          end
                                                                                                                                                                                                                          i32.const 81
                                                                                                                                                                                                                          return
                                                                                                                                                                                                                        end
                                                                                                                                                                                                                        i32.const 61
                                                                                                                                                                                                                        return
                                                                                                                                                                                                                      end
                                                                                                                                                                                                                      i32.const 83
                                                                                                                                                                                                                      return
                                                                                                                                                                                                                    end
                                                                                                                                                                                                                    i32.const 84
                                                                                                                                                                                                                    return
                                                                                                                                                                                                                  end
                                                                                                                                                                                                                  i32.const 89
                                                                                                                                                                                                                  return
                                                                                                                                                                                                                end
                                                                                                                                                                                                                i32.const 91
                                                                                                                                                                                                                return
                                                                                                                                                                                                              end
                                                                                                                                                                                                              i32.const 93
                                                                                                                                                                                                              return
                                                                                                                                                                                                            end
                                                                                                                                                                                                            i32.const 95
                                                                                                                                                                                                            return
                                                                                                                                                                                                          end
                                                                                                                                                                                                          i32.const 96
                                                                                                                                                                                                          return
                                                                                                                                                                                                        end
                                                                                                                                                                                                        i32.const 82
                                                                                                                                                                                                        return
                                                                                                                                                                                                      end
                                                                                                                                                                                                      i32.const 88
                                                                                                                                                                                                      return
                                                                                                                                                                                                    end
                                                                                                                                                                                                    i32.const 92
                                                                                                                                                                                                    return
                                                                                                                                                                                                  end
                                                                                                                                                                                                  i32.const 97
                                                                                                                                                                                                  return
                                                                                                                                                                                                end
                                                                                                                                                                                                i32.const 98
                                                                                                                                                                                                return
                                                                                                                                                                                              end
                                                                                                                                                                                              i32.const 96
                                                                                                                                                                                              return
                                                                                                                                                                                            end
                                                                                                                                                                                            i32.const 80
                                                                                                                                                                                            return
                                                                                                                                                                                          end
                                                                                                                                                                                          i32.const 99
                                                                                                                                                                                          return
                                                                                                                                                                                        end
                                                                                                                                                                                        i32.const 100
                                                                                                                                                                                        return
                                                                                                                                                                                      end
                                                                                                                                                                                      i32.const 101
                                                                                                                                                                                      return
                                                                                                                                                                                    end
                                                                                                                                                                                    i32.const 102
                                                                                                                                                                                    return
                                                                                                                                                                                  end
                                                                                                                                                                                  i32.const 103
                                                                                                                                                                                  return
                                                                                                                                                                                end
                                                                                                                                                                                i32.const 104
                                                                                                                                                                                return
                                                                                                                                                                              end
                                                                                                                                                                              i32.const 106
                                                                                                                                                                              return
                                                                                                                                                                            end
                                                                                                                                                                            i32.const 107
                                                                                                                                                                            return
                                                                                                                                                                          end
                                                                                                                                                                          i32.const 108
                                                                                                                                                                          return
                                                                                                                                                                        end
                                                                                                                                                                        i32.const 109
                                                                                                                                                                        return
                                                                                                                                                                      end
                                                                                                                                                                      i32.const 85
                                                                                                                                                                      return
                                                                                                                                                                    end
                                                                                                                                                                    i32.const 110
                                                                                                                                                                    return
                                                                                                                                                                  end
                                                                                                                                                                  i32.const 90
                                                                                                                                                                  return
                                                                                                                                                                end
                                                                                                                                                                i32.const 111
                                                                                                                                                                return
                                                                                                                                                              end
                                                                                                                                                              i32.const 87
                                                                                                                                                              return
                                                                                                                                                            end
                                                                                                                                                            i32.const 94
                                                                                                                                                            return
                                                                                                                                                          end
                                                                                                                                                          i32.const 112
                                                                                                                                                          return
                                                                                                                                                        end
                                                                                                                                                        i32.const 113
                                                                                                                                                        return
                                                                                                                                                      end
                                                                                                                                                      i32.const 59
                                                                                                                                                      return
                                                                                                                                                    end
                                                                                                                                                    i32.const 60
                                                                                                                                                    return
                                                                                                                                                  end
                                                                                                                                                  i32.const 32
                                                                                                                                                  return
                                                                                                                                                end
                                                                                                                                                i32.const 62
                                                                                                                                                return
                                                                                                                                              end
                                                                                                                                              i32.const 114
                                                                                                                                              return
                                                                                                                                            end
                                                                                                                                            i32.const 115
                                                                                                                                            return
                                                                                                                                          end
                                                                                                                                          i32.const 61
                                                                                                                                          return
                                                                                                                                        end
                                                                                                                                        i32.const 117
                                                                                                                                        return
                                                                                                                                      end
                                                                                                                                      i32.const 120
                                                                                                                                      return
                                                                                                                                    end
                                                                                                                                    i32.const 124
                                                                                                                                    return
                                                                                                                                  end
                                                                                                                                  i32.const 123
                                                                                                                                  return
                                                                                                                                end
                                                                                                                                i32.const 140
                                                                                                                                return
                                                                                                                              end
                                                                                                                              i32.const 145
                                                                                                                              return
                                                                                                                            end
                                                                                                                            i32.const 147
                                                                                                                            return
                                                                                                                          end
                                                                                                                          i32.const 155
                                                                                                                          return
                                                                                                                        end
                                                                                                                        i32.const 139
                                                                                                                        return
                                                                                                                      end
                                                                                                                      i32.const 157
                                                                                                                      return
                                                                                                                    end
                                                                                                                    i32.const 151
                                                                                                                    return
                                                                                                                  end
                                                                                                                  i32.const 158
                                                                                                                  return
                                                                                                                end
                                                                                                                i32.const 128
                                                                                                                return
                                                                                                              end
                                                                                                              i32.const 19
                                                                                                              return
                                                                                                            end
                                                                                                            i32.const 163
                                                                                                            return
                                                                                                          end
                                                                                                          i32.const 116
                                                                                                          return
                                                                                                        end
                                                                                                        i32.const 135
                                                                                                        return
                                                                                                      end
                                                                                                      i32.const 118
                                                                                                      return
                                                                                                    end
                                                                                                    i32.const 144
                                                                                                    return
                                                                                                  end
                                                                                                  i32.const 134
                                                                                                  return
                                                                                                end
                                                                                                i32.const 162
                                                                                                return
                                                                                              end
                                                                                              i32.const 126
                                                                                              return
                                                                                            end
                                                                                            i32.const 165
                                                                                            return
                                                                                          end
                                                                                          i32.const 121
                                                                                          return
                                                                                        end
                                                                                        i32.const 122
                                                                                        return
                                                                                      end
                                                                                      i32.const 168
                                                                                      return
                                                                                    end
                                                                                    i32.const 127
                                                                                    return
                                                                                  end
                                                                                  i32.const 125
                                                                                  return
                                                                                end
                                                                                i32.const 159
                                                                                return
                                                                              end
                                                                              i32.const 164
                                                                              return
                                                                            end
                                                                            i32.const 152
                                                                            return
                                                                          end
                                                                          i32.const 133
                                                                          return
                                                                        end
                                                                        i32.const 169
                                                                        return
                                                                      end
                                                                      i32.const 131
                                                                      return
                                                                    end
                                                                    i32.const 130
                                                                    return
                                                                  end
                                                                  i32.const 141
                                                                  return
                                                                end
                                                                i32.const 143
                                                                return
                                                              end
                                                              i32.const 142
                                                              return
                                                            end
                                                            i32.const 129
                                                            return
                                                          end
                                                          i32.const 138
                                                          return
                                                        end
                                                        i32.const 160
                                                        return
                                                      end
                                                      i32.const 154
                                                      return
                                                    end
                                                    i32.const 161
                                                    return
                                                  end
                                                  i32.const 19
                                                  return
                                                end
                                                i32.const 132
                                                return
                                              end
                                              i32.const 19
                                              return
                                            end
                                            i32.const 146
                                            return
                                          end
                                          i32.const 119
                                          return
                                        end
                                        i32.const 153
                                        return
                                      end
                                      i32.const 170
                                      return
                                    end
                                    i32.const 149
                                    return
                                  end
                                  i32.const 150
                                  return
                                end
                                i32.const 148
                                return
                              end
                              i32.const 137
                              return
                            end
                            i32.const 166
                            return
                          end
                          i32.const 136
                          return
                        end
                        i32.const 171
                        return
                      end
                      i32.const 156
                      return
                    end
                    i32.const 167
                    return
                  end
                  i32.const 172
                  return
                end
                i32.const 175
                return
              end
              i32.const 173
              return
            end
            i32.const 174
            return
          end
          i32.const 176
          return
        end
        i32.const 177
        return
      end
      i32.const 178
      return
    end
    i32.const 0)
  (func $node_modules/@graphprotocol/graph-ts/global/global/allocate (type 0) (param i32) (result i32)
    local.get 0
    call $~lib/rt/stub/__alloc)
  (func $~start (type 4)
    global.get $~started
    if  ;; label = @1
      return
    end
    i32.const 1
    global.set $~started
    call $start:tests/ctoken/ctoken.test
    i32.const 0
    call $~lib/rt/stub/__alloc
    drop)
  (table $0 1 funcref)
  (memory (;0;) 1)
  (global $~lib/rt/stub/offset (mut i32) (i32.const 0))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.String i32 (i32.const 0))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.ArrayBuffer i32 (i32.const 1))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.Int8Array i32 (i32.const 2))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.Int16Array i32 (i32.const 3))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.Int32Array i32 (i32.const 4))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.Int64Array i32 (i32.const 5))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.Uint8Array i32 (i32.const 6))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.Uint16Array i32 (i32.const 7))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.Uint32Array i32 (i32.const 8))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.Uint64Array i32 (i32.const 9))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.Float32Array i32 (i32.const 10))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.Float64Array i32 (i32.const 11))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.BigDecimal i32 (i32.const 12))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.ArrayBool i32 (i32.const 13))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.ArrayUint8Array i32 (i32.const 14))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.ArrayEthereumValue i32 (i32.const 15))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.ArrayStoreValue i32 (i32.const 16))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.ArrayJsonValue i32 (i32.const 17))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.ArrayString i32 (i32.const 18))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.ArrayEventParam i32 (i32.const 19))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.ArrayTypedMapEntryStringJsonValue i32 (i32.const 20))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.ArrayTypedMapEntryStringStoreValue i32 (i32.const 21))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.SmartContractCall i32 (i32.const 22))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.EventParam i32 (i32.const 23))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.EthereumTransaction i32 (i32.const 24))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.EthereumBlock i32 (i32.const 25))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.EthereumCall i32 (i32.const 26))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.WrappedTypedMapStringJsonValue i32 (i32.const 27))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.WrappedBool i32 (i32.const 28))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.WrappedJsonValue i32 (i32.const 29))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.EthereumValue i32 (i32.const 30))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.StoreValue i32 (i32.const 31))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.JsonValue i32 (i32.const 32))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.EthereumEvent i32 (i32.const 33))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.TypedMapEntryStringStoreValue i32 (i32.const 34))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.TypedMapEntryStringJsonValue i32 (i32.const 35))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.TypedMapStringStoreValue i32 (i32.const 36))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.TypedMapStringJsonValue i32 (i32.const 37))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.TypedMapStringTypedMapStringJsonValue i32 (i32.const 38))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.ResultTypedMapStringJsonValueBool i32 (i32.const 39))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.ResultJsonValueBool i32 (i32.const 40))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.ArrayU8 i32 (i32.const 41))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.ArrayU16 i32 (i32.const 42))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.ArrayU32 i32 (i32.const 43))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.ArrayU64 i32 (i32.const 44))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.ArrayI8 i32 (i32.const 45))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.ArrayI16 i32 (i32.const 46))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.ArrayI32 i32 (i32.const 47))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.ArrayI64 i32 (i32.const 48))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.ArrayF32 i32 (i32.const 49))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.ArrayF64 i32 (i32.const 50))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.ArrayBigDecimal i32 (i32.const 51))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.NearArrayDataReceiver i32 (i32.const 52))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.NearArrayCryptoHash i32 (i32.const 53))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.NearArrayActionValue i32 (i32.const 54))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.NearMerklePath i32 (i32.const 55))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.NearArrayValidatorStake i32 (i32.const 56))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.NearArraySlashedValidator i32 (i32.const 57))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.NearArraySignature i32 (i32.const 58))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.NearArrayChunkHeader i32 (i32.const 59))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.NearAccessKeyPermissionValue i32 (i32.const 60))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.NearActionValue i32 (i32.const 61))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.NearDirection i32 (i32.const 62))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.NearPublicKey i32 (i32.const 63))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.NearSignature i32 (i32.const 64))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.NearFunctionCallPermission i32 (i32.const 65))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.NearFullAccessPermission i32 (i32.const 66))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.NearAccessKey i32 (i32.const 67))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.NearDataReceiver i32 (i32.const 68))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.NearCreateAccountAction i32 (i32.const 69))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.NearDeployContractAction i32 (i32.const 70))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.NearFunctionCallAction i32 (i32.const 71))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.NearTransferAction i32 (i32.const 72))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.NearStakeAction i32 (i32.const 73))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.NearAddKeyAction i32 (i32.const 74))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.NearDeleteKeyAction i32 (i32.const 75))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.NearDeleteAccountAction i32 (i32.const 76))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.NearActionReceipt i32 (i32.const 77))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.NearSuccessStatus i32 (i32.const 78))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.NearMerklePathItem i32 (i32.const 79))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.NearExecutionOutcome i32 (i32.const 80))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.NearSlashedValidator i32 (i32.const 81))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.NearBlockHeader i32 (i32.const 82))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.NearValidatorStake i32 (i32.const 83))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.NearChunkHeader i32 (i32.const 84))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.NearBlock i32 (i32.const 85))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.NearReceiptWithOutcome i32 (i32.const 86))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.TransactionReceipt i32 (i32.const 1000))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.Log i32 (i32.const 1001))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.ArrayH256 i32 (i32.const 1002))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.ArrayLog i32 (i32.const 1003))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.CosmosAny i32 (i32.const 1500))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.CosmosArrayAny i32 (i32.const 1501))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.CosmosArrayBytes i32 (i32.const 1502))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.CosmosArrayCoin i32 (i32.const 1503))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.CosmosArrayCommitSig i32 (i32.const 1504))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.CosmosArrayEvent i32 (i32.const 1505))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.CosmosArrayEventAttribute i32 (i32.const 1506))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.CosmosArrayEvidence i32 (i32.const 1507))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.CosmosArrayModeInfo i32 (i32.const 1508))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.CosmosArraySignerInfo i32 (i32.const 1509))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.CosmosArrayTxResult i32 (i32.const 1510))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.CosmosArrayValidator i32 (i32.const 1511))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.CosmosArrayValidatorUpdate i32 (i32.const 1512))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.CosmosAuthInfo i32 (i32.const 1513))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.CosmosBlock i32 (i32.const 1514))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.CosmosBlockID i32 (i32.const 1515))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.CosmosBlockIDFlagEnum i32 (i32.const 1516))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.CosmosBlockParams i32 (i32.const 1517))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.CosmosCoin i32 (i32.const 1518))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.CosmosCommit i32 (i32.const 1519))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.CosmosCommitSig i32 (i32.const 1520))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.CosmosCompactBitArray i32 (i32.const 1521))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.CosmosConsensus i32 (i32.const 1522))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.CosmosConsensusParams i32 (i32.const 1523))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.CosmosDuplicateVoteEvidence i32 (i32.const 1524))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.CosmosDuration i32 (i32.const 1525))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.CosmosEvent i32 (i32.const 1526))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.CosmosEventAttribute i32 (i32.const 1527))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.CosmosEventData i32 (i32.const 1528))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.CosmosEventVote i32 (i32.const 1529))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.CosmosEvidence i32 (i32.const 1530))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.CosmosEvidenceList i32 (i32.const 1531))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.CosmosEvidenceParams i32 (i32.const 1532))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.CosmosFee i32 (i32.const 1533))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.CosmosHeader i32 (i32.const 1534))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.CosmosHeaderOnlyBlock i32 (i32.const 1535))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.CosmosLightBlock i32 (i32.const 1536))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.CosmosLightClientAttackEvidence i32 (i32.const 1537))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.CosmosModeInfo i32 (i32.const 1538))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.CosmosModeInfoMulti i32 (i32.const 1539))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.CosmosModeInfoSingle i32 (i32.const 1540))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.CosmosPartSetHeader i32 (i32.const 1541))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.CosmosPublicKey i32 (i32.const 1542))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.CosmosResponseBeginBlock i32 (i32.const 1543))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.CosmosResponseDeliverTx i32 (i32.const 1544))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.CosmosResponseEndBlock i32 (i32.const 1545))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.CosmosSignModeEnum i32 (i32.const 1546))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.CosmosSignedHeader i32 (i32.const 1547))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.CosmosSignedMsgTypeEnum i32 (i32.const 1548))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.CosmosSignerInfo i32 (i32.const 1549))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.CosmosTimestamp i32 (i32.const 1550))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.CosmosTip i32 (i32.const 1551))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.CosmosTransactionData i32 (i32.const 1552))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.CosmosTx i32 (i32.const 1553))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.CosmosTxBody i32 (i32.const 1554))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.CosmosTxResult i32 (i32.const 1555))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.CosmosValidator i32 (i32.const 1556))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.CosmosValidatorParams i32 (i32.const 1557))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.CosmosValidatorSet i32 (i32.const 1558))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.CosmosValidatorSetUpdates i32 (i32.const 1559))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.CosmosValidatorUpdate i32 (i32.const 1560))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.CosmosVersionParams i32 (i32.const 1561))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.ArweaveBlock i32 (i32.const 2500))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.ArweaveProofOfAccess i32 (i32.const 2501))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.ArweaveTag i32 (i32.const 2502))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.ArweaveTagArray i32 (i32.const 2503))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.ArweaveTransaction i32 (i32.const 2504))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.ArweaveTransactionArray i32 (i32.const 2505))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.ArweaveTransactionWithBlockPtr i32 (i32.const 2506))
  (global $~started (mut i32) (i32.const 0))
  (export "TypeId.String" (global 1))
  (export "TypeId.ArrayBuffer" (global 2))
  (export "TypeId.Int8Array" (global 3))
  (export "TypeId.Int16Array" (global 4))
  (export "TypeId.Int32Array" (global 5))
  (export "TypeId.Int64Array" (global 6))
  (export "TypeId.Uint8Array" (global 7))
  (export "TypeId.Uint16Array" (global 8))
  (export "TypeId.Uint32Array" (global 9))
  (export "TypeId.Uint64Array" (global 10))
  (export "TypeId.Float32Array" (global 11))
  (export "TypeId.Float64Array" (global 12))
  (export "TypeId.BigDecimal" (global 13))
  (export "TypeId.ArrayBool" (global 14))
  (export "TypeId.ArrayUint8Array" (global 15))
  (export "TypeId.ArrayEthereumValue" (global 16))
  (export "TypeId.ArrayStoreValue" (global 17))
  (export "TypeId.ArrayJsonValue" (global 18))
  (export "TypeId.ArrayString" (global 19))
  (export "TypeId.ArrayEventParam" (global 20))
  (export "TypeId.ArrayTypedMapEntryStringJsonValue" (global 21))
  (export "TypeId.ArrayTypedMapEntryStringStoreValue" (global 22))
  (export "TypeId.SmartContractCall" (global 23))
  (export "TypeId.EventParam" (global 24))
  (export "TypeId.EthereumTransaction" (global 25))
  (export "TypeId.EthereumBlock" (global 26))
  (export "TypeId.EthereumCall" (global 27))
  (export "TypeId.WrappedTypedMapStringJsonValue" (global 28))
  (export "TypeId.WrappedBool" (global 29))
  (export "TypeId.WrappedJsonValue" (global 30))
  (export "TypeId.EthereumValue" (global 31))
  (export "TypeId.StoreValue" (global 32))
  (export "TypeId.JsonValue" (global 33))
  (export "TypeId.EthereumEvent" (global 34))
  (export "TypeId.TypedMapEntryStringStoreValue" (global 35))
  (export "TypeId.TypedMapEntryStringJsonValue" (global 36))
  (export "TypeId.TypedMapStringStoreValue" (global 37))
  (export "TypeId.TypedMapStringJsonValue" (global 38))
  (export "TypeId.TypedMapStringTypedMapStringJsonValue" (global 39))
  (export "TypeId.ResultTypedMapStringJsonValueBool" (global 40))
  (export "TypeId.ResultJsonValueBool" (global 41))
  (export "TypeId.ArrayU8" (global 42))
  (export "TypeId.ArrayU16" (global 43))
  (export "TypeId.ArrayU32" (global 44))
  (export "TypeId.ArrayU64" (global 45))
  (export "TypeId.ArrayI8" (global 46))
  (export "TypeId.ArrayI16" (global 47))
  (export "TypeId.ArrayI32" (global 48))
  (export "TypeId.ArrayI64" (global 49))
  (export "TypeId.ArrayF32" (global 50))
  (export "TypeId.ArrayF64" (global 51))
  (export "TypeId.ArrayBigDecimal" (global 52))
  (export "TypeId.NearArrayDataReceiver" (global 53))
  (export "TypeId.NearArrayCryptoHash" (global 54))
  (export "TypeId.NearArrayActionValue" (global 55))
  (export "TypeId.NearMerklePath" (global 56))
  (export "TypeId.NearArrayValidatorStake" (global 57))
  (export "TypeId.NearArraySlashedValidator" (global 58))
  (export "TypeId.NearArraySignature" (global 59))
  (export "TypeId.NearArrayChunkHeader" (global 60))
  (export "TypeId.NearAccessKeyPermissionValue" (global 61))
  (export "TypeId.NearActionValue" (global 62))
  (export "TypeId.NearDirection" (global 63))
  (export "TypeId.NearPublicKey" (global 64))
  (export "TypeId.NearSignature" (global 65))
  (export "TypeId.NearFunctionCallPermission" (global 66))
  (export "TypeId.NearFullAccessPermission" (global 67))
  (export "TypeId.NearAccessKey" (global 68))
  (export "TypeId.NearDataReceiver" (global 69))
  (export "TypeId.NearCreateAccountAction" (global 70))
  (export "TypeId.NearDeployContractAction" (global 71))
  (export "TypeId.NearFunctionCallAction" (global 72))
  (export "TypeId.NearTransferAction" (global 73))
  (export "TypeId.NearStakeAction" (global 74))
  (export "TypeId.NearAddKeyAction" (global 75))
  (export "TypeId.NearDeleteKeyAction" (global 76))
  (export "TypeId.NearDeleteAccountAction" (global 77))
  (export "TypeId.NearActionReceipt" (global 78))
  (export "TypeId.NearSuccessStatus" (global 79))
  (export "TypeId.NearMerklePathItem" (global 80))
  (export "TypeId.NearExecutionOutcome" (global 81))
  (export "TypeId.NearSlashedValidator" (global 82))
  (export "TypeId.NearBlockHeader" (global 83))
  (export "TypeId.NearValidatorStake" (global 84))
  (export "TypeId.NearChunkHeader" (global 85))
  (export "TypeId.NearBlock" (global 86))
  (export "TypeId.NearReceiptWithOutcome" (global 87))
  (export "TypeId.TransactionReceipt" (global 88))
  (export "TypeId.Log" (global 89))
  (export "TypeId.ArrayH256" (global 90))
  (export "TypeId.ArrayLog" (global 91))
  (export "TypeId.CosmosAny" (global 92))
  (export "TypeId.CosmosArrayAny" (global 93))
  (export "TypeId.CosmosArrayBytes" (global 94))
  (export "TypeId.CosmosArrayCoin" (global 95))
  (export "TypeId.CosmosArrayCommitSig" (global 96))
  (export "TypeId.CosmosArrayEvent" (global 97))
  (export "TypeId.CosmosArrayEventAttribute" (global 98))
  (export "TypeId.CosmosArrayEvidence" (global 99))
  (export "TypeId.CosmosArrayModeInfo" (global 100))
  (export "TypeId.CosmosArraySignerInfo" (global 101))
  (export "TypeId.CosmosArrayTxResult" (global 102))
  (export "TypeId.CosmosArrayValidator" (global 103))
  (export "TypeId.CosmosArrayValidatorUpdate" (global 104))
  (export "TypeId.CosmosAuthInfo" (global 105))
  (export "TypeId.CosmosBlock" (global 106))
  (export "TypeId.CosmosBlockID" (global 107))
  (export "TypeId.CosmosBlockIDFlagEnum" (global 108))
  (export "TypeId.CosmosBlockParams" (global 109))
  (export "TypeId.CosmosCoin" (global 110))
  (export "TypeId.CosmosCommit" (global 111))
  (export "TypeId.CosmosCommitSig" (global 112))
  (export "TypeId.CosmosCompactBitArray" (global 113))
  (export "TypeId.CosmosConsensus" (global 114))
  (export "TypeId.CosmosConsensusParams" (global 115))
  (export "TypeId.CosmosDuplicateVoteEvidence" (global 116))
  (export "TypeId.CosmosDuration" (global 117))
  (export "TypeId.CosmosEvent" (global 118))
  (export "TypeId.CosmosEventAttribute" (global 119))
  (export "TypeId.CosmosEventData" (global 120))
  (export "TypeId.CosmosEventVote" (global 121))
  (export "TypeId.CosmosEvidence" (global 122))
  (export "TypeId.CosmosEvidenceList" (global 123))
  (export "TypeId.CosmosEvidenceParams" (global 124))
  (export "TypeId.CosmosFee" (global 125))
  (export "TypeId.CosmosHeader" (global 126))
  (export "TypeId.CosmosHeaderOnlyBlock" (global 127))
  (export "TypeId.CosmosLightBlock" (global 128))
  (export "TypeId.CosmosLightClientAttackEvidence" (global 129))
  (export "TypeId.CosmosModeInfo" (global 130))
  (export "TypeId.CosmosModeInfoMulti" (global 131))
  (export "TypeId.CosmosModeInfoSingle" (global 132))
  (export "TypeId.CosmosPartSetHeader" (global 133))
  (export "TypeId.CosmosPublicKey" (global 134))
  (export "TypeId.CosmosResponseBeginBlock" (global 135))
  (export "TypeId.CosmosResponseDeliverTx" (global 136))
  (export "TypeId.CosmosResponseEndBlock" (global 137))
  (export "TypeId.CosmosSignModeEnum" (global 138))
  (export "TypeId.CosmosSignedHeader" (global 139))
  (export "TypeId.CosmosSignedMsgTypeEnum" (global 140))
  (export "TypeId.CosmosSignerInfo" (global 141))
  (export "TypeId.CosmosTimestamp" (global 142))
  (export "TypeId.CosmosTip" (global 143))
  (export "TypeId.CosmosTransactionData" (global 144))
  (export "TypeId.CosmosTx" (global 145))
  (export "TypeId.CosmosTxBody" (global 146))
  (export "TypeId.CosmosTxResult" (global 147))
  (export "TypeId.CosmosValidator" (global 148))
  (export "TypeId.CosmosValidatorParams" (global 149))
  (export "TypeId.CosmosValidatorSet" (global 150))
  (export "TypeId.CosmosValidatorSetUpdates" (global 151))
  (export "TypeId.CosmosValidatorUpdate" (global 152))
  (export "TypeId.CosmosVersionParams" (global 153))
  (export "TypeId.ArweaveBlock" (global 154))
  (export "TypeId.ArweaveProofOfAccess" (global 155))
  (export "TypeId.ArweaveTag" (global 156))
  (export "TypeId.ArweaveTagArray" (global 157))
  (export "TypeId.ArweaveTransaction" (global 158))
  (export "TypeId.ArweaveTransactionArray" (global 159))
  (export "TypeId.ArweaveTransactionWithBlockPtr" (global 160))
  (export "id_of_type" (func $node_modules/@graphprotocol/graph-ts/global/global/id_of_type))
  (export "allocate" (func $node_modules/@graphprotocol/graph-ts/global/global/allocate))
  (export "memory" (memory 0))
  (export "table" (table 0))
  (export "_start" (func $~start))
  (data (;0;) (i32.const 1036) "<")
  (data (;1;) (i32.const 1048) "\01\00\00\00(\00\00\00A\00l\00l\00o\00c\00a\00t\00i\00o\00n\00 \00t\00o\00o\00 \00l\00a\00r\00g\00e")
  (data (;2;) (i32.const 1100) "<")
  (data (;3;) (i32.const 1112) "\01\00\00\00\1e\00\00\00~\00l\00i\00b\00/\00r\00t\00/\00s\00t\00u\00b\00.\00t\00s")
  (data (;4;) (i32.const 1164) "\1c")
  (data (;5;) (i32.const 1176) "\01\00\00\00\0c\00\00\00S\00t\00r\00i\00n\00g")
  (data (;6;) (i32.const 1196) "\1c")
  (data (;7;) (i32.const 1208) "\01\00\00\00\06\00\00\00I\00n\00t")
  (data (;8;) (i32.const 1228) ",")
  (data (;9;) (i32.const 1240) "\01\00\00\00\14\00\00\00B\00i\00g\00D\00e\00c\00i\00m\00a\00l")
  (data (;10;) (i32.const 1276) "\1c")
  (data (;11;) (i32.const 1288) "\01\00\00\00\08\00\00\00b\00o\00o\00l")
  (data (;12;) (i32.const 1308) "\1c")
  (data (;13;) (i32.const 1320) "\01\00\00\00\0a\00\00\00A\00r\00r\00a\00y")
  (data (;14;) (i32.const 1340) "\1c")
  (data (;15;) (i32.const 1352) "\01\00\00\00\08\00\00\00n\00u\00l\00l")
  (data (;16;) (i32.const 1372) "\1c")
  (data (;17;) (i32.const 1384) "\01\00\00\00\0a\00\00\00B\00y\00t\00e\00s")
  (data (;18;) (i32.const 1404) "\1c")
  (data (;19;) (i32.const 1416) "\01\00\00\00\0c\00\00\00B\00i\00g\00I\00n\00t")
  (data (;20;) (i32.const 1436) "<")
  (data (;21;) (i32.const 1452) " \00\00\00\a0\04\00\00\c0\04\00\00\e0\04\00\00\10\05\00\000\05\00\00P\05\00\00p\05\00\00\90\05")
  (data (;22;) (i32.const 1500) ",")
  (data (;23;) (i32.const 1512) "\03\00\00\00\10\00\00\00\b0\05\00\00\b0\05\00\00 \00\00\00\08")
  (data (;24;) (i32.const 1548) "l")
  (data (;25;) (i32.const 1560) "\01\00\00\00T\00\00\000\00x\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000")
  (data (;26;) (i32.const 1660) ",")
  (data (;27;) (i32.const 1672) "\01\00\00\00\0e\00\00\00m\00a\00i\00n\00n\00e\00t")
  (data (;28;) (i32.const 1708) ",")
  (data (;29;) (i32.const 1720) "\01\00\00\00\1c\00\00\00I\00n\00v\00a\00l\00i\00d\00 \00l\00e\00n\00g\00t\00h")
  (data (;30;) (i32.const 1756) ",")
  (data (;31;) (i32.const 1768) "\01\00\00\00\1a\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00.\00t\00s")
  (data (;32;) (i32.const 1804) "l")
  (data (;33;) (i32.const 1816) "\01\00\00\00T\00\00\000\00x\00A\001\006\000\008\001\00F\003\006\000\00e\003\008\004\007\000\000\006\00d\00B\006\006\000\00b\00a\00e\001\00c\006\00d\001\00b\002\00e\001\007\00e\00C\002\00A")
  (data (;34;) (i32.const 1916) "<")
  (data (;35;) (i32.const 1928) "\01\00\00\00&\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00b\00u\00f\00f\00e\00r\00.\00t\00s")
  (data (;36;) (i32.const 1980) "<")
  (data (;37;) (i32.const 1992) "\01\00\00\00$\00\00\00I\00n\00d\00e\00x\00 \00o\00u\00t\00 \00o\00f\00 \00r\00a\00n\00g\00e")
  (data (;38;) (i32.const 2044) "<")
  (data (;39;) (i32.const 2056) "\01\00\00\00$\00\00\00~\00l\00i\00b\00/\00t\00y\00p\00e\00d\00a\00r\00r\00a\00y\00.\00t\00s")
  (data (;40;) (i32.const 2108) "<")
  (data (;41;) (i32.const 2120) "\01\00\00\00 \00\00\00d\00e\00f\00a\00u\00l\00t\00_\00l\00o\00g\00_\00t\00y\00p\00e")
  (data (;42;) (i32.const 2172) "\9c")
  (data (;43;) (i32.const 2184) "\01\00\00\00\86\00\00\00Y\00o\00u\00 \00c\00a\00n\00'\00t\00 \00m\00o\00d\00i\00f\00y\00 \00a\00 \00M\00o\00c\00k\00e\00d\00F\00u\00n\00c\00t\00i\00o\00n\00 \00i\00n\00s\00t\00a\00n\00c\00e\00 \00a\00f\00t\00e\00r\00 \00i\00t\00 \00h\00a\00s\00 \00b\00e\00e\00n\00 \00s\00a\00v\00e\00d\00.")
  (data (;44;) (i32.const 2332) "l")
  (data (;45;) (i32.const 2344) "\01\00\00\00T\00\00\000\00x\00e\00e\00e\00e\00e\00e\00e\00e\00e\00e\00e\00e\00e\00e\00e\00e\00e\00e\00e\00e\00e\00e\00e\00e\00e\00e\00e\00e\00e\00e\00e\00e\00e\00e\00e\00e\00e\00e\00e\00e")
  (data (;46;) (i32.const 2444) "\9c")
  (data (;47;) (i32.const 2456) "\01\00\00\00\84\00\00\000\00x\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000")
  (data (;48;) (i32.const 2604) "\9c")
  (data (;49;) (i32.const 2616) "\01\00\00\00\84\00\00\000\00x\00f\00f\00f\00f\00f\00f\00f\00f\00f\00f\00f\00f\00f\00f\00f\00f\00f\00f\00f\00f\00f\00f\00f\00f\00f\00f\00f\00f\00f\00f\00f\00f\00f\00f\00f\00f\00f\00f\00f\00f\00f\00f\00f\00f\00f\00f\00f\00f\00f\00f\00f\00f\00f\00f\00f\00f\00f\00f\00f\00f\00f\00f\00f\00f")
  (data (;50;) (i32.const 2764) "\1c")
  (data (;51;) (i32.const 2776) "\01\00\00\00\04\00\00\00-\001")
  (data (;52;) (i32.const 2796) "\1c")
  (data (;53;) (i32.const 2808) "\01\00\00\00\02\00\00\000")
  (data (;54;) (i32.const 2828) "\1c")
  (data (;55;) (i32.const 2840) "\01\00\00\00\02\00\00\001")
  (data (;56;) (i32.const 2860) "\1c")
  (data (;57;) (i32.const 2872) "\01\00\00\00\02\00\00\002")
  (data (;58;) (i32.const 2892) "\1c")
  (data (;59;) (i32.const 2904) "\01\00\00\00\06\00\00\001\000\000")
  (data (;60;) (i32.const 2924) "<")
  (data (;61;) (i32.const 2936) "\01\00\00\00&\00\00\001\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000")
  (data (;62;) (i32.const 2988) "L")
  (data (;63;) (i32.const 3000) "\01\00\00\008\00\00\001\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000")
  (data (;64;) (i32.const 3068) "l")
  (data (;65;) (i32.const 3080) "\01\00\00\00\5c\00\00\001\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000")
  (data (;66;) (i32.const 3180) "l")
  (data (;67;) (i32.const 3192) "\01\00\00\00T\00\00\000\00x\000\00b\007\00a\000\00E\00A\00A\008\008\004\008\004\009\00c\006\00A\00f\007\00a\001\002\009\00e\008\009\009\005\003\006\00d\00D\00D\00c\00A\004\009\000\005\00E")
  (data (;68;) (i32.const 3292) "\1c")
  (data (;69;) (i32.const 3304) "\01\00\00\00\08\00\00\00M\00O\00V\00R")
  (data (;70;) (i32.const 3324) "l")
  (data (;71;) (i32.const 3336) "\01\00\00\00T\00\00\000\00x\006\00a\001\00A\007\007\001\00C\007\008\002\006\005\009\006\006\005\002\00d\00a\00D\00C\009\001\004\005\00f\00E\00A\00a\00E\006\002\00b\001\00c\00d\000\007\00f")
  (data (;72;) (i32.const 3436) "l")
  (data (;73;) (i32.const 3448) "\01\00\00\00T\00\00\000\00x\00E\006\00B\00f\00c\006\000\009\00A\002\00e\005\008\005\003\000\003\001\000\00D\006\009\006\004\00c\00c\00d\00d\002\003\006\00f\00c\009\003\00b\004\00A\00D\00B")
  (data (;74;) (i32.const 3548) "l")
  (data (;75;) (i32.const 3560) "\01\00\00\00T\00\00\000\00x\002\00B\00E\002\00e\002\003\000\00e\008\009\00c\005\009\00c\008\00E\002\000\00E\006\003\003\00C\005\002\004\00A\00D\002\00D\00e\002\004\006\00e\007\003\007\000")
  (data (;76;) (i32.const 3660) "l")
  (data (;77;) (i32.const 3672) "\01\00\00\00T\00\00\000\00x\000\009\000\00e\00f\001\007\00e\007\00f\00f\00f\009\00a\00b\00b\003\00b\00f\00f\004\000\00f\009\00b\007\005\00b\00d\005\00e\000\008\00d\004\00f\00b\008\007\00c")
  (data (;78;) (i32.const 3772) ",")
  (data (;79;) (i32.const 3784) "\01\00\00\00\0e\00\00\00C\00R\00E\00A\00T\00E\00D")
  (data (;80;) (i32.const 3820) ",")
  (data (;81;) (i32.const 3832) "\01\00\00\00\10\00\00\00C\00A\00N\00C\00E\00L\00E\00D")
  (data (;82;) (i32.const 3868) ",")
  (data (;83;) (i32.const 3880) "\01\00\00\00\10\00\00\00E\00X\00E\00C\00U\00T\00E\00D")
  (data (;84;) (i32.const 3916) "\1c")
  (data (;85;) (i32.const 3928) "\01\00\00\00\0c\00\00\00Q\00U\00E\00U\00E\00D")
  (data (;86;) (i32.const 3948) "\8c")
  (data (;87;) (i32.const 3960) "\01\00\00\00v\00\00\00F\00a\00i\00l\00e\00d\00 \00t\00o\00 \00m\00u\00l\00t\00i\00p\00l\00y\00 \00B\00i\00g\00I\00n\00t\00s\00 \00b\00e\00c\00a\00u\00s\00e\00 \00l\00e\00f\00t\00 \00h\00a\00n\00d\00 \00s\00i\00d\00e\00 \00i\00s\00 \00'\00n\00u\00l\00l\00'")
  (data (;88;) (i32.const 4092) "l")
  (data (;89;) (i32.const 4104) "\01\00\00\00\5c\00\00\00~\00l\00i\00b\00/\00@\00g\00r\00a\00p\00h\00p\00r\00o\00t\00o\00c\00o\00l\00/\00g\00r\00a\00p\00h\00-\00t\00s\00/\00c\00o\00m\00m\00o\00n\00/\00n\00u\00m\00b\00e\00r\00s\00.\00t\00s")
  (data (;90;) (i32.const 4204) "l")
  (data (;91;) (i32.const 4216) "\01\00\00\00T\00\00\000\00x\008\009\002\00b\00e\007\001\006\00d\00c\00f\000\00a\006\001\009\009\006\007\007\00f\003\005\005\00f\004\005\00b\00a\008\00c\00c\001\002\003\00b\00a\00f\006\000")
  (data (;92;) (i32.const 4316) "l")
  (data (;93;) (i32.const 4328) "\01\00\00\00T\00\00\000\00x\003\001\009\007\006\00d\00c\002\00e\00a\002\007\00e\007\005\00c\00c\005\00a\003\006\008\007\00e\00d\005\009\004\00d\001\007\001\002\007\00f\009\00b\007\002\00e")
  (data (;94;) (i32.const 4429) "\01\02\03\04\05\06\07\08\09\0a\0b\0c\0d\0e\0f\10\11\12\13\14\15\16\17\18\19\1a\1b\1c\1d\1e\1f !\22#$%&'()*+,-./0123456789:;<=>?@abcdefghijklmnopqrstuvwxyz[\5c]^_`abcdefghijklmnopqrstuvwxyz{|}~\7f")
  (data (;95;) (i32.const 4556) "\12\10\13\14\15\16\17\18\19\1a\1b\1c\1d\1e\1f !\10\10\22\10\10\10#$%&'()\10*+\10\10\10\10\10\10\10\10\10\10\10,-.\10/\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\100\10\10\101\10234567\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\108\10\109:\10;<=\10\10\10\10\10\10>\10\10?@ABCDEFGHIJKL\10MNO\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10P\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10QR\10\10\10S\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10T\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10UV\10\10\10\10\10\10\10W\10\10\10\10\10XYZ\10\10\10\10\10[\5c\10\10\10\10\10\10\10\10\10]\10\10\10\10\10\10\10\10\10\10\10\10")
  (data (;96;) (i32.const 5100) "\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\00\00\00\00\80@\00\04\00\00\00@\01\00\00\00\00\00\00\00\00\a1\90\01")
  (data (;97;) (i32.const 5186) "\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff0\04\b0")
  (data (;98;) (i32.const 5244) "\f8\03")
  (data (;99;) (i32.const 5271) "\82\00\00\00\00\00\00\fe\ff\ff\ff\ff\bf\b6\00\00\00\00\00\10\00?\00\ff\17\00\00\00\00\01\f8\ff\ff\00\00\01")
  (data (;100;) (i32.const 5318) "\c0\bf\ff=\00\00\00\80\02\00\00\00\ff\ff\ff\07")
  (data (;101;) (i32.const 5344) "\c0\ff\01\00\00\00\00\00\00\f8?$\00\00\c0\ff\ff?\00\00\00\00\00\0e")
  (data (;102;) (i32.const 5382) "\f8\ff\ff\ff\ff\ff\07\00\00\00\00\00\00\14\fe!\fe\00\0c\00\02\00\02\00\00\00\00\00\00\10\1e \00\00\0c\00\00@\06\00\00\00\00\00\00\10\869\02\00\00\00#\00\06\00\00\00\00\00\00\10\be!\00\00\0c\00\00\fc\02\00\00\00\00\00\00\90\1e `\00\0c\00\00\00\04\00\00\00\00\00\00\00\01 \00\00\00\00\00\00\11\00\00\00\00\00\00\c0\c1=`\00\0c\00\00\00\02\00\00\00\00\00\00\90@0\00\00\0c\00\00\00\03\00\00\00\00\00\00\18\1e \00\00\0c\00\00\00\02\00\00\00\00\00\00\00\00\04\5c")
  (data (;103;) (i32.const 5554) "\f2\07\c0\7f")
  (data (;104;) (i32.const 5570) "\f2\1f@?")
  (data (;105;) (i32.const 5583) "\03\00\00\a0\02\00\00\00\00\00\00\fe\7f\df\e0\ff\fe\ff\ff\ff\1f@")
  (data (;106;) (i32.const 5617) "\e0\fdf\00\00\00\c3\01\00\1e\00d \00 ")
  (data (;107;) (i32.const 5643) "\10")
  (data (;108;) (i32.const 5655) "\e0")
  (data (;109;) (i32.const 5678) "\1c\00\00\00\1c\00\00\00\0c\00\00\00\0c\00\00\00\00\00\00\00\b0?@\fe\8f \00\00\00\00\00x\00\00\00\00\00\00\08\00\00\00\00\00\00\00`\00\00\00\00\02")
  (data (;110;) (i32.const 5744) "\87\01\04\0e")
  (data (;111;) (i32.const 5774) "\80\09\00\00\00\00\00\00@\7f\e5\1f\f8\9f\00\00\00\00\80\00\ff\ff\01\00\00\00\00\00\00\00\0f\00\00\00\00\00\d0\17\04\00\00\00\00\f8\0f\00\03\00\00\00<;\00\00\00\00\00\00@\a3\03\00\00\00\00\00\00\f0\cf\00\00\00\00\00\00\00\00?")
  (data (;112;) (i32.const 5862) "\f7\ff\fd!\10\03\00\00\00\00\00\f0\ff\ff\ff\ff\ff\ff\ff\07\00\01\00\00\00\f8\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\fb")
  (data (;113;) (i32.const 5923) "\a0\03\e0\00\e0\00\e0\00`\00\f8\00\03\90|\00\00\00\00\00\00\df\ff\02\80\00\00\ff\1f\00\00\00\00\00\00\ff\ff\ff\ff\01")
  (data (;114;) (i32.const 5979) "0")
  (data (;115;) (i32.const 5993) "\80\03")
  (data (;116;) (i32.const 6009) "\80\00\80")
  (data (;117;) (i32.const 6024) "\ff\ff\ff\ff\00\00\00\00\00\80")
  (data (;118;) (i32.const 6060) " \00\00\00\00<>\08")
  (data (;119;) (i32.const 6079) "~")
  (data (;120;) (i32.const 6091) "p\00\00 ")
  (data (;121;) (i32.const 6155) "?\00\10")
  (data (;122;) (i32.const 6169) "\80\f7\bf\00\00\00\f0")
  (data (;123;) (i32.const 6186) "\03\00\ff\ff\ff\ff\03")
  (data (;124;) (i32.const 6202) "\01\00\00\07")
  (data (;125;) (i32.const 6219) "\03D\08\00\00`\10")
  (data (;126;) (i32.const 6244) "0\00\00\00\ff\ff\03\80\00\00\00\00\c0?\00\00\80\ff\03\00\00\00\00\00\07\00\00\00\00\00\c83\00\80\00\00`\00\00\00\00\00\00\00\00~f\00\08\10\00\00\00\00\01\10\00\00\00\00\00\00\9d\c1\02\00\00 \000X")
  (data (;127;) (i32.const 6327) "\f8\00\0e")
  (data (;128;) (i32.const 6344) " !\00\00\00\00\00@")
  (data (;129;) (i32.const 6370) "\fc\ff\03\00\00\00\00\00\00\00\ff\ff\08\00\ff\ff\00\00\00\00$")
  (data (;130;) (i32.const 6411) "\80\80@\00\04\00\00\00@\01\00\00\00\00\00\01\00\00\00\00\c0\00\00\00\00\00\00\00\00\08\00\00\0e")
  (data (;131;) (i32.const 6475) " ")
  (data (;132;) (i32.const 6504) "\01")
  (data (;133;) (i32.const 6522) "\c0\07")
  (data (;134;) (i32.const 6540) "n\f0\00\00\00\00\00\87")
  (data (;135;) (i32.const 6568) "`\00\00\00\00\00\00\00\f0")
  (data (;136;) (i32.const 6625) "\18")
  (data (;137;) (i32.const 6644) "\c0\ff\01")
  (data (;138;) (i32.const 6668) "\02\00\00\00\00\00\00\ff\7f\00\00\00\00\00\00\80\03\00\00\00\00\00x&\00 \00\00\00\00\00\00\07\00\00\00\80\ef\1f\00\00\00\00\00\00\00\08\00\03\00\00\00\00\00\c0\7f\00\9e")
  (data (;139;) (i32.const 6737) "\80\d3@")
  (data (;140;) (i32.const 6759) "\80\f8\07\00\00\03\00\00\00\00\00\00\18\01\00\00\00\c0\1f\1f")
  (data (;141;) (i32.const 6803) "\ff\5c\00\00@")
  (data (;142;) (i32.const 6818) "\f8\85\0d")
  (data (;143;) (i32.const 6850) "<\b0\01\00\000")
  (data (;144;) (i32.const 6866) "\f8\a7\01")
  (data (;145;) (i32.const 6881) "(\bf")
  (data (;146;) (i32.const 6895) "\e0\bc\0f")
  (data (;147;) (i32.const 6929) "\80\ff\06")
  (data (;148;) (i32.const 6963) "X\08")
  (data (;149;) (i32.const 6982) "\f0\0c\01\00\00\00\fe\07\00\00\00\00\f8y\80\00~\0e\00\00\00\00\00\fc\7f\03")
  (data (;150;) (i32.const 7026) "\7f\bf")
  (data (;151;) (i32.const 7038) "\fc\ff\ff\fcm")
  (data (;152;) (i32.const 7058) "~\b4\bf")
  (data (;153;) (i32.const 7070) "\a3")
  (data (;154;) (i32.const 7114) "\18\00\00\00\00\00\00\00\ff\01")
  (data (;155;) (i32.const 7178) "\1f\00\00\00\00\00\00\00\7f\00\0f")
  (data (;156;) (i32.const 7221) "\80\00\00\00\00\00\00\00\80\ff\ff\00\00\00\00\00\00\00\00\1b")
  (data (;157;) (i32.const 7263) "`\0f")
  (data (;158;) (i32.const 7288) "\80\03\f8\ff\e7\0f\00\00\00<")
  (data (;159;) (i32.const 7316) "\1c")
  (data (;160;) (i32.const 7340) "\ff\ff\ff\ff\ff\ff\7f\f8\ff\ff\ff\ff\ff\1f \00\10\00\00\f8\fe\ff")
  (data (;161;) (i32.const 7372) "\7f\ff\ff\f9\db\07")
  (data (;162;) (i32.const 7410) "\ff?")
  (data (;163;) (i32.const 7465) "\f0")
  (data (;164;) (i32.const 7494) "\7f")
  (data (;165;) (i32.const 7508) "\f0\0f")
  (data (;166;) (i32.const 7563) "\f8")
  (data (;167;) (i32.const 7564) "\12\13\14\15\16\17\10\10\10\10\10\10\10\10\10\10\18\10\10\19\10\10\10\10\10\10\10\10\1a\1b\11\1c\1d\1e\10\10\1f\10\10\10\10\10\10\10 !\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\22#\10\10\10$\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10%\10\10\10&\10\10\10\10'\10\10\10\10\10\10\10(\10\10\10\10\10\10\10\10\10\10\10)\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10*\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10+,-.\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10/\10\10\10\10\10\10\100\10\10\10\10\10\10\10\10\10\10\10\10\10\10")
  (data (;168;) (i32.const 8108) "\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\00\00\00\00\00\00\00\00\fe\ff\ff\07\fe\ff\ff\07\00\00\00\00\00\04 \04\ff\ff\7f\ff\ff\ff\7f\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\f7\f0\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ef\ff\ff\ff\ff\01\03\00\00\00\1f")
  (data (;169;) (i32.const 8244) " \00\00\00\00\00\cf\bc@\d7\ff\ff\fb\ff\ff\ff\ff\ff\ff\ff\ff\ff\bf\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\03\fc\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\fe\ff\ff\ff\7f\00\ff\ff\ff\ff\ff\01")
  (data (;170;) (i32.const 8352) "\ff\ff\ff\ff\bf \ff\ff\ff\ff\ff\e7")
  (data (;171;) (i32.const 8384) "\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff??")
  (data (;172;) (i32.const 8412) "\ff\01\ff\ff\ff\ff\ff\e7\00\00\00\00\00\00\00\00\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\00\00\00\00\00\00\00\00\ff\ff??\ff\ff\ff\ff??\ff\aa\ff\ff\ff?\ff\ff\ff\ff\ff\ff\df_\dc\1f\cf\0f\ff\1f\dc\1f")
  (data (;173;) (i32.const 8506) "\02\80\00\00\ff\1f")
  (data (;174;) (i32.const 8524) "\84\fc/>P\bd\1f\f2\e0C\00\00\ff\ff\ff\ff\18")
  (data (;175;) (i32.const 8578) "\c0\ff\ff\ff\ff\ff\ff\03\00\00\ff\ff\ff\ff\ff\7f\ff\ff\ff\ff\ff\7f\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\1fx\0c\00\ff\ff\ff\ff\bf ")
  (data (;176;) (i32.const 8660) "\ff\ff\ff\ff\ff?\00\00\ff\ff\ff?")
  (data (;177;) (i32.const 8688) "\fc\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ffx\ff\ff\ff\ff\ff\ff\fc\07\00\00\00\00`\07\00\00\00\00\00\00\ff\ff\ff\ff\ff\f7\ff\01\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\00\00\00\00\00\00\00\00\7f\00\f8")
  (data (;178;) (i32.const 8784) "\fe\ff\ff\07\fe\ff\ff\07")
  (data (;179;) (i32.const 8812) "\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff")
  (data (;180;) (i32.const 8834) "\ff\ff\ff\ff\0f\ff\ff\ff\ff\0f")
  (data (;181;) (i32.const 8860) "\ff\ff\ff\ff\ff\ff\07\00\ff\ff\ff\ff\ff\ff\07")
  (data (;182;) (i32.const 8896) "\ff\ff\ff\ff\ff\ff\ff\ff")
  (data (;183;) (i32.const 8916) "\ff\ff\ff\ff\ff\ff\ff\ff")
  (data (;184;) (i32.const 8940) "\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\df\ff\ff\ff\ff\ff\ff\ff\ff\dfd\de\ff\eb\ef\ff\ff\ff\ff\ff\ff\ff\bf\e7\df\df\ff\ff\ff{_\fc\fd\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff?\ff\ff\ff\fd\ff\ff\f7\ff\ff\ff\f7\ff\ff\df\ff\ff\ff\df\ff\ff\7f\ff\ff\ff\7f\ff\ff\ff\fd\ff\ff\ff\fd\ff\ff\f7\0f\00\00\00\00\00\00\ff\ff\ff\ff\ff\ff\ff\ff\0f")
  (data (;185;) (i32.const 9106) "\ff\ff\ff\03\ff\ff\ff\03\ff\ff\ff\03")
  (data (;186;) (i32.const 9132) "\07\08\09\0a\0b\0c\06\06\06\06\06\06\06\06\06\06\0d\06\06\0e\06\06\06\06\06\06\06\06\0f\10\11\12\06\13\06\06\06\06\06\06\06\06\06\06\14\15\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\16\17\06\06\06\18\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\19\06\06\06\06\1a\06\06\06\06\06\06\06\1b\06\06\06\06\06\06\06\06\06\06\06\1c\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\1d\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\1e\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06")
  (data (;187;) (i32.const 9755) "$++++++++\01\00TVVVVVVVV")
  (data (;188;) (i32.const 9794) "\18\00\00\00+++++++\07++[VVVVVVVJVV\051P1P1P1P1P1P1P1P$Py1P1P18P1P1P1P1P1P1P1PN1\02N\0d\0dN\03N\00$n\00N1&nQN$PN9\14\81\1b\1d\1dS1P1P\0d1P1P1P\1bS$P1\02\5c{\5c{\5c{\5c{\5c{\14y\5c{\5c{\5c-+I\03H\03x\5c{\14\00\96\0a\01+(\06\06\00*\06**+\07\bb\b5+\1e\00+\07+++\01++++++++++++++++++++++++++++++++\01+++++++++++++++++++++++*+++++++++++++\cdF\cd+\00%+\07\01\06\01UVVVVVUVV\02$\81\81\81\81\81\15\81\81\81\00\00+\00\b2\d1\b2\d1\b2\d1\b2\d1\00\00\cd\cc\01\00\d7\d7\d7\d7\d7\83\81\81\81\81\81\81\81\81\81\81\ac\ac\ac\ac\ac\ac\ac\ac\ac\ac\1c\00\00\00\00\001P1P1P1P1P1\02\00\001P1P1P1P1P1P1P1P1PN1P1PN1P1P1P1P1P1P1P1\02\87\a6\87\a6\87\a6\87\a6\87\a6\87\a6\87\a6\87\a6*++++++++++++\00\00\00TVVVVVVVVVVVV")
  (data (;189;) (i32.const 10303) "TVVVVVVVVVVVV\0c\00\0c*+++++++++++++\07*\01")
  (data (;190;) (i32.const 10389) "*++++++++++++++++++++++++++VVl\81\15\00++++++++++++++++++++++++++++++++++++++++++\07l\03A++VVVVVVVVVVVVVV,V+++++++++++++++++++++\01")
  (data (;191;) (i32.const 10548) "\0cl\00\00\00\00\00\06")
  (data (;192;) (i32.const 10594) "\06%\06%\06%\06%\06%\06%\06%\06%\06%\06%\06%\06%\06%\06%\06%\06%\06%\06%\06%\06%\06%\06%\06%\06%\06%Vz\9e&\06%\06%\06%\06%\06%\06%\06%\06%\06%\06%\06%\06%\06%\06%\06%\06\01++OVV,+\7fVV9++UVV++OVV,+\7fVV\817u[{\5c++OVV\02\ac\04\00\009++UVV++OVV,++VV2\13\81W\00o\81~\c9\d7~-\81\81\0e~9\7foW\00\81\81~\15\00~\03++++++++++++\07+$+\97+++++++++*+++++VVVVV\80\81\81\81\819\bb*++++++++++++++++++++++++++++++++++++++++\01\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\c9\ac\ac\ac\ac\ac\ac\ac\ac\ac\ac\ac\ac\ac\ac\ac\d0\0d\00N1\02\b4\c1\c1\d7\d7$P1P1P1P1P1P1P1P1P1P1P1P1P1P1P1P1P\d7\d7S\c1G\d4\d7\d7\d7\05++++++++++++\07\01\00\01")
  (data (;193;) (i32.const 11045) "N1P1P1P1P1P1P1P\0d\00\00\00\00\00$P1P1P1P1P")
  (data (;194;) (i32.const 11110) "+++++++++++y\5c{\5c{O{\5c{\5c{\5c{\5c{\5c{\5c{\5c{\5c{\5c{\5c-++y\14\5c{\5c-y*\5c'\5c{\5c{\5c{\a4\00\0a\b4\5c{\5c{O\03x8+++++++++++++O-++\01")
  (data (;195;) (i32.const 11223) "H")
  (data (;196;) (i32.const 11233) "*++++++++++++++++++++++++++")
  (data (;197;) (i32.const 11293) "++++++++\07\00HVVVVVVVV\02")
  (data (;198;) (i32.const 11368) "+++++++++++++UVVVVVVVVVVVV\0e")
  (data (;199;) (i32.const 11426) "$+++++++++++\07\00VVVVVVVVVVVV")
  (data (;200;) (i32.const 11496) "$++++++++++++++++\07\00\00\00\00VVVVVVVVVVVVVVVVV")
  (data (;201;) (i32.const 11593) "*++++++++++VVVVVVVVVV\0e")
  (data (;202;) (i32.const 11647) "*++++++++++VVVVVVVVVV\0e")
  (data (;203;) (i32.const 11712) "+++++++++++UVVVVVVVVVV\0e")
  (data (;204;) (i32.const 11801) "\08\00\00V\01\00\009")
  (data (;205;) (i32.const 11816) "\01 \00\00\00\e0\ff\ff\00\bf\1d\00\00\e7\02\00\00y\00\00\02$\00\00\01\01\00\00\00\ff\ff\ff\00\00\00\00\01\02\00\00\00\fe\ff\ff\019\ff\ff\00\18\ff\ff\01\87\ff\ff\00\d4\fe\ff\00\c3\00\00\01\d2\00\00\01\ce\00\00\01\cd\00\00\01O\00\00\01\ca\00\00\01\cb\00\00\01\cf\00\00\00a\00\00\01\d3\00\00\01\d1\00\00\00\a3\00\00\01\d5\00\00\00\82\00\00\01\d6\00\00\01\da\00\00\01\d9\00\00\01\db\00\00\008\00\00\03\00\00\00\00\b1\ff\ff\01\9f\ff\ff\01\c8\ff\ff\02($\00\00\00\00\00\01\01\00\00\00\ff\ff\ff\003\ff\ff\00&\ff\ff\01~\ff\ff\01+*\00\01]\ff\ff\01(*\00\00?*\00\01=\ff\ff\01E\00\00\01G\00\00\00\1f*\00\00\1c*\00\00\1e*\00\00.\ff\ff\002\ff\ff\006\ff\ff\005\ff\ff\00O\a5\00\00K\a5\00\001\ff\ff\00(\a5\00\00D\a5\00\00/\ff\ff\00-\ff\ff\00\f7)\00\00A\a5\00\00\fd)\00\00+\ff\ff\00*\ff\ff\00\e7)\00\00C\a5\00\00*\a5\00\00\bb\ff\ff\00'\ff\ff\00\b9\ff\ff\00%\ff\ff\00\15\a5\00\00\12\a5\00\02$L\00\00\00\00\00\01 \00\00\00\e0\ff\ff\01\01\00\00\00\ff\ff\ff\00T\00\00\01t\00\00\01&\00\00\01%\00\00\01@\00\00\01?\00\00\00\da\ff\ff\00\db\ff\ff\00\e1\ff\ff\00\c0\ff\ff\00\c1\ff\ff\01\08\00\00\00\c2\ff\ff\00\c7\ff\ff\00\d1\ff\ff\00\ca\ff\ff\00\f8\ff\ff\00\aa\ff\ff\00\b0\ff\ff\00\07\00\00\00\8c\ff\ff\01\c4\ff\ff\00\a0\ff\ff\01\f9\ff\ff\02\1ap\00\01\01\00\00\00\ff\ff\ff\01 \00\00\00\e0\ff\ff\01P\00\00\01\0f\00\00\00\f1\ff\ff\00\00\00\00\010\00\00\00\d0\ff\ff\01\01\00\00\00\ff\ff\ff\00\00\00\00\00\c0\0b\00\01`\1c\00\00\00\00\00\01\d0\97\00\01\08\00\00\00\f8\ff\ff\02\05\8a\00\00\00\00\00\01@\f4\ff\00\9e\e7\ff\00\c2\89\00\00\db\e7\ff\00\92\e7\ff\00\93\e7\ff\00\9c\e7\ff\00\9d\e7\ff\00\a4\e7\ff\00\00\00\00\008\8a\00\00\04\8a\00\00\e6\0e\00\01\01\00\00\00\ff\ff\ff\00\00\00\00\00\c5\ff\ff\01A\e2\ff\02\1d\8f\00\00\08\00\00\01\f8\ff\ff\00\00\00\00\00V\00\00\01\aa\ff\ff\00J\00\00\00d\00\00\00\80\00\00\00p\00\00\00~\00\00\00\09\00\00\01\b6\ff\ff\01\f7\ff\ff\00\db\e3\ff\01\9c\ff\ff\01\90\ff\ff\01\80\ff\ff\01\82\ff\ff\02\05\ac\00\00\00\00\00\01\10\00\00\00\f0\ff\ff\01\1c\00\00\01\01\00\00\01\a3\e2\ff\01A\df\ff\01\ba\df\ff\00\e4\ff\ff\02\0b\b1\00\01\01\00\00\00\ff\ff\ff\010\00\00\00\d0\ff\ff\00\00\00\00\01\09\d6\ff\01\1a\f1\ff\01\19\d6\ff\00\d5\d5\ff\00\d8\d5\ff\01\e4\d5\ff\01\03\d6\ff\01\e1\d5\ff\01\e2\d5\ff\01\c1\d5\ff\00\00\00\00\00\a0\e3\ff\00\00\00\00\01\01\00\00\00\ff\ff\ff\02\0c\bc\00\00\00\00\00\01\01\00\00\00\ff\ff\ff\01\bcZ\ff\01\a0\03\00\01\fcu\ff\01\d8Z\ff\000\00\00\01\b1Z\ff\01\b5Z\ff\01\bfZ\ff\01\eeZ\ff\01\d6Z\ff\01\ebZ\ff\01\d0\ff\ff\01\bdZ\ff\01\c8u\ff\00\00\00\00\000h\ff\00`\fc\ff\00\00\00\00\01 \00\00\00\e0\ff\ff\00\00\00\00\01(\00\00\00\d8\ff\ff\00\00\00\00\01@\00\00\00\c0\ff\ff\00\00\00\00\01 \00\00\00\e0\ff\ff\00\00\00\00\01 \00\00\00\e0\ff\ff\00\00\00\00\01\22\00\00\00\de\ff\ff")
  (data (;206;) (i32.const 12773) "\06'Qow")
  (data (;207;) (i32.const 12788) "|\00\00\7f\00\00\00\00\00\00\00\00\83\8e\92\97\00\aa")
  (data (;208;) (i32.const 12816) "\b4\c4")
  (data (;209;) (i32.const 12938) "\c6\c9\00\00\00\db")
  (data (;210;) (i32.const 13027) "\de\00\00\00\00\e1\00\00\00\00\00\00\00\e4")
  (data (;211;) (i32.const 13052) "\e7")
  (data (;212;) (i32.const 13138) "\ea")
  (data (;213;) (i32.const 13261) "\ed")
  (data (;214;) (i32.const 13284) "0\0c1\0dx\0e\7f\0f\80\10\81\11\86\12\89\13\8a\13\8e\14\8f\15\90\16\93\13\94\17\95\18\96\19\97\1a\9a\1b\9c\19\9d\1c\9e\1d\9f\1e\a6\1f\a9\1f\ae\1f\b1 \b2 \b7!\bf\22\c5#\c8#\cb#\dd$\f2#\f6%\f7& -:.=/>0?1@1C2D3E4P5Q6R7S8T9Y:[;\5c<a=c>e?f@hAiBj@kClDoBqErFuG}H\82I\87J\89K\8aL\8bL\8cM\92N\9dO\9ePEW{\1d|\1d}\1d\7fX\86Y\88Z\89Z\8aZ\8c[\8e\5c\8f\5c\ac]\ad^\ae^\af^\c2_\cc`\cda\cea\cfb\d0c\d1d\d5e\d6f\d7g\f0h\f1i\f2j\f3k\f4l\f5m\f9n\fd-\fe-\ff-PiQiRiSiTiUiViWiXiYiZi[i\5ci]i^i_i\82\00\83\00\84\00\85\00\86\00\87\00\88\00\89\00\c0u\cfv\80\89\81\8a\82\8b\85\8c\86\8dp\9dq\9dv\9ew\9ex\9fy\9fz\a0{\a0|\a1}\a1\b3\a2\ba\a3\bb\a3\bc\a4\be\a5\c3\a2\cc\a4\da\a6\db\a6\e5j\ea\a7\eb\a7\ecn\f3\a2\f8\a8\f9\a8\fa\a9\fb\a9\fc\a4&\b0*\b1+\b2N\b3\84\08b\bac\bbd\bce\bdf\bem\bfn\c0o\c1p\c2~\c3\7f\c3}\cf\8d\d0\94\d1\ab\d2\ac\d3\ad\d4\b0\d5\b1\d6\b2\d7\c4\d8\c5\d9\c6\da")
  (data (;215;) (i32.const 13692) "<")
  (data (;216;) (i32.const 13704) "\01\00\00\00$\00\00\002\005\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000")
  (data (;217;) (i32.const 13756) "l")
  (data (;218;) (i32.const 13768) "\01\00\00\00T\00\00\000\00x\003\00f\008\00B\00F\00b\00D\00c\001\00e\007\009\007\007\007\005\001\001\00c\000\000\00A\00d\008\005\009\001\00c\00e\00f\008\008\008\00C\002\001\001\003\00C\001")
  (data (;219;) (i32.const 13868) "l")
  (data (;220;) (i32.const 13880) "\01\00\00\00T\00\00\000\00x\006\00e\000\005\001\003\001\004\005\00F\00C\00E\007\000\007\00C\00d\007\004\003\005\002\008\00D\00B\007\00C\001\00c\00A\00B\005\003\007\00D\00E\009\00d\001\00B")
  (data (;221;) (i32.const 13980) "l")
  (data (;222;) (i32.const 13992) "\01\00\00\00T\00\00\000\00x\003\009\004\00c\00f\00c\008\007\00d\007\009\001\00e\000\002\00e\00e\00a\005\005\002\007\002\006\002\002\008\00a\00d\002\009\006\008\000\00d\00f\006\000\009\002")
  (data (;223;) (i32.const 14092) "\1c")
  (data (;224;) (i32.const 14104) "\01\00\00\00\0a\00\00\00m\00M\00O\00V\00R")
  (data (;225;) (i32.const 14124) "l")
  (data (;226;) (i32.const 14136) "\01\00\00\00T\00\00\000\00x\00a\000\00d\001\001\006\005\001\003\00b\00d\000\00b\008\00f\003\00f\001\004\00e\006\00e\00a\004\001\005\005\006\00c\006\00e\00c\003\004\006\008\008\00e\000\00f")
  (data (;227;) (i32.const 14236) "l")
  (data (;228;) (i32.const 14248) "\01\00\00\00T\00\00\000\00x\00f\00f\00f\00f\00f\00f\00f\00f\001\00f\00c\00a\00c\00b\00d\002\001\008\00e\00d\00c\000\00e\00b\00a\002\000\00f\00c\002\003\000\008\00c\007\007\008\000\008\000")
  (data (;229;) (i32.const 14348) "\1c")
  (data (;230;) (i32.const 14360) "\01\00\00\00\0c\00\00\00m\00x\00c\00K\00S\00M")
  (data (;231;) (i32.const 14380) "\1c")
  (data (;232;) (i32.const 14392) "\01\00\00\00\04\00\00\000\00x")
  (data (;233;) (i32.const 14412) ",")
  (data (;234;) (i32.const 14424) "\01\00\00\00\1c\00\00\00~\00l\00i\00b\00/\00s\00t\00r\00i\00n\00g\00.\00t\00s")
  (data (;235;) (i32.const 14460) "\1c")
  (data (;236;) (i32.const 14472) "\01")
  (data (;237;) (i32.const 14492) "<")
  (data (;238;) (i32.const 14508) " \00\00\00\a0\04\00\00\c0\04\00\00\e0\04\00\00\10\05\00\000\05\00\00P\05\00\00p\05\00\00\90\05")
  (data (;239;) (i32.const 14556) ",")
  (data (;240;) (i32.const 14568) "\03\00\00\00\10\00\00\00\b08\00\00\b08\00\00 \00\00\00\08"))
