(module
  (type (;0;) (func (param i32) (result i32)))
  (type (;1;) (func))
  (type (;2;) (func (param i32 i32)))
  (type (;3;) (func (param i32 i32) (result i32)))
  (type (;4;) (func (param i32 i32 i32)))
  (type (;5;) (func (param i32 i32 i32) (result i32)))
  (type (;6;) (func (param i32 i32 i32 i32) (result i32)))
  (type (;7;) (func (param i32 i32 i32 i32)))
  (type (;8;) (func (param i32 i32 i32 i32 i32 i32)))
  (type (;9;) (func (param i32 i32 i32 i32 i32) (result i32)))
  (type (;10;) (func (param i32)))
  (import "env" "abort" (func $~lib/builtins/abort (type 7)))
  (import "conversion" "typeConversion.stringToH160" (func $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.stringToH160 (type 0)))
  (import "numbers" "bigInt.times" (func $~lib/@graphprotocol/graph-ts/common/numbers/bigInt.times (type 3)))
  (import "index" "_registerTest" (func $~lib/matchstick-as/assembly/index/_registerTest (type 4)))
  (import "store" "clearStore" (func $~lib/matchstick-as/assembly/store/clearStore (type 1)))
  (import "index" "_registerHook" (func $~lib/matchstick-as/assembly/index/_registerHook (type 2)))
  (import "log" "log.log" (func $~lib/matchstick-as/assembly/log/log.log (type 2)))
  (import "index" "mockFunction" (func $~lib/matchstick-as/assembly/index/mockFunction (type 8)))
  (import "ethereum" "ethereum.call" (func $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.call (type 0)))
  (import "assert" "_assert.equals" (func $~lib/matchstick-as/assembly/assert/_assert.equals (type 3)))
  (import "numbers" "bigInt.fromString" (func $~lib/@graphprotocol/graph-ts/common/numbers/bigInt.fromString (type 0)))
  (import "store" "countEntities" (func $~lib/matchstick-as/assembly/store/countEntities (type 0)))
  (import "index" "store.get" (func $~lib/@graphprotocol/graph-ts/index/store.get (type 3)))
  (import "index" "log.log" (func $~lib/@graphprotocol/graph-ts/index/log.log (type 2)))
  (import "conversion" "typeConversion.bytesToHex" (func $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.bytesToHex (type 0)))
  (import "numbers" "bigDecimal.dividedBy" (func $~lib/@graphprotocol/graph-ts/common/numbers/bigDecimal.dividedBy (type 3)))
  (import "index" "_registerDescribe" (func $~lib/matchstick-as/assembly/index/_registerDescribe (type 2)))
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
  (func $~lib/memory/memory.fill (type 2) (param i32 i32)
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
  (func $~lib/@graphprotocol/graph-ts/common/collections/Entity#constructor (type 0) (param i32) (result i32)
    (local i32 i32)
    block (result i32)  ;; label = @1
      block (result i32)  ;; label = @2
        local.get 0
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
    local.get 0)
  (func $~lib/typedarray/Uint8Array#__set (type 4) (param i32 i32 i32)
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
  (func $~lib/util/memory/memcpy (type 4) (param i32 i32 i32)
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
  (func $~lib/memory/memory.copy (type 4) (param i32 i32 i32)
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
  (func $~lib/rt/__newArray (type 5) (param i32 i32 i32) (result i32)
    (local i32 i32 i32)
    local.get 0
    i32.const 2
    i32.shl
    local.tee 4
    local.set 5
    local.get 4
    i32.const 0
    call $~lib/rt/stub/__new
    local.set 3
    local.get 2
    if  ;; label = @1
      local.get 3
      local.get 2
      local.get 5
      call $~lib/memory/memory.copy
    end
    i32.const 16
    local.get 1
    call $~lib/rt/stub/__new
    local.tee 1
    local.get 3
    i32.store
    local.get 1
    local.get 3
    i32.store offset=4
    local.get 1
    local.get 4
    i32.store offset=8
    local.get 1
    local.get 0
    i32.store offset=12
    local.get 1)
  (func $~lib/@graphprotocol/graph-ts/common/numbers/BigDecimal#constructor (type 0) (param i32) (result i32)
    (local i32)
    i32.const 8
    i32.const 19
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
    i32.store offset=4
    local.get 1)
  (func $src/helpers/exponentToBigDecimal (type 0) (param i32) (result i32)
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
          i32.const 3120
          i32.const 3264
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
  (func $start:tests/ctoken.test~anonymous|0 (type 1)
    i32.const 0
    i32.const 3440
    i32.const 10
    i32.const 3
    call $~lib/builtins/abort
    unreachable)
  (func $start:tests/ctoken.test~anonymous|1~anonymous|0 (type 1)
    call $~lib/matchstick-as/assembly/store/clearStore)
  (func $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value.fromI32 (type 0) (param i32) (result i32)
    (local i64)
    local.get 0
    call $~lib/@graphprotocol/graph-ts/common/collections/ByteArray.fromI32
    i64.extend_i32_u
    local.set 1
    i32.const 16
    i32.const 21
    call $~lib/rt/stub/__new
    local.tee 0
    i32.const 3
    i32.store
    local.get 0
    local.get 1
    i64.store offset=8
    local.get 0)
  (func $~lib/array/ensureCapacity (type 2) (param i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32)
    local.get 1
    local.get 0
    i32.load offset=8
    local.tee 7
    i32.const 2
    i32.shr_u
    i32.gt_u
    if  ;; label = @1
      local.get 1
      i32.const 268435455
      i32.gt_u
      if  ;; label = @2
        i32.const 1728
        i32.const 1776
        i32.const 17
        i32.const 48
        call $~lib/builtins/abort
        unreachable
      end
      local.get 0
      i32.load
      local.tee 9
      local.set 2
      local.get 7
      i32.const 1
      i32.shl
      local.tee 3
      i32.const 1073741820
      local.get 3
      i32.const 1073741820
      i32.lt_u
      select
      local.tee 3
      local.get 1
      i32.const 8
      local.get 1
      i32.const 8
      i32.gt_u
      select
      i32.const 2
      i32.shl
      local.tee 1
      local.get 1
      local.get 3
      i32.lt_u
      select
      local.tee 3
      i32.const 1073741804
      i32.gt_u
      if  ;; label = @2
        i32.const 1056
        i32.const 1120
        i32.const 99
        i32.const 30
        call $~lib/builtins/abort
        unreachable
      end
      local.get 3
      i32.const 16
      i32.add
      local.set 4
      local.get 2
      i32.const 16
      i32.sub
      local.tee 1
      i32.const 15
      i32.and
      i32.const 1
      local.get 1
      select
      if  ;; label = @2
        i32.const 0
        i32.const 1120
        i32.const 45
        i32.const 3
        call $~lib/builtins/abort
        unreachable
      end
      global.get $~lib/rt/stub/offset
      local.get 1
      local.get 1
      i32.const 4
      i32.sub
      local.tee 8
      i32.load
      local.tee 6
      i32.add
      i32.eq
      local.set 5
      local.get 4
      i32.const 19
      i32.add
      i32.const -16
      i32.and
      i32.const 4
      i32.sub
      local.set 2
      local.get 4
      local.get 6
      i32.gt_u
      if  ;; label = @2
        local.get 5
        if  ;; label = @3
          local.get 4
          i32.const 1073741820
          i32.gt_u
          if  ;; label = @4
            i32.const 1056
            i32.const 1120
            i32.const 52
            i32.const 33
            call $~lib/builtins/abort
            unreachable
          end
          local.get 1
          local.get 2
          i32.add
          local.tee 4
          memory.size
          local.tee 6
          i32.const 16
          i32.shl
          i32.const 15
          i32.add
          i32.const -16
          i32.and
          local.tee 5
          i32.gt_u
          if  ;; label = @4
            local.get 6
            local.get 4
            local.get 5
            i32.sub
            i32.const 65535
            i32.add
            i32.const -65536
            i32.and
            i32.const 16
            i32.shr_u
            local.tee 5
            local.get 5
            local.get 6
            i32.lt_s
            select
            memory.grow
            i32.const 0
            i32.lt_s
            if  ;; label = @5
              local.get 5
              memory.grow
              i32.const 0
              i32.lt_s
              if  ;; label = @6
                unreachable
              end
            end
          end
          local.get 4
          global.set $~lib/rt/stub/offset
          local.get 8
          local.get 2
          i32.store
        else
          local.get 2
          local.get 6
          i32.const 1
          i32.shl
          local.tee 4
          local.get 2
          local.get 4
          i32.gt_u
          select
          call $~lib/rt/stub/__alloc
          local.tee 2
          local.get 1
          local.get 6
          call $~lib/memory/memory.copy
          local.get 2
          local.set 1
        end
      else
        local.get 5
        if  ;; label = @3
          local.get 1
          local.get 2
          i32.add
          global.set $~lib/rt/stub/offset
          local.get 8
          local.get 2
          i32.store
        end
      end
      local.get 1
      i32.const 4
      i32.sub
      local.get 3
      i32.store offset=16
      local.get 7
      local.get 1
      i32.const 16
      i32.add
      local.tee 1
      i32.add
      local.get 3
      local.get 7
      i32.sub
      call $~lib/memory/memory.fill
      local.get 1
      local.get 9
      i32.ne
      if  ;; label = @2
        local.get 0
        local.get 1
        i32.store
        local.get 0
        local.get 1
        i32.store offset=4
      end
      local.get 0
      local.get 3
      i32.store offset=8
    end)
  (func $~lib/array/Array<~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value>#__set (type 4) (param i32 i32 i32)
    (local i32)
    local.get 1
    local.get 0
    i32.load offset=12
    i32.ge_u
    if  ;; label = @1
      local.get 1
      i32.const 0
      i32.lt_s
      if  ;; label = @2
        i32.const 2000
        i32.const 1776
        i32.const 122
        i32.const 22
        call $~lib/builtins/abort
        unreachable
      end
      local.get 0
      local.get 1
      i32.const 1
      i32.add
      local.tee 3
      call $~lib/array/ensureCapacity
      local.get 0
      local.get 3
      i32.store offset=12
    end
    local.get 0
    i32.load offset=4
    local.get 1
    i32.const 2
    i32.shl
    i32.add
    local.get 2
    i32.store)
  (func $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value.fromBoolean (type 0) (param i32) (result i32)
    (local i64)
    local.get 0
    i32.eqz
    i32.eqz
    i64.extend_i32_u
    local.set 1
    i32.const 16
    i32.const 21
    call $~lib/rt/stub/__new
    local.tee 0
    i32.const 5
    i32.store
    local.get 0
    local.get 1
    i64.store offset=8
    local.get 0)
  (func $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value.fromAddress (type 0) (param i32) (result i32)
    (local i64)
    local.get 0
    i32.load offset=8
    i32.const 20
    i32.ne
    if  ;; label = @1
      i32.const 4048
      i32.const 4144
      i32.const 197
      i32.const 7
      call $~lib/builtins/abort
      unreachable
    end
    local.get 0
    i64.extend_i32_u
    local.set 1
    i32.const 16
    i32.const 21
    call $~lib/rt/stub/__new
    local.tee 0
    i32.const 0
    i32.store
    local.get 0
    local.get 1
    i64.store offset=8
    local.get 0)
  (func $~lib/matchstick-as/assembly/index/createMockedFunction (type 5) (param i32 i32 i32) (result i32)
    (local i32)
    i32.const 20
    i32.const 24
    call $~lib/rt/stub/__new
    local.tee 3
    i32.const 0
    i32.store8
    local.get 3
    i32.const 0
    i32.store offset=4
    local.get 3
    i32.const 0
    i32.store offset=8
    local.get 3
    i32.const 0
    i32.store offset=12
    local.get 3
    i32.const 0
    i32.const 22
    i32.const 4640
    call $~lib/rt/__newArray
    i32.store offset=16
    local.get 3
    local.get 0
    i32.store offset=4
    local.get 3
    local.get 1
    i32.store offset=8
    local.get 3
    local.get 2
    i32.store offset=12
    local.get 3)
  (func $~lib/string/String#concat (type 3) (param i32 i32) (result i32)
    (local i32 i32 i32)
    local.get 0
    i32.const 20
    i32.sub
    i32.load offset=16
    i32.const 1
    i32.shr_u
    i32.const 1
    i32.shl
    local.tee 3
    local.get 1
    i32.const 20
    i32.sub
    i32.load offset=16
    i32.const 1
    i32.shr_u
    i32.const 1
    i32.shl
    local.tee 4
    i32.add
    local.tee 2
    i32.eqz
    if  ;; label = @1
      i32.const 4704
      return
    end
    local.get 2
    i32.const 1
    call $~lib/rt/stub/__new
    local.tee 2
    local.get 0
    local.get 3
    call $~lib/memory/memory.copy
    local.get 2
    local.get 3
    i32.add
    local.get 1
    local.get 4
    call $~lib/memory/memory.copy
    local.get 2)
  (func $~lib/array/Array<~lib/string/String>#__get (type 3) (param i32 i32) (result i32)
    local.get 1
    local.get 0
    i32.load offset=12
    i32.ge_u
    if  ;; label = @1
      i32.const 2000
      i32.const 1776
      i32.const 106
      i32.const 42
      call $~lib/builtins/abort
      unreachable
    end
    local.get 0
    i32.load offset=4
    local.get 1
    i32.const 2
    i32.shl
    i32.add
    i32.load
    local.tee 0
    i32.eqz
    if  ;; label = @1
      i32.const 4928
      i32.const 1776
      i32.const 110
      i32.const 40
      call $~lib/builtins/abort
      unreachable
    end
    local.get 0)
  (func $~lib/string/String#charAt (type 3) (param i32 i32) (result i32)
    (local i32)
    local.get 1
    local.get 0
    i32.const 20
    i32.sub
    i32.load offset=16
    i32.const 1
    i32.shr_u
    i32.ge_u
    if  ;; label = @1
      i32.const 4704
      return
    end
    i32.const 2
    i32.const 1
    call $~lib/rt/stub/__new
    local.tee 2
    local.get 0
    local.get 1
    i32.const 1
    i32.shl
    i32.add
    i32.load16_u
    i32.store16
    local.get 2)
  (func $~lib/matchstick-as/assembly/log/format (type 0) (param i32) (result i32)
    (local i32 i32 i32 i32 i32)
    i32.const 4704
    local.set 4
    i32.const 2188
    i32.load
    i32.const 1
    i32.shr_u
    local.set 3
    loop  ;; label = @1
      local.get 3
      local.get 5
      i32.gt_s
      if  ;; label = @2
        local.get 5
        local.get 3
        i32.const 1
        i32.sub
        i32.lt_s
        if (result i32)  ;; label = @3
          local.get 5
          i32.const 2188
          i32.load
          i32.const 1
          i32.shr_u
          i32.ge_u
          if (result i32)  ;; label = @4
            i32.const -1
          else
            local.get 5
            i32.const 1
            i32.shl
            i32.const 2192
            i32.add
            i32.load16_u
          end
          i32.const 123
          i32.eq
        else
          i32.const 0
        end
        if (result i32)  ;; label = @3
          local.get 5
          i32.const 1
          i32.add
          local.tee 2
          i32.const 2188
          i32.load
          i32.const 1
          i32.shr_u
          i32.ge_u
          if (result i32)  ;; label = @4
            i32.const -1
          else
            local.get 2
            i32.const 1
            i32.shl
            i32.const 2192
            i32.add
            i32.load16_u
          end
          i32.const 125
          i32.eq
        else
          i32.const 0
        end
        if  ;; label = @3
          local.get 1
          local.get 0
          i32.load offset=12
          i32.ge_s
          if (result i32)  ;; label = @4
            i32.const 4736
            i32.const 2192
            call $~lib/string/String#concat
            i32.const 4832
            i32.const 48
            i32.const 9
            call $~lib/builtins/abort
            unreachable
          else
            local.get 1
            local.tee 2
            i32.const 1
            i32.add
            local.set 1
            local.get 4
            local.get 0
            local.get 2
            call $~lib/array/Array<~lib/string/String>#__get
            call $~lib/string/String#concat
            local.set 4
            local.get 5
            i32.const 1
            i32.add
          end
          local.set 5
        else
          local.get 4
          i32.const 2192
          local.get 5
          call $~lib/string/String#charAt
          call $~lib/string/String#concat
          local.set 4
        end
        local.get 5
        i32.const 1
        i32.add
        local.set 5
        br 1 (;@1;)
      end
    end
    local.get 4)
  (func $~lib/matchstick-as/assembly/index/MockedFunction#returns (type 2) (param i32 i32)
    local.get 0
    i32.load8_u
    if  ;; label = @1
      i32.const 0
      i32.const 0
      i32.const 3
      i32.const 5088
      call $~lib/rt/__newArray
      call $~lib/matchstick-as/assembly/log/format
      call $~lib/matchstick-as/assembly/log/log.log
    else
      local.get 0
      i32.load offset=4
      local.get 0
      i32.load offset=8
      local.get 0
      i32.load offset=12
      local.get 0
      i32.load offset=16
      local.get 1
      i32.const 0
      call $~lib/matchstick-as/assembly/index/mockFunction
      local.get 0
      i32.const 1
      i32.store8
    end)
  (func $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.SmartContractCall#constructor (type 9) (param i32 i32 i32 i32 i32) (result i32)
    (local i32)
    i32.const 20
    i32.const 25
    call $~lib/rt/stub/__new
    local.tee 5
    i32.const 0
    i32.store
    local.get 5
    i32.const 0
    i32.store offset=4
    local.get 5
    i32.const 0
    i32.store offset=8
    local.get 5
    i32.const 0
    i32.store offset=12
    local.get 5
    i32.const 0
    i32.store offset=16
    local.get 5
    local.get 0
    i32.store
    local.get 5
    local.get 1
    i32.store offset=4
    local.get 5
    local.get 2
    i32.store offset=8
    local.get 5
    local.get 3
    i32.store offset=12
    local.get 5
    local.get 4
    i32.store offset=16
    local.get 5)
  (func $start:tests/ctoken.test~anonymous|1~anonymous|1 (type 1)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i64)
    i32.const 152
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value.fromI32
    local.set 7
    i32.const 16
    i32.const 21
    call $~lib/rt/stub/__new
    local.tee 0
    i32.const 6
    i32.store
    local.get 0
    i64.const 3840
    i64.store offset=8
    local.get 0
    local.set 3
    i32.const 2
    i32.const 18
    i32.const 3904
    call $~lib/rt/__newArray
    local.tee 4
    i32.load offset=12
    local.set 1
    i32.const 16
    i32.const 22
    call $~lib/rt/stub/__new
    local.tee 0
    i32.const 0
    i32.store
    local.get 0
    i32.const 0
    i32.store offset=4
    local.get 0
    i32.const 0
    i32.store offset=8
    local.get 0
    i32.const 0
    i32.store offset=12
    local.get 1
    i32.const 268435455
    i32.gt_u
    if  ;; label = @1
      i32.const 1728
      i32.const 1776
      i32.const 64
      i32.const 60
      call $~lib/builtins/abort
      unreachable
    end
    local.get 1
    i32.const 8
    local.get 1
    i32.const 8
    i32.gt_u
    select
    i32.const 2
    i32.shl
    local.tee 5
    i32.const 0
    call $~lib/rt/stub/__new
    local.tee 6
    local.get 5
    call $~lib/memory/memory.fill
    local.get 0
    local.get 6
    i32.store
    local.get 0
    local.get 6
    i32.store offset=4
    local.get 0
    local.get 5
    i32.store offset=8
    local.get 0
    local.get 1
    i32.store offset=12
    loop  ;; label = @1
      local.get 2
      local.get 4
      i32.load offset=12
      i32.lt_s
      if  ;; label = @2
        local.get 2
        local.tee 1
        local.get 4
        i32.load offset=12
        i32.ge_u
        if  ;; label = @3
          i32.const 2000
          i32.const 1776
          i32.const 106
          i32.const 42
          call $~lib/builtins/abort
          unreachable
        end
        local.get 0
        local.get 1
        local.get 4
        i32.load offset=4
        local.get 1
        i32.const 2
        i32.shl
        i32.add
        i32.load
        call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value.fromI32
        call $~lib/array/Array<~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value>#__set
        local.get 1
        i32.const 1
        i32.add
        local.set 2
        br 1 (;@1;)
      end
    end
    local.get 0
    i64.extend_i32_u
    local.set 8
    i32.const 16
    i32.const 21
    call $~lib/rt/stub/__new
    local.tee 2
    i32.const 8
    i32.store
    local.get 2
    local.get 8
    i64.store offset=8
    i32.const 1
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value.fromBoolean
    local.set 4
    i32.const 3936
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.stringToH160
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value.fromAddress
    local.set 5
    i32.const 2
    i32.const 22
    i32.const 0
    call $~lib/rt/__newArray
    local.tee 0
    i32.load offset=4
    drop
    i32.const 152
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value.fromI32
    local.set 1
    local.get 0
    i32.load offset=4
    local.get 1
    i32.store
    i32.const 16
    i32.const 21
    call $~lib/rt/stub/__new
    local.tee 1
    i32.const 6
    i32.store
    local.get 1
    i64.const 4256
    i64.store offset=8
    local.get 0
    i32.load offset=4
    local.get 1
    i32.store offset=4
    local.get 0
    i64.extend_i32_u
    local.set 8
    i32.const 16
    i32.const 21
    call $~lib/rt/stub/__new
    local.tee 1
    i32.const 9
    i32.store
    local.get 1
    local.get 8
    i64.store offset=8
    i32.const 6
    i32.const 22
    i32.const 0
    call $~lib/rt/__newArray
    local.tee 0
    i32.load offset=4
    drop
    local.get 0
    i32.load offset=4
    local.get 7
    i32.store
    local.get 0
    i32.load offset=4
    local.get 3
    i32.store offset=4
    local.get 0
    i32.load offset=4
    local.get 2
    i32.store offset=8
    local.get 0
    i32.load offset=4
    local.get 4
    i32.store offset=12
    local.get 0
    i32.load offset=4
    local.get 5
    i32.store offset=16
    local.get 0
    i32.load offset=4
    local.get 1
    i32.store offset=20
    i32.const 4304
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.stringToH160
    i32.const 4416
    i32.const 4464
    call $~lib/matchstick-as/assembly/index/createMockedFunction
    local.tee 2
    i32.load8_u
    if  ;; label = @1
      i32.const 0
      i32.const 0
      i32.const 3
      i32.const 4672
      call $~lib/rt/__newArray
      call $~lib/matchstick-as/assembly/log/format
      call $~lib/matchstick-as/assembly/log/log.log
    else
      local.get 2
      local.get 0
      i32.store offset=16
    end
    i32.const 1
    i32.const 22
    i32.const 0
    call $~lib/rt/__newArray
    local.tee 1
    i32.load offset=4
    drop
    i32.const 16
    i32.const 21
    call $~lib/rt/stub/__new
    local.tee 3
    i32.const 6
    i32.store
    local.get 3
    i64.const 5056
    i64.store offset=8
    local.get 1
    i32.load offset=4
    local.get 3
    i32.store
    local.get 2
    local.get 1
    call $~lib/matchstick-as/assembly/index/MockedFunction#returns
    i32.const 5120
    i32.const 4304
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.stringToH160
    i32.const 4416
    i32.const 4464
    local.get 0
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.SmartContractCall#constructor
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.call
    local.tee 0
    i32.eqz
    if  ;; label = @1
      i32.const 5168
      i32.const 3440
      i32.const 32
      i32.const 15
      call $~lib/builtins/abort
      unreachable
    end
    local.get 0
    i32.const 0
    call $~lib/array/Array<~lib/string/String>#__get
    local.set 2
    i32.const 16
    i32.const 21
    call $~lib/rt/stub/__new
    local.tee 0
    i32.const 6
    i32.store
    local.get 0
    i64.const 5056
    i64.store offset=8
    local.get 0
    local.get 2
    call $~lib/matchstick-as/assembly/assert/_assert.equals
    i32.eqz
    if  ;; label = @1
      i32.const 5232
      i32.const 5296
      i32.const 19
      i32.const 7
      call $~lib/builtins/abort
      unreachable
    end)
  (func $start:tests/ctoken.test~anonymous|1~anonymous|2 (type 1)
    (local i32)
    i32.const 3936
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.stringToH160
    i32.const 5520
    i32.const 5584
    call $~lib/matchstick-as/assembly/index/createMockedFunction
    local.tee 0
    i32.load8_u
    if  ;; label = @1
      i32.const 0
      i32.const 0
      i32.const 3
      i32.const 5696
      call $~lib/rt/__newArray
      call $~lib/matchstick-as/assembly/log/format
      call $~lib/matchstick-as/assembly/log/log.log
    else
      local.get 0
      i32.load offset=4
      local.get 0
      i32.load offset=8
      local.get 0
      i32.load offset=12
      local.get 0
      i32.load offset=16
      i32.const 0
      i32.const 22
      i32.const 5664
      call $~lib/rt/__newArray
      i32.const 1
      call $~lib/matchstick-as/assembly/index/mockFunction
      local.get 0
      i32.const 1
      i32.store8
    end
    i32.const 5120
    i32.const 3936
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.stringToH160
    i32.const 5520
    i32.const 5584
    i32.const 0
    i32.const 22
    i32.const 5728
    call $~lib/rt/__newArray
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.SmartContractCall#constructor
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.call
    i32.eqz
    local.set 0
    i32.const 1
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value.fromBoolean
    local.get 0
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value.fromBoolean
    call $~lib/matchstick-as/assembly/assert/_assert.equals
    i32.eqz
    if  ;; label = @1
      i32.const 5232
      i32.const 5296
      i32.const 19
      i32.const 7
      call $~lib/builtins/abort
      unreachable
    end)
  (func $generated/Comptroller/Comptroller/Comptroller#constructor (type 0) (param i32) (result i32)
    (local i32)
    block (result i32)  ;; label = @1
      i32.const 8
      i32.const 26
      call $~lib/rt/stub/__new
      local.tee 1
      i32.eqz
      if  ;; label = @2
        i32.const 8
        i32.const 27
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
    i32.const 6096
    i32.store
    local.get 1
    local.get 0
    i32.store offset=4
    local.get 1)
  (func $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.SmartContract#call (type 6) (param i32 i32 i32 i32) (result i32)
    local.get 0
    i32.load
    local.get 0
    i32.load offset=4
    local.get 1
    local.get 2
    local.get 3
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.SmartContractCall#constructor
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.call
    local.tee 0
    i32.eqz
    if  ;; label = @1
      i32.const 6176
      i32.const 6368
      call $~lib/string/String#concat
      local.get 1
      call $~lib/string/String#concat
      i32.const 6432
      call $~lib/string/String#concat
      i32.const 4144
      i32.const 475
      i32.const 7
      call $~lib/builtins/abort
      unreachable
    end
    local.get 0)
  (func $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value#toAddress (type 0) (param i32) (result i32)
    local.get 0
    i32.load
    if  ;; label = @1
      i32.const 6528
      i32.const 4144
      i32.const 53
      i32.const 7
      call $~lib/builtins/abort
      unreachable
    end
    local.get 0
    i64.load offset=8
    i32.wrap_i64)
  (func $start:tests/ctoken.test~anonymous|1~anonymous|3 (type 1)
    (local i32 i32 i32 i32 i32)
    i32.const 2352
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.stringToH160
    local.set 0
    i32.const 5888
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.stringToH160
    local.set 2
    local.get 0
    i32.const 6000
    i32.const 6032
    call $~lib/matchstick-as/assembly/index/createMockedFunction
    local.set 3
    i32.const 1
    i32.const 22
    i32.const 0
    call $~lib/rt/__newArray
    local.tee 1
    i32.load offset=4
    drop
    i32.const 5888
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.stringToH160
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value.fromAddress
    local.set 4
    local.get 1
    i32.load offset=4
    local.get 4
    i32.store
    local.get 3
    local.get 1
    call $~lib/matchstick-as/assembly/index/MockedFunction#returns
    local.get 0
    call $generated/Comptroller/Comptroller/Comptroller#constructor
    i32.const 6000
    i32.const 6032
    i32.const 0
    i32.const 22
    i32.const 6144
    call $~lib/rt/__newArray
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.SmartContract#call
    i32.const 0
    call $~lib/array/Array<~lib/string/String>#__get
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value#toAddress
    local.set 0
    local.get 2
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value.fromAddress
    local.get 0
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value.fromAddress
    call $~lib/matchstick-as/assembly/assert/_assert.equals
    i32.eqz
    if  ;; label = @1
      i32.const 5232
      i32.const 5296
      i32.const 19
      i32.const 7
      call $~lib/builtins/abort
      unreachable
    end)
  (func $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value#toBigInt (type 0) (param i32) (result i32)
    local.get 0
    i32.load
    i32.const 3
    i32.eq
    if (result i32)  ;; label = @1
      i32.const 1
    else
      local.get 0
      i32.load
      i32.const 4
      i32.eq
    end
    i32.eqz
    if  ;; label = @1
      i32.const 7088
      i32.const 4144
      i32.const 80
      i32.const 7
      call $~lib/builtins/abort
      unreachable
    end
    local.get 0
    i64.load offset=8
    i32.wrap_i64)
  (func $~lib/matchstick-as/assembly/assert/assert.bigIntEquals (type 2) (param i32 i32)
    (local i64)
    local.get 0
    i64.extend_i32_u
    local.set 2
    i32.const 16
    i32.const 21
    call $~lib/rt/stub/__new
    local.tee 0
    i32.const 3
    i32.store
    local.get 0
    local.get 2
    i64.store offset=8
    local.get 1
    i64.extend_i32_u
    local.set 2
    i32.const 16
    i32.const 21
    call $~lib/rt/stub/__new
    local.tee 1
    i32.const 3
    i32.store
    local.get 1
    local.get 2
    i64.store offset=8
    local.get 0
    local.get 1
    call $~lib/matchstick-as/assembly/assert/_assert.equals
    i32.eqz
    if  ;; label = @1
      i32.const 5232
      i32.const 5296
      i32.const 19
      i32.const 7
      call $~lib/builtins/abort
      unreachable
    end)
  (func $start:tests/ctoken.test~anonymous|1~anonymous|4 (type 1)
    (local i32 i32 i32 i32 i32 i64)
    i32.const 2352
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.stringToH160
    local.set 0
    i32.const 6800
    call $~lib/@graphprotocol/graph-ts/common/numbers/bigInt.fromString
    local.set 3
    local.get 0
    i32.const 6864
    i32.const 6944
    call $~lib/matchstick-as/assembly/index/createMockedFunction
    local.set 4
    i32.const 1
    i32.const 22
    i32.const 0
    call $~lib/rt/__newArray
    local.tee 1
    i32.load offset=4
    drop
    i32.const 6800
    call $~lib/@graphprotocol/graph-ts/common/numbers/bigInt.fromString
    i64.extend_i32_u
    local.set 5
    i32.const 16
    i32.const 21
    call $~lib/rt/stub/__new
    local.tee 2
    i32.const 4
    i32.store
    local.get 2
    local.get 5
    i64.store offset=8
    local.get 1
    i32.load offset=4
    local.get 2
    i32.store
    local.get 4
    local.get 1
    call $~lib/matchstick-as/assembly/index/MockedFunction#returns
    local.get 3
    local.get 0
    call $generated/Comptroller/Comptroller/Comptroller#constructor
    i32.const 6864
    i32.const 6944
    i32.const 0
    i32.const 22
    i32.const 7056
    call $~lib/rt/__newArray
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.SmartContract#call
    i32.const 0
    call $~lib/array/Array<~lib/string/String>#__get
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value#toBigInt
    call $~lib/matchstick-as/assembly/assert/assert.bigIntEquals)
  (func $start:tests/ctoken.test~anonymous|1~anonymous|5 (type 1)
    (local i32 i32 i32 i32 i32 i64)
    i32.const 2352
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.stringToH160
    local.set 0
    i32.const 7344
    call $~lib/@graphprotocol/graph-ts/common/numbers/bigInt.fromString
    local.set 3
    local.get 0
    i32.const 7408
    i32.const 7472
    call $~lib/matchstick-as/assembly/index/createMockedFunction
    local.set 4
    i32.const 1
    i32.const 22
    i32.const 0
    call $~lib/rt/__newArray
    local.tee 1
    i32.load offset=4
    drop
    i32.const 7344
    call $~lib/@graphprotocol/graph-ts/common/numbers/bigInt.fromString
    i64.extend_i32_u
    local.set 5
    i32.const 16
    i32.const 21
    call $~lib/rt/stub/__new
    local.tee 2
    i32.const 4
    i32.store
    local.get 2
    local.get 5
    i64.store offset=8
    local.get 1
    i32.load offset=4
    local.get 2
    i32.store
    local.get 4
    local.get 1
    call $~lib/matchstick-as/assembly/index/MockedFunction#returns
    local.get 3
    local.get 0
    call $generated/Comptroller/Comptroller/Comptroller#constructor
    i32.const 7408
    i32.const 7472
    i32.const 0
    i32.const 22
    i32.const 7568
    call $~lib/rt/__newArray
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.SmartContract#call
    i32.const 0
    call $~lib/array/Array<~lib/string/String>#__get
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value#toBigInt
    call $~lib/matchstick-as/assembly/assert/assert.bigIntEquals)
  (func $~lib/matchstick-as/assembly/assert/assert.entityCount (type 10) (param i32)
    (local i32)
    i32.const 6096
    call $~lib/matchstick-as/assembly/store/countEntities
    local.set 1
    local.get 0
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value.fromI32
    local.get 1
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value.fromI32
    call $~lib/matchstick-as/assembly/assert/_assert.equals
    i32.eqz
    if  ;; label = @1
      i32.const 5232
      i32.const 5296
      i32.const 19
      i32.const 7
      call $~lib/builtins/abort
      unreachable
    end)
  (func $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#set (type 4) (param i32 i32 i32)
    (local i32 i32 i32 i32 i32 i32)
    block (result i32)  ;; label = @1
      local.get 0
      local.set 4
      loop  ;; label = @2
        local.get 7
        local.get 4
        i32.load
        i32.load offset=12
        i32.lt_s
        if  ;; label = @3
          block (result i32)  ;; label = @4
            i32.const 1
            local.get 1
            local.get 4
            i32.load
            local.get 7
            call $~lib/array/Array<~lib/string/String>#__get
            i32.load
            local.tee 6
            i32.eq
            br_if 0 (;@4;)
            drop
            i32.const 0
            local.get 1
            i32.const 0
            local.get 6
            select
            i32.eqz
            br_if 0 (;@4;)
            drop
            i32.const 0
            local.get 6
            i32.const 20
            i32.sub
            i32.load offset=16
            i32.const 1
            i32.shr_u
            local.tee 0
            local.get 1
            i32.const 20
            i32.sub
            i32.load offset=16
            i32.const 1
            i32.shr_u
            i32.ne
            br_if 0 (;@4;)
            drop
            block (result i32)  ;; label = @5
              local.get 6
              i32.const 7
              i32.and
              local.get 1
              local.tee 3
              i32.const 7
              i32.and
              i32.or
              i32.const 1
              local.get 0
              i32.const 4
              i32.ge_u
              select
              i32.eqz
              if  ;; label = @6
                loop  ;; label = @7
                  local.get 6
                  i64.load
                  local.get 3
                  i64.load
                  i64.eq
                  if  ;; label = @8
                    local.get 6
                    i32.const 8
                    i32.add
                    local.set 6
                    local.get 3
                    i32.const 8
                    i32.add
                    local.set 3
                    local.get 0
                    i32.const 4
                    i32.sub
                    local.tee 0
                    i32.const 4
                    i32.ge_u
                    br_if 1 (;@7;)
                  end
                end
              end
              loop  ;; label = @6
                local.get 0
                local.tee 5
                i32.const 1
                i32.sub
                local.set 0
                local.get 5
                if  ;; label = @7
                  local.get 6
                  i32.load16_u
                  local.tee 5
                  local.get 3
                  i32.load16_u
                  local.tee 8
                  i32.ne
                  if  ;; label = @8
                    local.get 5
                    local.get 8
                    i32.sub
                    br 3 (;@5;)
                  end
                  local.get 6
                  i32.const 2
                  i32.add
                  local.set 6
                  local.get 3
                  i32.const 2
                  i32.add
                  local.set 3
                  br 1 (;@6;)
                end
              end
              i32.const 0
            end
            i32.eqz
          end
          if  ;; label = @4
            local.get 4
            i32.load
            local.get 7
            call $~lib/array/Array<~lib/string/String>#__get
            br 3 (;@1;)
          end
          local.get 7
          i32.const 1
          i32.add
          local.set 7
          br 1 (;@2;)
        end
      end
      i32.const 0
    end
    local.tee 0
    if  ;; label = @1
      local.get 0
      local.get 2
      i32.store offset=4
    else
      i32.const 8
      i32.const 8
      call $~lib/rt/stub/__new
      local.tee 0
      i32.const 0
      i32.store
      local.get 0
      i32.const 0
      i32.store offset=4
      local.get 0
      local.get 1
      i32.store
      local.get 0
      local.get 2
      i32.store offset=4
      local.get 4
      i32.load
      local.tee 1
      i32.load offset=12
      local.tee 6
      i32.const 1
      i32.add
      local.set 2
      local.get 1
      local.get 2
      call $~lib/array/ensureCapacity
      local.get 1
      i32.load offset=4
      local.get 6
      i32.const 2
      i32.shl
      i32.add
      local.get 0
      i32.store
      local.get 1
      local.get 2
      i32.store offset=12
    end)
  (func $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.SmartContract#tryCall (type 6) (param i32 i32 i32 i32) (result i32)
    local.get 0
    i32.load
    local.get 0
    i32.load offset=4
    local.get 1
    local.get 2
    local.get 3
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.SmartContractCall#constructor
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.call
    local.tee 2
    if  ;; label = @1
      i32.const 4
      i32.const 32
      call $~lib/rt/stub/__new
      local.tee 0
      i32.const 0
      i32.store
      local.get 0
      i32.const 0
      i32.store
      i32.const 4
      i32.const 33
      call $~lib/rt/stub/__new
      local.tee 1
      i32.const 0
      i32.store
      local.get 1
      local.get 2
      i32.store
      local.get 0
      local.get 1
      i32.store
    else
      i32.const 4
      i32.const 32
      call $~lib/rt/stub/__new
      local.tee 0
      i32.const 0
      i32.store
      local.get 0
      i32.const 0
      i32.store
    end
    local.get 0)
  (func $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.CallResult<~lib/array/Array<~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value>>#get:value (type 0) (param i32) (result i32)
    local.get 0
    i32.load
    i32.eqz
    if  ;; label = @1
      i32.const 7888
      i32.const 7984
      call $~lib/string/String#concat
      i32.const 4144
      i32.const 519
      i32.const 7
      call $~lib/builtins/abort
      unreachable
    end
    local.get 0
    i32.load
    i32.load)
  (func $~lib/@graphprotocol/graph-ts/index/format (type 3) (param i32 i32) (result i32)
    (local i32 i32 i32 i32 i32)
    i32.const 4704
    local.set 5
    local.get 0
    i32.const 20
    i32.sub
    i32.load offset=16
    i32.const 1
    i32.shr_u
    local.set 4
    loop  ;; label = @1
      local.get 4
      local.get 6
      i32.gt_s
      if  ;; label = @2
        local.get 6
        local.get 4
        i32.const 1
        i32.sub
        i32.lt_s
        if (result i32)  ;; label = @3
          local.get 6
          local.get 0
          i32.const 20
          i32.sub
          i32.load offset=16
          i32.const 1
          i32.shr_u
          i32.ge_u
          if (result i32)  ;; label = @4
            i32.const -1
          else
            local.get 0
            local.get 6
            i32.const 1
            i32.shl
            i32.add
            i32.load16_u
          end
          i32.const 123
          i32.eq
        else
          i32.const 0
        end
        if (result i32)  ;; label = @3
          local.get 6
          i32.const 1
          i32.add
          local.tee 3
          local.get 0
          i32.const 20
          i32.sub
          i32.load offset=16
          i32.const 1
          i32.shr_u
          i32.ge_u
          if (result i32)  ;; label = @4
            i32.const -1
          else
            local.get 0
            local.get 3
            i32.const 1
            i32.shl
            i32.add
            i32.load16_u
          end
          i32.const 125
          i32.eq
        else
          i32.const 0
        end
        if  ;; label = @3
          local.get 2
          local.get 1
          i32.load offset=12
          i32.ge_s
          if (result i32)  ;; label = @4
            i32.const 4736
            local.get 0
            call $~lib/string/String#concat
            i32.const 8288
            i32.const 67
            i32.const 9
            call $~lib/builtins/abort
            unreachable
          else
            local.get 2
            local.tee 3
            i32.const 1
            i32.add
            local.set 2
            local.get 5
            local.get 1
            local.get 3
            call $~lib/array/Array<~lib/string/String>#__get
            call $~lib/string/String#concat
            local.set 5
            local.get 6
            i32.const 1
            i32.add
          end
          local.set 6
        else
          local.get 5
          local.get 0
          local.get 6
          call $~lib/string/String#charAt
          call $~lib/string/String#concat
          local.set 5
        end
        local.get 6
        i32.const 1
        i32.add
        local.set 6
        br 1 (;@1;)
      end
    end
    local.get 5)
  (func $generated/schema/Comptroller#set:priceOracle (type 2) (param i32 i32)
    (local i64)
    local.get 1
    i64.extend_i32_u
    local.set 2
    i32.const 16
    i32.const 6
    call $~lib/rt/stub/__new
    local.tee 1
    i32.const 0
    i32.store
    local.get 1
    local.get 2
    i64.store offset=8
    local.get 0
    i32.const 8384
    local.get 1
    call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#set)
  (func $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.CallResult.fromValue<~lib/@graphprotocol/graph-ts/common/numbers/BigInt> (type 0) (param i32) (result i32)
    (local i32 i32)
    i32.const 4
    i32.const 34
    call $~lib/rt/stub/__new
    local.tee 1
    i32.const 0
    i32.store
    local.get 1
    i32.const 0
    i32.store
    i32.const 4
    i32.const 35
    call $~lib/rt/stub/__new
    local.tee 2
    i32.const 0
    i32.store
    local.get 2
    local.get 0
    i32.store
    local.get 1
    local.get 2
    i32.store
    local.get 1)
  (func $generated/schema/Comptroller#set:liquidationIncentive (type 2) (param i32 i32)
    (local i64)
    local.get 1
    i64.extend_i32_u
    local.set 2
    i32.const 16
    i32.const 6
    call $~lib/rt/stub/__new
    local.tee 1
    i32.const 2
    i32.store
    local.get 1
    local.get 2
    i64.store offset=8
    local.get 0
    i32.const 8656
    local.get 1
    call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#set)
  (func $~lib/@graphprotocol/graph-ts/common/numbers/BigDecimal#div (type 3) (param i32 i32) (result i32)
    local.get 0
    i32.eqz
    if  ;; label = @1
      i32.const 8720
      i32.const 3264
      i32.const 398
      i32.const 5
      call $~lib/builtins/abort
      unreachable
    end
    local.get 0
    local.get 1
    call $~lib/@graphprotocol/graph-ts/common/numbers/bigDecimal.dividedBy)
  (func $generated/schema/Comptroller#set:closeFactor (type 2) (param i32 i32)
    (local i64)
    local.get 1
    i64.extend_i32_u
    local.set 2
    i32.const 16
    i32.const 6
    call $~lib/rt/stub/__new
    local.tee 1
    i32.const 2
    i32.store
    local.get 1
    local.get 2
    i64.store offset=8
    local.get 0
    i32.const 9072
    local.get 1
    call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#set)
  (func $src/helpers/getOrCreateComptroller (type 1)
    (local i32 i32 i32 i32 i32 i32 i32 i64)
    i32.const 6096
    i32.const 7712
    call $~lib/@graphprotocol/graph-ts/index/store.get
    i32.eqz
    if  ;; label = @1
      i32.const 4
      i32.const 28
      call $~lib/rt/stub/__new
      call $~lib/@graphprotocol/graph-ts/common/collections/Entity#constructor
      local.tee 2
      local.set 1
      i32.const 16
      i32.const 6
      call $~lib/rt/stub/__new
      local.tee 0
      i32.const 0
      i32.store
      local.get 0
      i64.const 7712
      i64.store offset=8
      local.get 1
      i32.const 7744
      local.get 0
      call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#set
      i32.const 0
      i32.const 3
      i32.const 7776
      call $~lib/rt/__newArray
      local.tee 4
      i32.load offset=12
      local.set 1
      i32.const 16
      i32.const 29
      call $~lib/rt/stub/__new
      local.tee 0
      i32.const 0
      i32.store
      local.get 0
      i32.const 0
      i32.store offset=4
      local.get 0
      i32.const 0
      i32.store offset=8
      local.get 0
      i32.const 0
      i32.store offset=12
      local.get 1
      i32.const 268435455
      i32.gt_u
      if  ;; label = @2
        i32.const 1728
        i32.const 1776
        i32.const 64
        i32.const 60
        call $~lib/builtins/abort
        unreachable
      end
      local.get 1
      i32.const 8
      local.get 1
      i32.const 8
      i32.gt_u
      select
      i32.const 2
      i32.shl
      local.tee 5
      i32.const 0
      call $~lib/rt/stub/__new
      local.tee 6
      local.get 5
      call $~lib/memory/memory.fill
      local.get 0
      local.get 6
      i32.store
      local.get 0
      local.get 6
      i32.store offset=4
      local.get 0
      local.get 5
      i32.store offset=8
      local.get 0
      local.get 1
      i32.store offset=12
      loop  ;; label = @2
        local.get 3
        local.get 4
        i32.load offset=12
        i32.lt_s
        if  ;; label = @3
          local.get 4
          local.get 3
          call $~lib/array/Array<~lib/string/String>#__get
          i64.extend_i32_u
          local.set 7
          i32.const 16
          i32.const 6
          call $~lib/rt/stub/__new
          local.tee 1
          i32.const 0
          i32.store
          local.get 1
          local.get 7
          i64.store offset=8
          local.get 0
          local.get 3
          local.get 1
          call $~lib/array/Array<~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value>#__set
          local.get 3
          i32.const 1
          i32.add
          local.set 3
          br 1 (;@2;)
        end
      end
      local.get 0
      i64.extend_i32_u
      local.set 7
      i32.const 16
      i32.const 6
      call $~lib/rt/stub/__new
      local.tee 0
      i32.const 4
      i32.store
      local.get 0
      local.get 7
      i64.store offset=8
      local.get 2
      i32.const 7808
      local.get 0
      call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#set
      block  ;; label = @2
        global.get $config/config/config
        i32.load
        call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.stringToH160
        call $generated/Comptroller/Comptroller/Comptroller#constructor
        local.tee 1
        i32.const 6000
        i32.const 6032
        i32.const 0
        i32.const 22
        i32.const 7856
        call $~lib/rt/__newArray
        call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.SmartContract#tryCall
        local.tee 0
        i32.load
        i32.eqz
        if  ;; label = @3
          i32.const 4
          i32.const 30
          call $~lib/rt/stub/__new
          local.tee 0
          i32.const 0
          i32.store
          local.get 0
          i32.const 0
          i32.store
          br 1 (;@2;)
        end
        local.get 0
        call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.CallResult<~lib/array/Array<~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value>>#get:value
        i32.const 0
        call $~lib/array/Array<~lib/string/String>#__get
        call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value#toAddress
        local.set 4
        i32.const 4
        i32.const 30
        call $~lib/rt/stub/__new
        local.tee 0
        i32.const 0
        i32.store
        local.get 0
        i32.const 0
        i32.store
        i32.const 4
        i32.const 31
        call $~lib/rt/stub/__new
        local.tee 3
        i32.const 0
        i32.store
        local.get 3
        local.get 4
        i32.store
        local.get 0
        local.get 3
        i32.store
      end
      local.get 0
      i32.load
      if  ;; label = @2
        local.get 2
        local.get 0
        call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.CallResult<~lib/array/Array<~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value>>#get:value
        call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.bytesToHex
        call $generated/schema/Comptroller#set:priceOracle
      else
        i32.const 2
        i32.const 8144
        i32.const 0
        i32.const 3
        i32.const 8256
        call $~lib/rt/__newArray
        call $~lib/@graphprotocol/graph-ts/index/format
        call $~lib/@graphprotocol/graph-ts/index/log.log
        local.get 2
        i32.const 1568
        call $generated/schema/Comptroller#set:priceOracle
      end
      block  ;; label = @2
        local.get 1
        i32.const 6864
        i32.const 6944
        i32.const 0
        i32.const 22
        i32.const 8432
        call $~lib/rt/__newArray
        call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.SmartContract#tryCall
        local.tee 0
        i32.load
        i32.eqz
        if  ;; label = @3
          i32.const 4
          i32.const 34
          call $~lib/rt/stub/__new
          local.tee 0
          i32.const 0
          i32.store
          local.get 0
          i32.const 0
          i32.store
          br 1 (;@2;)
        end
        local.get 0
        call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.CallResult<~lib/array/Array<~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value>>#get:value
        i32.const 0
        call $~lib/array/Array<~lib/string/String>#__get
        call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value#toBigInt
        call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.CallResult.fromValue<~lib/@graphprotocol/graph-ts/common/numbers/BigInt>
        local.set 0
      end
      local.get 0
      i32.load
      if  ;; label = @2
        local.get 2
        local.get 0
        call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.CallResult<~lib/array/Array<~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value>>#get:value
        call $~lib/@graphprotocol/graph-ts/common/numbers/BigDecimal#constructor
        global.get $src/helpers/mantissaFactorBD
        call $~lib/@graphprotocol/graph-ts/common/numbers/BigDecimal#div
        call $generated/schema/Comptroller#set:liquidationIncentive
      else
        i32.const 2
        i32.const 8464
        i32.const 0
        i32.const 3
        i32.const 8624
        call $~lib/rt/__newArray
        call $~lib/@graphprotocol/graph-ts/index/format
        call $~lib/@graphprotocol/graph-ts/index/log.log
        local.get 2
        global.get $src/helpers/zeroBD
        call $generated/schema/Comptroller#set:liquidationIncentive
      end
      block  ;; label = @2
        local.get 1
        i32.const 7408
        i32.const 7472
        i32.const 0
        i32.const 22
        i32.const 8864
        call $~lib/rt/__newArray
        call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.SmartContract#tryCall
        local.tee 0
        i32.load
        i32.eqz
        if  ;; label = @3
          i32.const 4
          i32.const 34
          call $~lib/rt/stub/__new
          local.tee 0
          i32.const 0
          i32.store
          local.get 0
          i32.const 0
          i32.store
          br 1 (;@2;)
        end
        local.get 0
        call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.CallResult<~lib/array/Array<~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value>>#get:value
        i32.const 0
        call $~lib/array/Array<~lib/string/String>#__get
        call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value#toBigInt
        call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.CallResult.fromValue<~lib/@graphprotocol/graph-ts/common/numbers/BigInt>
        local.set 0
      end
      local.get 0
      i32.load
      if  ;; label = @2
        local.get 2
        local.get 0
        call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.CallResult<~lib/array/Array<~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value>>#get:value
        call $~lib/@graphprotocol/graph-ts/common/numbers/BigDecimal#constructor
        global.get $src/helpers/mantissaFactorBD
        call $~lib/@graphprotocol/graph-ts/common/numbers/BigDecimal#div
        call $generated/schema/Comptroller#set:closeFactor
      else
        i32.const 2
        i32.const 8896
        i32.const 0
        i32.const 3
        i32.const 9040
        call $~lib/rt/__newArray
        call $~lib/@graphprotocol/graph-ts/index/format
        call $~lib/@graphprotocol/graph-ts/index/log.log
        local.get 2
        global.get $src/helpers/zeroBD
        call $generated/schema/Comptroller#set:closeFactor
      end
    end)
  (func $start:tests/ctoken.test~anonymous|1~anonymous|6 (type 1)
    i32.const 0
    call $~lib/matchstick-as/assembly/assert/assert.entityCount
    call $src/helpers/getOrCreateComptroller
    i32.const 1
    call $~lib/matchstick-as/assembly/assert/assert.entityCount)
  (func $start:tests/ctoken.test~anonymous|1 (type 1)
    i32.const 3616
    i32.load
    i32.const 3648
    call $~lib/matchstick-as/assembly/index/_registerHook
    i32.const 3696
    i32.const 0
    i32.const 5392
    i32.load
    call $~lib/matchstick-as/assembly/index/_registerTest
    i32.const 5424
    i32.const 0
    i32.const 5760
    i32.load
    call $~lib/matchstick-as/assembly/index/_registerTest
    i32.const 5792
    i32.const 0
    i32.const 6624
    i32.load
    call $~lib/matchstick-as/assembly/index/_registerTest
    i32.const 6656
    i32.const 0
    i32.const 7184
    i32.load
    call $~lib/matchstick-as/assembly/index/_registerTest
    i32.const 7216
    i32.const 0
    i32.const 7600
    i32.load
    call $~lib/matchstick-as/assembly/index/_registerTest
    i32.const 7632
    i32.const 0
    i32.const 9120
    i32.load
    call $~lib/matchstick-as/assembly/index/_registerTest)
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
                                                                                                                                                                                                                                                                                                                              i32.const 36
                                                                                                                                                                                                                                                                                                                              return
                                                                                                                                                                                                                                                                                                                            end
                                                                                                                                                                                                                                                                                                                            i32.const 37
                                                                                                                                                                                                                                                                                                                            return
                                                                                                                                                                                                                                                                                                                          end
                                                                                                                                                                                                                                                                                                                          i32.const 38
                                                                                                                                                                                                                                                                                                                          return
                                                                                                                                                                                                                                                                                                                        end
                                                                                                                                                                                                                                                                                                                        i32.const 39
                                                                                                                                                                                                                                                                                                                        return
                                                                                                                                                                                                                                                                                                                      end
                                                                                                                                                                                                                                                                                                                      i32.const 13
                                                                                                                                                                                                                                                                                                                      return
                                                                                                                                                                                                                                                                                                                    end
                                                                                                                                                                                                                                                                                                                    i32.const 40
                                                                                                                                                                                                                                                                                                                    return
                                                                                                                                                                                                                                                                                                                  end
                                                                                                                                                                                                                                                                                                                  i32.const 41
                                                                                                                                                                                                                                                                                                                  return
                                                                                                                                                                                                                                                                                                                end
                                                                                                                                                                                                                                                                                                                i32.const 42
                                                                                                                                                                                                                                                                                                                return
                                                                                                                                                                                                                                                                                                              end
                                                                                                                                                                                                                                                                                                              i32.const 43
                                                                                                                                                                                                                                                                                                              return
                                                                                                                                                                                                                                                                                                            end
                                                                                                                                                                                                                                                                                                            i32.const 44
                                                                                                                                                                                                                                                                                                            return
                                                                                                                                                                                                                                                                                                          end
                                                                                                                                                                                                                                                                                                          i32.const 45
                                                                                                                                                                                                                                                                                                          return
                                                                                                                                                                                                                                                                                                        end
                                                                                                                                                                                                                                                                                                        i32.const 47
                                                                                                                                                                                                                                                                                                        return
                                                                                                                                                                                                                                                                                                      end
                                                                                                                                                                                                                                                                                                      i32.const 48
                                                                                                                                                                                                                                                                                                      return
                                                                                                                                                                                                                                                                                                    end
                                                                                                                                                                                                                                                                                                    i32.const 50
                                                                                                                                                                                                                                                                                                    return
                                                                                                                                                                                                                                                                                                  end
                                                                                                                                                                                                                                                                                                  i32.const 52
                                                                                                                                                                                                                                                                                                  return
                                                                                                                                                                                                                                                                                                end
                                                                                                                                                                                                                                                                                                i32.const 54
                                                                                                                                                                                                                                                                                                return
                                                                                                                                                                                                                                                                                              end
                                                                                                                                                                                                                                                                                              i32.const 3
                                                                                                                                                                                                                                                                                              return
                                                                                                                                                                                                                                                                                            end
                                                                                                                                                                                                                                                                                            i32.const 56
                                                                                                                                                                                                                                                                                            return
                                                                                                                                                                                                                                                                                          end
                                                                                                                                                                                                                                                                                          i32.const 58
                                                                                                                                                                                                                                                                                          return
                                                                                                                                                                                                                                                                                        end
                                                                                                                                                                                                                                                                                        i32.const 63
                                                                                                                                                                                                                                                                                        return
                                                                                                                                                                                                                                                                                      end
                                                                                                                                                                                                                                                                                      i32.const 64
                                                                                                                                                                                                                                                                                      return
                                                                                                                                                                                                                                                                                    end
                                                                                                                                                                                                                                                                                    i32.const 65
                                                                                                                                                                                                                                                                                    return
                                                                                                                                                                                                                                                                                  end
                                                                                                                                                                                                                                                                                  i32.const 66
                                                                                                                                                                                                                                                                                  return
                                                                                                                                                                                                                                                                                end
                                                                                                                                                                                                                                                                                i32.const 67
                                                                                                                                                                                                                                                                                return
                                                                                                                                                                                                                                                                              end
                                                                                                                                                                                                                                                                              i32.const 55
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
                                                                                                                                                                                                                                                                      i32.const 49
                                                                                                                                                                                                                                                                      return
                                                                                                                                                                                                                                                                    end
                                                                                                                                                                                                                                                                    i32.const 51
                                                                                                                                                                                                                                                                    return
                                                                                                                                                                                                                                                                  end
                                                                                                                                                                                                                                                                  i32.const 53
                                                                                                                                                                                                                                                                  return
                                                                                                                                                                                                                                                                end
                                                                                                                                                                                                                                                                i32.const 74
                                                                                                                                                                                                                                                                return
                                                                                                                                                                                                                                                              end
                                                                                                                                                                                                                                                              i32.const 59
                                                                                                                                                                                                                                                              return
                                                                                                                                                                                                                                                            end
                                                                                                                                                                                                                                                            i32.const 79
                                                                                                                                                                                                                                                            return
                                                                                                                                                                                                                                                          end
                                                                                                                                                                                                                                                          i32.const 60
                                                                                                                                                                                                                                                          return
                                                                                                                                                                                                                                                        end
                                                                                                                                                                                                                                                        i32.const 79
                                                                                                                                                                                                                                                        return
                                                                                                                                                                                                                                                      end
                                                                                                                                                                                                                                                      i32.const 80
                                                                                                                                                                                                                                                      return
                                                                                                                                                                                                                                                    end
                                                                                                                                                                                                                                                    i32.const 83
                                                                                                                                                                                                                                                    return
                                                                                                                                                                                                                                                  end
                                                                                                                                                                                                                                                  i32.const 85
                                                                                                                                                                                                                                                  return
                                                                                                                                                                                                                                                end
                                                                                                                                                                                                                                                i32.const 86
                                                                                                                                                                                                                                                return
                                                                                                                                                                                                                                              end
                                                                                                                                                                                                                                              i32.const 87
                                                                                                                                                                                                                                              return
                                                                                                                                                                                                                                            end
                                                                                                                                                                                                                                            i32.const 88
                                                                                                                                                                                                                                            return
                                                                                                                                                                                                                                          end
                                                                                                                                                                                                                                          i32.const 89
                                                                                                                                                                                                                                          return
                                                                                                                                                                                                                                        end
                                                                                                                                                                                                                                        i32.const 90
                                                                                                                                                                                                                                        return
                                                                                                                                                                                                                                      end
                                                                                                                                                                                                                                      i32.const 91
                                                                                                                                                                                                                                      return
                                                                                                                                                                                                                                    end
                                                                                                                                                                                                                                    i32.const 18
                                                                                                                                                                                                                                    return
                                                                                                                                                                                                                                  end
                                                                                                                                                                                                                                  i32.const 92
                                                                                                                                                                                                                                  return
                                                                                                                                                                                                                                end
                                                                                                                                                                                                                                i32.const 93
                                                                                                                                                                                                                                return
                                                                                                                                                                                                                              end
                                                                                                                                                                                                                              i32.const 94
                                                                                                                                                                                                                              return
                                                                                                                                                                                                                            end
                                                                                                                                                                                                                            i32.const 95
                                                                                                                                                                                                                            return
                                                                                                                                                                                                                          end
                                                                                                                                                                                                                          i32.const 97
                                                                                                                                                                                                                          return
                                                                                                                                                                                                                        end
                                                                                                                                                                                                                        i32.const 77
                                                                                                                                                                                                                        return
                                                                                                                                                                                                                      end
                                                                                                                                                                                                                      i32.const 99
                                                                                                                                                                                                                      return
                                                                                                                                                                                                                    end
                                                                                                                                                                                                                    i32.const 100
                                                                                                                                                                                                                    return
                                                                                                                                                                                                                  end
                                                                                                                                                                                                                  i32.const 105
                                                                                                                                                                                                                  return
                                                                                                                                                                                                                end
                                                                                                                                                                                                                i32.const 107
                                                                                                                                                                                                                return
                                                                                                                                                                                                              end
                                                                                                                                                                                                              i32.const 109
                                                                                                                                                                                                              return
                                                                                                                                                                                                            end
                                                                                                                                                                                                            i32.const 111
                                                                                                                                                                                                            return
                                                                                                                                                                                                          end
                                                                                                                                                                                                          i32.const 112
                                                                                                                                                                                                          return
                                                                                                                                                                                                        end
                                                                                                                                                                                                        i32.const 98
                                                                                                                                                                                                        return
                                                                                                                                                                                                      end
                                                                                                                                                                                                      i32.const 104
                                                                                                                                                                                                      return
                                                                                                                                                                                                    end
                                                                                                                                                                                                    i32.const 108
                                                                                                                                                                                                    return
                                                                                                                                                                                                  end
                                                                                                                                                                                                  i32.const 113
                                                                                                                                                                                                  return
                                                                                                                                                                                                end
                                                                                                                                                                                                i32.const 114
                                                                                                                                                                                                return
                                                                                                                                                                                              end
                                                                                                                                                                                              i32.const 112
                                                                                                                                                                                              return
                                                                                                                                                                                            end
                                                                                                                                                                                            i32.const 96
                                                                                                                                                                                            return
                                                                                                                                                                                          end
                                                                                                                                                                                          i32.const 115
                                                                                                                                                                                          return
                                                                                                                                                                                        end
                                                                                                                                                                                        i32.const 116
                                                                                                                                                                                        return
                                                                                                                                                                                      end
                                                                                                                                                                                      i32.const 117
                                                                                                                                                                                      return
                                                                                                                                                                                    end
                                                                                                                                                                                    i32.const 118
                                                                                                                                                                                    return
                                                                                                                                                                                  end
                                                                                                                                                                                  i32.const 119
                                                                                                                                                                                  return
                                                                                                                                                                                end
                                                                                                                                                                                i32.const 120
                                                                                                                                                                                return
                                                                                                                                                                              end
                                                                                                                                                                              i32.const 122
                                                                                                                                                                              return
                                                                                                                                                                            end
                                                                                                                                                                            i32.const 123
                                                                                                                                                                            return
                                                                                                                                                                          end
                                                                                                                                                                          i32.const 124
                                                                                                                                                                          return
                                                                                                                                                                        end
                                                                                                                                                                        i32.const 125
                                                                                                                                                                        return
                                                                                                                                                                      end
                                                                                                                                                                      i32.const 101
                                                                                                                                                                      return
                                                                                                                                                                    end
                                                                                                                                                                    i32.const 126
                                                                                                                                                                    return
                                                                                                                                                                  end
                                                                                                                                                                  i32.const 106
                                                                                                                                                                  return
                                                                                                                                                                end
                                                                                                                                                                i32.const 127
                                                                                                                                                                return
                                                                                                                                                              end
                                                                                                                                                              i32.const 103
                                                                                                                                                              return
                                                                                                                                                            end
                                                                                                                                                            i32.const 110
                                                                                                                                                            return
                                                                                                                                                          end
                                                                                                                                                          i32.const 128
                                                                                                                                                          return
                                                                                                                                                        end
                                                                                                                                                        i32.const 129
                                                                                                                                                        return
                                                                                                                                                      end
                                                                                                                                                      i32.const 75
                                                                                                                                                      return
                                                                                                                                                    end
                                                                                                                                                    i32.const 76
                                                                                                                                                    return
                                                                                                                                                  end
                                                                                                                                                  i32.const 48
                                                                                                                                                  return
                                                                                                                                                end
                                                                                                                                                i32.const 78
                                                                                                                                                return
                                                                                                                                              end
                                                                                                                                              i32.const 130
                                                                                                                                              return
                                                                                                                                            end
                                                                                                                                            i32.const 131
                                                                                                                                            return
                                                                                                                                          end
                                                                                                                                          i32.const 77
                                                                                                                                          return
                                                                                                                                        end
                                                                                                                                        i32.const 133
                                                                                                                                        return
                                                                                                                                      end
                                                                                                                                      i32.const 136
                                                                                                                                      return
                                                                                                                                    end
                                                                                                                                    i32.const 140
                                                                                                                                    return
                                                                                                                                  end
                                                                                                                                  i32.const 139
                                                                                                                                  return
                                                                                                                                end
                                                                                                                                i32.const 156
                                                                                                                                return
                                                                                                                              end
                                                                                                                              i32.const 161
                                                                                                                              return
                                                                                                                            end
                                                                                                                            i32.const 163
                                                                                                                            return
                                                                                                                          end
                                                                                                                          i32.const 171
                                                                                                                          return
                                                                                                                        end
                                                                                                                        i32.const 155
                                                                                                                        return
                                                                                                                      end
                                                                                                                      i32.const 173
                                                                                                                      return
                                                                                                                    end
                                                                                                                    i32.const 167
                                                                                                                    return
                                                                                                                  end
                                                                                                                  i32.const 174
                                                                                                                  return
                                                                                                                end
                                                                                                                i32.const 144
                                                                                                                return
                                                                                                              end
                                                                                                              i32.const 18
                                                                                                              return
                                                                                                            end
                                                                                                            i32.const 179
                                                                                                            return
                                                                                                          end
                                                                                                          i32.const 132
                                                                                                          return
                                                                                                        end
                                                                                                        i32.const 151
                                                                                                        return
                                                                                                      end
                                                                                                      i32.const 134
                                                                                                      return
                                                                                                    end
                                                                                                    i32.const 160
                                                                                                    return
                                                                                                  end
                                                                                                  i32.const 150
                                                                                                  return
                                                                                                end
                                                                                                i32.const 178
                                                                                                return
                                                                                              end
                                                                                              i32.const 142
                                                                                              return
                                                                                            end
                                                                                            i32.const 181
                                                                                            return
                                                                                          end
                                                                                          i32.const 137
                                                                                          return
                                                                                        end
                                                                                        i32.const 138
                                                                                        return
                                                                                      end
                                                                                      i32.const 184
                                                                                      return
                                                                                    end
                                                                                    i32.const 143
                                                                                    return
                                                                                  end
                                                                                  i32.const 141
                                                                                  return
                                                                                end
                                                                                i32.const 175
                                                                                return
                                                                              end
                                                                              i32.const 180
                                                                              return
                                                                            end
                                                                            i32.const 168
                                                                            return
                                                                          end
                                                                          i32.const 149
                                                                          return
                                                                        end
                                                                        i32.const 185
                                                                        return
                                                                      end
                                                                      i32.const 147
                                                                      return
                                                                    end
                                                                    i32.const 146
                                                                    return
                                                                  end
                                                                  i32.const 157
                                                                  return
                                                                end
                                                                i32.const 159
                                                                return
                                                              end
                                                              i32.const 158
                                                              return
                                                            end
                                                            i32.const 145
                                                            return
                                                          end
                                                          i32.const 154
                                                          return
                                                        end
                                                        i32.const 176
                                                        return
                                                      end
                                                      i32.const 170
                                                      return
                                                    end
                                                    i32.const 177
                                                    return
                                                  end
                                                  i32.const 18
                                                  return
                                                end
                                                i32.const 148
                                                return
                                              end
                                              i32.const 18
                                              return
                                            end
                                            i32.const 162
                                            return
                                          end
                                          i32.const 135
                                          return
                                        end
                                        i32.const 169
                                        return
                                      end
                                      i32.const 186
                                      return
                                    end
                                    i32.const 165
                                    return
                                  end
                                  i32.const 166
                                  return
                                end
                                i32.const 164
                                return
                              end
                              i32.const 153
                              return
                            end
                            i32.const 182
                            return
                          end
                          i32.const 152
                          return
                        end
                        i32.const 187
                        return
                      end
                      i32.const 172
                      return
                    end
                    i32.const 183
                    return
                  end
                  i32.const 188
                  return
                end
                i32.const 191
                return
              end
              i32.const 189
              return
            end
            i32.const 190
            return
          end
          i32.const 192
          return
        end
        i32.const 193
        return
      end
      i32.const 194
      return
    end
    i32.const 0)
  (func $node_modules/@graphprotocol/graph-ts/global/global/allocate (type 0) (param i32) (result i32)
    local.get 0
    call $~lib/rt/stub/__alloc)
  (func $~start (type 1)
    (local i32 i32)
    global.get $~started
    if  ;; label = @1
      return
    end
    i32.const 1
    global.set $~started
    i32.const 9276
    global.set $~lib/rt/stub/offset
    i32.const 0
    call $~lib/rt/stub/__alloc
    drop
    i32.const 4
    i32.const 4
    call $~lib/rt/stub/__new
    call $~lib/@graphprotocol/graph-ts/common/collections/Entity#constructor
    drop
    i32.const 1824
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.stringToH160
    drop
    i32.const 1
    call $~lib/@graphprotocol/graph-ts/common/collections/ByteArray.fromI32
    drop
    i32.const 1
    call $~lib/@graphprotocol/graph-ts/common/collections/ByteArray.fromI32
    drop
    i32.const 1
    i32.const 17
    i32.const 0
    call $~lib/rt/__newArray
    local.tee 1
    i32.load offset=4
    drop
    i32.const 12
    i32.const 16
    call $~lib/rt/stub/__new
    local.tee 0
    i32.const 2536028
    i32.store
    local.get 0
    i32.const 2496
    i32.store offset=4
    local.get 0
    i32.const 2832
    i32.store offset=8
    local.get 1
    i32.load offset=4
    local.get 0
    i32.store
    i32.const 32
    i32.const 15
    call $~lib/rt/stub/__new
    local.tee 0
    i32.const 2352
    i32.store
    local.get 0
    i32.const 2464
    i32.store offset=4
    local.get 0
    i32.const 2496
    i32.store offset=8
    local.get 0
    i32.const 2608
    i32.store offset=12
    local.get 0
    i32.const 1512356
    i32.store offset=16
    local.get 0
    i32.const 1
    i32.store offset=20
    local.get 0
    i32.const 2720
    i32.store offset=24
    local.get 0
    local.get 1
    i32.store offset=28
    local.get 0
    global.set $config/config/config
    i32.const 0
    call $~lib/@graphprotocol/graph-ts/common/collections/ByteArray.fromI32
    drop
    i32.const 18
    call $src/helpers/exponentToBigDecimal
    global.set $src/helpers/mantissaFactorBD
    i32.const 8
    call $src/helpers/exponentToBigDecimal
    drop
    i32.const 0
    call $~lib/@graphprotocol/graph-ts/common/collections/ByteArray.fromI32
    call $~lib/@graphprotocol/graph-ts/common/numbers/BigDecimal#constructor
    global.set $src/helpers/zeroBD
    i32.const 0
    call $~lib/@graphprotocol/graph-ts/common/collections/ByteArray.fromI32
    drop
    i32.const 3376
    i32.const 1
    i32.const 3504
    i32.load
    call $~lib/matchstick-as/assembly/index/_registerTest
    i32.const 3536
    i32.const 9152
    i32.load
    call $~lib/matchstick-as/assembly/index/_registerDescribe
    i32.const 0
    call $~lib/rt/stub/__alloc
    drop)
  (table $0 10 funcref)
  (memory (;0;) 1)
  (global $~lib/rt/stub/offset (mut i32) (i32.const 0))
  (global $config/config/config (mut i32) (i32.const 0))
  (global $src/helpers/mantissaFactorBD (mut i32) (i32.const 0))
  (global $src/helpers/zeroBD (mut i32) (i32.const 0))
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
  (export "TypeId.String" (global 4))
  (export "TypeId.ArrayBuffer" (global 5))
  (export "TypeId.Int8Array" (global 6))
  (export "TypeId.Int16Array" (global 7))
  (export "TypeId.Int32Array" (global 8))
  (export "TypeId.Int64Array" (global 9))
  (export "TypeId.Uint8Array" (global 10))
  (export "TypeId.Uint16Array" (global 11))
  (export "TypeId.Uint32Array" (global 12))
  (export "TypeId.Uint64Array" (global 13))
  (export "TypeId.Float32Array" (global 14))
  (export "TypeId.Float64Array" (global 15))
  (export "TypeId.BigDecimal" (global 16))
  (export "TypeId.ArrayBool" (global 17))
  (export "TypeId.ArrayUint8Array" (global 18))
  (export "TypeId.ArrayEthereumValue" (global 19))
  (export "TypeId.ArrayStoreValue" (global 20))
  (export "TypeId.ArrayJsonValue" (global 21))
  (export "TypeId.ArrayString" (global 22))
  (export "TypeId.ArrayEventParam" (global 23))
  (export "TypeId.ArrayTypedMapEntryStringJsonValue" (global 24))
  (export "TypeId.ArrayTypedMapEntryStringStoreValue" (global 25))
  (export "TypeId.SmartContractCall" (global 26))
  (export "TypeId.EventParam" (global 27))
  (export "TypeId.EthereumTransaction" (global 28))
  (export "TypeId.EthereumBlock" (global 29))
  (export "TypeId.EthereumCall" (global 30))
  (export "TypeId.WrappedTypedMapStringJsonValue" (global 31))
  (export "TypeId.WrappedBool" (global 32))
  (export "TypeId.WrappedJsonValue" (global 33))
  (export "TypeId.EthereumValue" (global 34))
  (export "TypeId.StoreValue" (global 35))
  (export "TypeId.JsonValue" (global 36))
  (export "TypeId.EthereumEvent" (global 37))
  (export "TypeId.TypedMapEntryStringStoreValue" (global 38))
  (export "TypeId.TypedMapEntryStringJsonValue" (global 39))
  (export "TypeId.TypedMapStringStoreValue" (global 40))
  (export "TypeId.TypedMapStringJsonValue" (global 41))
  (export "TypeId.TypedMapStringTypedMapStringJsonValue" (global 42))
  (export "TypeId.ResultTypedMapStringJsonValueBool" (global 43))
  (export "TypeId.ResultJsonValueBool" (global 44))
  (export "TypeId.ArrayU8" (global 45))
  (export "TypeId.ArrayU16" (global 46))
  (export "TypeId.ArrayU32" (global 47))
  (export "TypeId.ArrayU64" (global 48))
  (export "TypeId.ArrayI8" (global 49))
  (export "TypeId.ArrayI16" (global 50))
  (export "TypeId.ArrayI32" (global 51))
  (export "TypeId.ArrayI64" (global 52))
  (export "TypeId.ArrayF32" (global 53))
  (export "TypeId.ArrayF64" (global 54))
  (export "TypeId.ArrayBigDecimal" (global 55))
  (export "TypeId.NearArrayDataReceiver" (global 56))
  (export "TypeId.NearArrayCryptoHash" (global 57))
  (export "TypeId.NearArrayActionValue" (global 58))
  (export "TypeId.NearMerklePath" (global 59))
  (export "TypeId.NearArrayValidatorStake" (global 60))
  (export "TypeId.NearArraySlashedValidator" (global 61))
  (export "TypeId.NearArraySignature" (global 62))
  (export "TypeId.NearArrayChunkHeader" (global 63))
  (export "TypeId.NearAccessKeyPermissionValue" (global 64))
  (export "TypeId.NearActionValue" (global 65))
  (export "TypeId.NearDirection" (global 66))
  (export "TypeId.NearPublicKey" (global 67))
  (export "TypeId.NearSignature" (global 68))
  (export "TypeId.NearFunctionCallPermission" (global 69))
  (export "TypeId.NearFullAccessPermission" (global 70))
  (export "TypeId.NearAccessKey" (global 71))
  (export "TypeId.NearDataReceiver" (global 72))
  (export "TypeId.NearCreateAccountAction" (global 73))
  (export "TypeId.NearDeployContractAction" (global 74))
  (export "TypeId.NearFunctionCallAction" (global 75))
  (export "TypeId.NearTransferAction" (global 76))
  (export "TypeId.NearStakeAction" (global 77))
  (export "TypeId.NearAddKeyAction" (global 78))
  (export "TypeId.NearDeleteKeyAction" (global 79))
  (export "TypeId.NearDeleteAccountAction" (global 80))
  (export "TypeId.NearActionReceipt" (global 81))
  (export "TypeId.NearSuccessStatus" (global 82))
  (export "TypeId.NearMerklePathItem" (global 83))
  (export "TypeId.NearExecutionOutcome" (global 84))
  (export "TypeId.NearSlashedValidator" (global 85))
  (export "TypeId.NearBlockHeader" (global 86))
  (export "TypeId.NearValidatorStake" (global 87))
  (export "TypeId.NearChunkHeader" (global 88))
  (export "TypeId.NearBlock" (global 89))
  (export "TypeId.NearReceiptWithOutcome" (global 90))
  (export "TypeId.TransactionReceipt" (global 91))
  (export "TypeId.Log" (global 92))
  (export "TypeId.ArrayH256" (global 93))
  (export "TypeId.ArrayLog" (global 94))
  (export "TypeId.CosmosAny" (global 95))
  (export "TypeId.CosmosArrayAny" (global 96))
  (export "TypeId.CosmosArrayBytes" (global 97))
  (export "TypeId.CosmosArrayCoin" (global 98))
  (export "TypeId.CosmosArrayCommitSig" (global 99))
  (export "TypeId.CosmosArrayEvent" (global 100))
  (export "TypeId.CosmosArrayEventAttribute" (global 101))
  (export "TypeId.CosmosArrayEvidence" (global 102))
  (export "TypeId.CosmosArrayModeInfo" (global 103))
  (export "TypeId.CosmosArraySignerInfo" (global 104))
  (export "TypeId.CosmosArrayTxResult" (global 105))
  (export "TypeId.CosmosArrayValidator" (global 106))
  (export "TypeId.CosmosArrayValidatorUpdate" (global 107))
  (export "TypeId.CosmosAuthInfo" (global 108))
  (export "TypeId.CosmosBlock" (global 109))
  (export "TypeId.CosmosBlockID" (global 110))
  (export "TypeId.CosmosBlockIDFlagEnum" (global 111))
  (export "TypeId.CosmosBlockParams" (global 112))
  (export "TypeId.CosmosCoin" (global 113))
  (export "TypeId.CosmosCommit" (global 114))
  (export "TypeId.CosmosCommitSig" (global 115))
  (export "TypeId.CosmosCompactBitArray" (global 116))
  (export "TypeId.CosmosConsensus" (global 117))
  (export "TypeId.CosmosConsensusParams" (global 118))
  (export "TypeId.CosmosDuplicateVoteEvidence" (global 119))
  (export "TypeId.CosmosDuration" (global 120))
  (export "TypeId.CosmosEvent" (global 121))
  (export "TypeId.CosmosEventAttribute" (global 122))
  (export "TypeId.CosmosEventData" (global 123))
  (export "TypeId.CosmosEventVote" (global 124))
  (export "TypeId.CosmosEvidence" (global 125))
  (export "TypeId.CosmosEvidenceList" (global 126))
  (export "TypeId.CosmosEvidenceParams" (global 127))
  (export "TypeId.CosmosFee" (global 128))
  (export "TypeId.CosmosHeader" (global 129))
  (export "TypeId.CosmosHeaderOnlyBlock" (global 130))
  (export "TypeId.CosmosLightBlock" (global 131))
  (export "TypeId.CosmosLightClientAttackEvidence" (global 132))
  (export "TypeId.CosmosModeInfo" (global 133))
  (export "TypeId.CosmosModeInfoMulti" (global 134))
  (export "TypeId.CosmosModeInfoSingle" (global 135))
  (export "TypeId.CosmosPartSetHeader" (global 136))
  (export "TypeId.CosmosPublicKey" (global 137))
  (export "TypeId.CosmosResponseBeginBlock" (global 138))
  (export "TypeId.CosmosResponseDeliverTx" (global 139))
  (export "TypeId.CosmosResponseEndBlock" (global 140))
  (export "TypeId.CosmosSignModeEnum" (global 141))
  (export "TypeId.CosmosSignedHeader" (global 142))
  (export "TypeId.CosmosSignedMsgTypeEnum" (global 143))
  (export "TypeId.CosmosSignerInfo" (global 144))
  (export "TypeId.CosmosTimestamp" (global 145))
  (export "TypeId.CosmosTip" (global 146))
  (export "TypeId.CosmosTransactionData" (global 147))
  (export "TypeId.CosmosTx" (global 148))
  (export "TypeId.CosmosTxBody" (global 149))
  (export "TypeId.CosmosTxResult" (global 150))
  (export "TypeId.CosmosValidator" (global 151))
  (export "TypeId.CosmosValidatorParams" (global 152))
  (export "TypeId.CosmosValidatorSet" (global 153))
  (export "TypeId.CosmosValidatorSetUpdates" (global 154))
  (export "TypeId.CosmosValidatorUpdate" (global 155))
  (export "TypeId.CosmosVersionParams" (global 156))
  (export "TypeId.ArweaveBlock" (global 157))
  (export "TypeId.ArweaveProofOfAccess" (global 158))
  (export "TypeId.ArweaveTag" (global 159))
  (export "TypeId.ArweaveTagArray" (global 160))
  (export "TypeId.ArweaveTransaction" (global 161))
  (export "TypeId.ArweaveTransactionArray" (global 162))
  (export "TypeId.ArweaveTransactionWithBlockPtr" (global 163))
  (export "id_of_type" (func $node_modules/@graphprotocol/graph-ts/global/global/id_of_type))
  (export "allocate" (func $node_modules/@graphprotocol/graph-ts/global/global/allocate))
  (export "memory" (memory 0))
  (export "table" (table 0))
  (export "_start" (func $~start))
  (elem $0 (i32.const 1) func $start:tests/ctoken.test~anonymous|0 $start:tests/ctoken.test~anonymous|1~anonymous|0 $start:tests/ctoken.test~anonymous|1~anonymous|1 $start:tests/ctoken.test~anonymous|1~anonymous|2 $start:tests/ctoken.test~anonymous|1~anonymous|3 $start:tests/ctoken.test~anonymous|1~anonymous|4 $start:tests/ctoken.test~anonymous|1~anonymous|5 $start:tests/ctoken.test~anonymous|1~anonymous|6 $start:tests/ctoken.test~anonymous|1)
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
  (data (;45;) (i32.const 2344) "\01\00\00\00T\00\00\000\00x\000\00b\007\00a\000\00E\00A\00A\008\008\004\008\004\009\00c\006\00A\00f\007\00a\001\002\009\00e\008\009\009\005\003\006\00d\00D\00D\00c\00A\004\009\000\005\00E")
  (data (;46;) (i32.const 2444) "\1c")
  (data (;47;) (i32.const 2456) "\01\00\00\00\08\00\00\00M\00O\00V\00R")
  (data (;48;) (i32.const 2476) "l")
  (data (;49;) (i32.const 2488) "\01\00\00\00T\00\00\000\00x\006\00a\001\00A\007\007\001\00C\007\008\002\006\005\009\006\006\005\002\00d\00a\00D\00C\009\001\004\005\00f\00E\00A\00a\00E\006\002\00b\001\00c\00d\000\007\00f")
  (data (;50;) (i32.const 2588) "l")
  (data (;51;) (i32.const 2600) "\01\00\00\00T\00\00\000\00x\00E\006\00B\00f\00c\006\000\009\00A\002\00e\005\008\005\003\000\003\001\000\00D\006\009\006\004\00c\00c\00d\00d\002\003\006\00f\00c\009\003\00b\004\00A\00D\00B")
  (data (;52;) (i32.const 2700) "l")
  (data (;53;) (i32.const 2712) "\01\00\00\00T\00\00\000\00x\002\00B\00E\002\00e\002\003\000\00e\008\009\00c\005\009\00c\008\00E\002\000\00E\006\003\003\00C\005\002\004\00A\00D\002\00D\00e\002\004\006\00e\007\003\007\000")
  (data (;54;) (i32.const 2812) "l")
  (data (;55;) (i32.const 2824) "\01\00\00\00T\00\00\000\00x\000\009\000\00e\00f\001\007\00e\007\00f\00f\00f\009\00a\00b\00b\003\00b\00f\00f\004\000\00f\009\00b\007\005\00b\00d\005\00e\000\008\00d\004\00f\00b\008\007\00c")
  (data (;56;) (i32.const 2924) ",")
  (data (;57;) (i32.const 2936) "\01\00\00\00\0e\00\00\00C\00R\00E\00A\00T\00E\00D")
  (data (;58;) (i32.const 2972) ",")
  (data (;59;) (i32.const 2984) "\01\00\00\00\10\00\00\00C\00A\00N\00C\00E\00L\00E\00D")
  (data (;60;) (i32.const 3020) ",")
  (data (;61;) (i32.const 3032) "\01\00\00\00\10\00\00\00E\00X\00E\00C\00U\00T\00E\00D")
  (data (;62;) (i32.const 3068) "\1c")
  (data (;63;) (i32.const 3080) "\01\00\00\00\0c\00\00\00Q\00U\00E\00U\00E\00D")
  (data (;64;) (i32.const 3100) "\8c")
  (data (;65;) (i32.const 3112) "\01\00\00\00v\00\00\00F\00a\00i\00l\00e\00d\00 \00t\00o\00 \00m\00u\00l\00t\00i\00p\00l\00y\00 \00B\00i\00g\00I\00n\00t\00s\00 \00b\00e\00c\00a\00u\00s\00e\00 \00l\00e\00f\00t\00 \00h\00a\00n\00d\00 \00s\00i\00d\00e\00 \00i\00s\00 \00'\00n\00u\00l\00l\00'")
  (data (;66;) (i32.const 3244) "l")
  (data (;67;) (i32.const 3256) "\01\00\00\00\5c\00\00\00~\00l\00i\00b\00/\00@\00g\00r\00a\00p\00h\00p\00r\00o\00t\00o\00c\00o\00l\00/\00g\00r\00a\00p\00h\00-\00t\00s\00/\00c\00o\00m\00m\00o\00n\00/\00n\00u\00m\00b\00e\00r\00s\00.\00t\00s")
  (data (;68;) (i32.const 3356) "<")
  (data (;69;) (i32.const 3368) "\01\00\00\00*\00\00\00S\00h\00o\00u\00l\00d\00 \00t\00h\00r\00o\00w\00 \00a\00n\00 \00e\00r\00r\00o\00r")
  (data (;70;) (i32.const 3420) "<")
  (data (;71;) (i32.const 3432) "\01\00\00\00(\00\00\00t\00e\00s\00t\00s\00/\00c\00t\00o\00k\00e\00n\00.\00t\00e\00s\00t\00.\00t\00s")
  (data (;72;) (i32.const 3484) "\1c")
  (data (;73;) (i32.const 3496) "\14\00\00\00\08\00\00\00\01")
  (data (;74;) (i32.const 3516) "L")
  (data (;75;) (i32.const 3528) "\01\00\00\00.\00\00\00M\00o\00c\00k\00 \00c\00o\00n\00t\00r\00a\00c\00t\00 \00f\00u\00n\00c\00t\00i\00o\00n\00s")
  (data (;76;) (i32.const 3596) "\1c")
  (data (;77;) (i32.const 3608) "\14\00\00\00\08\00\00\00\02")
  (data (;78;) (i32.const 3628) ",")
  (data (;79;) (i32.const 3640) "\01\00\00\00\10\00\00\00a\00f\00t\00e\00r\00A\00l\00l")
  (data (;80;) (i32.const 3676) "\8c")
  (data (;81;) (i32.const 3688) "\01\00\00\00p\00\00\00C\00a\00n\00 \00m\00o\00c\00k\00 \00a\00n\00d\00 \00c\00a\00l\00l\00 \00f\00u\00n\00c\00t\00i\00o\00n\00 \00w\00i\00t\00h\00 \00d\00i\00f\00f\00e\00r\00e\00n\00t\00 \00a\00r\00g\00u\00m\00e\00n\00t\00 \00t\00y\00p\00e\00s")
  (data (;82;) (i32.const 3820) "<")
  (data (;83;) (i32.const 3832) "\01\00\00\00(\00\00\00e\00x\00a\00m\00p\00l\00e\00 \00s\00t\00r\00i\00n\00g\00 \00v\00a\00l\00u\00e")
  (data (;84;) (i32.const 3884) "\1c")
  (data (;85;) (i32.const 3900) "\08\00\00\00\fac\02\00\14\e2\01")
  (data (;86;) (i32.const 3916) "l")
  (data (;87;) (i32.const 3928) "\01\00\00\00T\00\00\000\00x\008\009\002\000\005\00A\003\00A\003\00b\002\00A\006\009\00D\00e\006\00D\00b\00f\007\00f\000\001\00E\00D\001\003\00B\002\001\000\008\00B\002\00c\004\003\00e\007")
  (data (;88;) (i32.const 4028) "\5c")
  (data (;89;) (i32.const 4040) "\01\00\00\00J\00\00\00A\00d\00d\00r\00e\00s\00s\00 \00m\00u\00s\00t\00 \00c\00o\00n\00t\00a\00i\00n\00 \00e\00x\00a\00c\00t\00l\00y\00 \002\000\00 \00b\00y\00t\00e\00s")
  (data (;90;) (i32.const 4124) "l")
  (data (;91;) (i32.const 4136) "\01\00\00\00\5c\00\00\00~\00l\00i\00b\00/\00@\00g\00r\00a\00p\00h\00p\00r\00o\00t\00o\00c\00o\00l\00/\00g\00r\00a\00p\00h\00-\00t\00s\00/\00c\00h\00a\00i\00n\00/\00e\00t\00h\00e\00r\00e\00u\00m\00.\00t\00s")
  (data (;92;) (i32.const 4236) ",")
  (data (;93;) (i32.const 4248) "\01\00\00\00\18\00\00\00s\00t\00r\00i\00n\00g\00 \00v\00a\00l\00u\00e")
  (data (;94;) (i32.const 4284) "l")
  (data (;95;) (i32.const 4296) "\01\00\00\00T\00\00\000\00x\009\000\00c\00B\00a\002\00B\00b\00b\001\009\00e\00c\00c\002\009\001\00A\001\002\000\006\006\00F\00d\008\003\002\009\00D\006\005\00F\00A\001\00f\001\009\004\007")
  (data (;96;) (i32.const 4396) ",")
  (data (;97;) (i32.const 4408) "\01\00\00\00\10\00\00\00f\00u\00n\00c\00N\00a\00m\00e")
  (data (;98;) (i32.const 4444) "\ac")
  (data (;99;) (i32.const 4456) "\01\00\00\00\8e\00\00\00f\00u\00n\00c\00N\00a\00m\00e\00(\00i\00n\00t\003\002\00,\00 \00s\00t\00r\00i\00n\00g\00,\00 \00i\00n\00t\003\002\00[\00]\00,\00 \00b\00o\00o\00l\00,\00 \00a\00d\00d\00r\00e\00s\00s\00,\00 \00(\00i\00n\00t\003\002\00,\00 \00s\00t\00r\00i\00n\00g\00)\00)\00:\00(\00v\00o\00i\00d\00)")
  (data (;100;) (i32.const 4620) "\1c")
  (data (;101;) (i32.const 4652) "\1c")
  (data (;102;) (i32.const 4684) "\1c")
  (data (;103;) (i32.const 4696) "\01")
  (data (;104;) (i32.const 4716) "\5c")
  (data (;105;) (i32.const 4728) "\01\00\00\00J\00\00\00T\00o\00o\00 \00f\00e\00w\00 \00a\00r\00g\00u\00m\00e\00n\00t\00s\00 \00f\00o\00r\00 \00f\00o\00r\00m\00a\00t\00 \00s\00t\00r\00i\00n\00g\00:\00 ")
  (data (;106;) (i32.const 4812) "\5c")
  (data (;107;) (i32.const 4824) "\01\00\00\00D\00\00\00~\00l\00i\00b\00/\00m\00a\00t\00c\00h\00s\00t\00i\00c\00k\00-\00a\00s\00/\00a\00s\00s\00e\00m\00b\00l\00y\00/\00l\00o\00g\00.\00t\00s")
  (data (;108;) (i32.const 4908) "|")
  (data (;109;) (i32.const 4920) "\01\00\00\00^\00\00\00E\00l\00e\00m\00e\00n\00t\00 \00t\00y\00p\00e\00 \00m\00u\00s\00t\00 \00b\00e\00 \00n\00u\00l\00l\00a\00b\00l\00e\00 \00i\00f\00 \00a\00r\00r\00a\00y\00 \00i\00s\00 \00h\00o\00l\00e\00y")
  (data (;110;) (i32.const 5036) "\1c")
  (data (;111;) (i32.const 5048) "\01\00\00\00\0c\00\00\00r\00e\00s\00u\00l\00t")
  (data (;112;) (i32.const 5068) "\1c")
  (data (;113;) (i32.const 5100) ",")
  (data (;114;) (i32.const 5112) "\01\00\00\00\0e\00\00\00c\00o\00n\00N\00a\00m\00e")
  (data (;115;) (i32.const 5148) "<")
  (data (;116;) (i32.const 5160) "\01\00\00\00\1e\00\00\00u\00n\00e\00x\00p\00e\00c\00t\00e\00d\00 \00n\00u\00l\00l")
  (data (;117;) (i32.const 5212) "<")
  (data (;118;) (i32.const 5224) "\01\00\00\00\1e\00\00\00A\00s\00s\00e\00r\00t\00i\00o\00n\00 \00E\00r\00r\00o\00r")
  (data (;119;) (i32.const 5276) "\5c")
  (data (;120;) (i32.const 5288) "\01\00\00\00J\00\00\00~\00l\00i\00b\00/\00m\00a\00t\00c\00h\00s\00t\00i\00c\00k\00-\00a\00s\00/\00a\00s\00s\00e\00m\00b\00l\00y\00/\00a\00s\00s\00e\00r\00t\00.\00t\00s")
  (data (;121;) (i32.const 5372) "\1c")
  (data (;122;) (i32.const 5384) "\14\00\00\00\08\00\00\00\03")
  (data (;123;) (i32.const 5404) "\5c")
  (data (;124;) (i32.const 5416) "\01\00\00\00F\00\00\00C\00a\00n\00 \00t\00e\00s\00t\00 \00i\00f\00 \00m\00o\00c\00k\00e\00d\00 \00f\00u\00n\00c\00t\00i\00o\00n\00 \00r\00e\00v\00e\00r\00t\00s")
  (data (;125;) (i32.const 5500) "<")
  (data (;126;) (i32.const 5512) "\01\00\00\00 \00\00\00r\00e\00v\00e\00r\00t\00e\00d\00F\00u\00n\00c\00t\00i\00o\00n")
  (data (;127;) (i32.const 5564) "L")
  (data (;128;) (i32.const 5576) "\01\00\00\002\00\00\00r\00e\00v\00e\00r\00t\00e\00d\00F\00u\00n\00c\00t\00i\00o\00n\00(\00)\00:\00(\00v\00o\00i\00d\00)")
  (data (;129;) (i32.const 5644) "\1c")
  (data (;130;) (i32.const 5676) "\1c")
  (data (;131;) (i32.const 5708) "\1c")
  (data (;132;) (i32.const 5740) "\1c")
  (data (;133;) (i32.const 5752) "\14\00\00\00\08\00\00\00\04")
  (data (;134;) (i32.const 5772) "\5c")
  (data (;135;) (i32.const 5784) "\01\00\00\00L\00\00\00C\00a\00n\00 \00m\00o\00c\00k\00 \00t\00h\00e\00 \00o\00r\00a\00c\00l\00e\00 \00f\00u\00n\00c\00t\00i\00o\00n\00 \00c\00o\00r\00r\00e\00c\00t\00l\00y")
  (data (;136;) (i32.const 5868) "l")
  (data (;137;) (i32.const 5880) "\01\00\00\00T\00\00\000\00x\008\009\002\00b\00e\007\001\006\00d\00c\00f\000\00a\006\001\009\009\006\007\007\00f\003\005\005\00f\004\005\00b\00a\008\00c\00c\001\002\003\00b\00a\00f\006\000")
  (data (;138;) (i32.const 5980) "\1c")
  (data (;139;) (i32.const 5992) "\01\00\00\00\0c\00\00\00o\00r\00a\00c\00l\00e")
  (data (;140;) (i32.const 6012) "<")
  (data (;141;) (i32.const 6024) "\01\00\00\00$\00\00\00o\00r\00a\00c\00l\00e\00(\00)\00:\00(\00a\00d\00d\00r\00e\00s\00s\00)")
  (data (;142;) (i32.const 6076) ",")
  (data (;143;) (i32.const 6088) "\01\00\00\00\16\00\00\00C\00o\00m\00p\00t\00r\00o\00l\00l\00e\00r")
  (data (;144;) (i32.const 6124) "\1c")
  (data (;145;) (i32.const 6156) "\bc")
  (data (;146;) (i32.const 6168) "\01\00\00\00\a2\00\00\00C\00a\00l\00l\00 \00r\00e\00v\00e\00r\00t\00e\00d\00,\00 \00p\00r\00o\00b\00a\00b\00l\00y\00 \00b\00e\00c\00a\00u\00s\00e\00 \00a\00n\00 \00`\00a\00s\00s\00e\00r\00t\00`\00 \00o\00r\00 \00`\00r\00e\00q\00u\00i\00r\00e\00`\00 \00i\00n\00 \00t\00h\00e\00 \00c\00o\00n\00t\00r\00a\00c\00t\00 \00f\00a\00i\00l\00e\00d\00,\00 ")
  (data (;147;) (i32.const 6348) "<")
  (data (;148;) (i32.const 6360) "\01\00\00\00(\00\00\00c\00o\00n\00s\00i\00d\00e\00r\00 \00u\00s\00i\00n\00g\00 \00`\00t\00r\00y\00_")
  (data (;149;) (i32.const 6412) "\5c")
  (data (;150;) (i32.const 6424) "\01\00\00\00@\00\00\00`\00 \00t\00o\00 \00h\00a\00n\00d\00l\00e\00 \00t\00h\00i\00s\00 \00i\00n\00 \00t\00h\00e\00 \00m\00a\00p\00p\00i\00n\00g\00.")
  (data (;151;) (i32.const 6508) "\5c")
  (data (;152;) (i32.const 6520) "\01\00\00\00@\00\00\00E\00t\00h\00e\00r\00e\00u\00m\00 \00v\00a\00l\00u\00e\00 \00i\00s\00 \00n\00o\00t\00 \00a\00n\00 \00a\00d\00d\00r\00e\00s\00s")
  (data (;153;) (i32.const 6604) "\1c")
  (data (;154;) (i32.const 6616) "\14\00\00\00\08\00\00\00\05")
  (data (;155;) (i32.const 6636) "\8c")
  (data (;156;) (i32.const 6648) "\01\00\00\00x\00\00\00C\00a\00n\00 \00m\00o\00c\00k\00 \00t\00h\00e\00 \00l\00i\00q\00u\00i\00d\00a\00t\00i\00o\00n\00I\00n\00c\00e\00n\00t\00i\00v\00e\00M\00a\00n\00t\00i\00s\00s\00a\00 \00f\00u\00n\00c\00t\00i\00o\00n\00 \00c\00o\00r\00r\00e\00c\00t\00l\00y")
  (data (;157;) (i32.const 6780) "<")
  (data (;158;) (i32.const 6792) "\01\00\00\00&\00\00\001\001\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000")
  (data (;159;) (i32.const 6844) "L")
  (data (;160;) (i32.const 6856) "\01\00\00\008\00\00\00l\00i\00q\00u\00i\00d\00a\00t\00i\00o\00n\00I\00n\00c\00e\00n\00t\00i\00v\00e\00M\00a\00n\00t\00i\00s\00s\00a")
  (data (;161;) (i32.const 6924) "l")
  (data (;162;) (i32.const 6936) "\01\00\00\00P\00\00\00l\00i\00q\00u\00i\00d\00a\00t\00i\00o\00n\00I\00n\00c\00e\00n\00t\00i\00v\00e\00M\00a\00n\00t\00i\00s\00s\00a\00(\00)\00:\00(\00u\00i\00n\00t\002\005\006\00)")
  (data (;163;) (i32.const 7036) "\1c")
  (data (;164;) (i32.const 7068) "\5c")
  (data (;165;) (i32.const 7080) "\01\00\00\00J\00\00\00E\00t\00h\00e\00r\00e\00u\00m\00 \00v\00a\00l\00u\00e\00 \00i\00s\00 \00n\00o\00t\00 \00a\00n\00 \00i\00n\00t\00 \00o\00r\00 \00u\00i\00n\00t\00.")
  (data (;166;) (i32.const 7164) "\1c")
  (data (;167;) (i32.const 7176) "\14\00\00\00\08\00\00\00\06")
  (data (;168;) (i32.const 7196) "|")
  (data (;169;) (i32.const 7208) "\01\00\00\00f\00\00\00C\00a\00n\00 \00m\00o\00c\00k\00 \00t\00h\00e\00 \00c\00l\00o\00s\00e\00F\00a\00c\00t\00o\00r\00M\00a\00n\00t\00i\00s\00s\00a\00 \00f\00u\00n\00c\00t\00i\00o\00n\00 \00c\00o\00r\00r\00e\00c\00t\00l\00y")
  (data (;170;) (i32.const 7324) "<")
  (data (;171;) (i32.const 7336) "\01\00\00\00$\00\00\005\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000")
  (data (;172;) (i32.const 7388) "<")
  (data (;173;) (i32.const 7400) "\01\00\00\00&\00\00\00c\00l\00o\00s\00e\00F\00a\00c\00t\00o\00r\00M\00a\00n\00t\00i\00s\00s\00a")
  (data (;174;) (i32.const 7452) "\5c")
  (data (;175;) (i32.const 7464) "\01\00\00\00>\00\00\00c\00l\00o\00s\00e\00F\00a\00c\00t\00o\00r\00M\00a\00n\00t\00i\00s\00s\00a\00(\00)\00:\00(\00u\00i\00n\00t\002\005\006\00)")
  (data (;176;) (i32.const 7548) "\1c")
  (data (;177;) (i32.const 7580) "\1c")
  (data (;178;) (i32.const 7592) "\14\00\00\00\08\00\00\00\07")
  (data (;179;) (i32.const 7612) "L")
  (data (;180;) (i32.const 7624) "\01\00\00\006\00\00\00S\00h\00o\00u\00l\00d\00 \00c\00r\00e\00a\00t\00e\00 \00a\00 \00C\00o\00m\00p\00t\00r\00o\00l\00l\00e\00r")
  (data (;181;) (i32.const 7692) "\1c")
  (data (;182;) (i32.const 7704) "\01\00\00\00\02\00\00\001")
  (data (;183;) (i32.const 7724) "\1c")
  (data (;184;) (i32.const 7736) "\01\00\00\00\04\00\00\00i\00d")
  (data (;185;) (i32.const 7756) "\1c")
  (data (;186;) (i32.const 7788) ",")
  (data (;187;) (i32.const 7800) "\01\00\00\00\10\00\00\00_\00m\00a\00r\00k\00e\00t\00s")
  (data (;188;) (i32.const 7836) "\1c")
  (data (;189;) (i32.const 7868) "\5c")
  (data (;190;) (i32.const 7880) "\01\00\00\00F\00\00\00a\00c\00c\00e\00s\00s\00e\00d\00 \00v\00a\00l\00u\00e\00 \00o\00f\00 \00a\00 \00r\00e\00v\00e\00r\00t\00e\00d\00 \00c\00a\00l\00l\00,\00 ")
  (data (;191;) (i32.const 7964) "\9c")
  (data (;192;) (i32.const 7976) "\01\00\00\00\88\00\00\00p\00l\00e\00a\00s\00e\00 \00c\00h\00e\00c\00k\00 \00t\00h\00e\00 \00`\00r\00e\00v\00e\00r\00t\00e\00d\00`\00 \00f\00i\00e\00l\00d\00 \00b\00e\00f\00o\00r\00e\00 \00a\00c\00c\00e\00s\00s\00i\00n\00g\00 \00t\00h\00e\00 \00`\00v\00a\00l\00u\00e\00`\00 \00f\00i\00e\00l\00d")
  (data (;193;) (i32.const 8124) "l")
  (data (;194;) (i32.const 8136) "\01\00\00\00X\00\00\00[\00g\00e\00t\00O\00r\00C\00r\00e\00a\00t\00e\00C\00o\00m\00p\00t\00r\00o\00l\00l\00e\00r\00]\00 \00t\00r\00y\00_\00o\00r\00a\00c\00l\00e\00 \00r\00e\00v\00e\00r\00t\00e\00d")
  (data (;195;) (i32.const 8236) "\1c")
  (data (;196;) (i32.const 8268) "\5c")
  (data (;197;) (i32.const 8280) "\01\00\00\00J\00\00\00~\00l\00i\00b\00/\00@\00g\00r\00a\00p\00h\00p\00r\00o\00t\00o\00c\00o\00l\00/\00g\00r\00a\00p\00h\00-\00t\00s\00/\00i\00n\00d\00e\00x\00.\00t\00s")
  (data (;198;) (i32.const 8364) ",")
  (data (;199;) (i32.const 8376) "\01\00\00\00\16\00\00\00p\00r\00i\00c\00e\00O\00r\00a\00c\00l\00e")
  (data (;200;) (i32.const 8412) "\1c")
  (data (;201;) (i32.const 8444) "\9c")
  (data (;202;) (i32.const 8456) "\01\00\00\00\84\00\00\00[\00g\00e\00t\00O\00r\00C\00r\00e\00a\00t\00e\00C\00o\00m\00p\00t\00r\00o\00l\00l\00e\00r\00]\00 \00t\00r\00y\00_\00l\00i\00q\00u\00i\00d\00a\00t\00i\00o\00n\00I\00n\00c\00e\00n\00t\00i\00v\00e\00M\00a\00n\00t\00i\00s\00s\00a\00 \00r\00e\00v\00e\00r\00t\00e\00d")
  (data (;203;) (i32.const 8604) "\1c")
  (data (;204;) (i32.const 8636) "<")
  (data (;205;) (i32.const 8648) "\01\00\00\00(\00\00\00l\00i\00q\00u\00i\00d\00a\00t\00i\00o\00n\00I\00n\00c\00e\00n\00t\00i\00v\00e")
  (data (;206;) (i32.const 8700) "\8c")
  (data (;207;) (i32.const 8712) "\01\00\00\00z\00\00\00F\00a\00i\00l\00e\00d\00 \00t\00o\00 \00d\00i\00v\00i\00d\00e\00 \00B\00i\00g\00D\00e\00c\00i\00m\00a\00l\00s\00 \00b\00e\00c\00a\00u\00s\00e\00 \00l\00e\00f\00t\00 \00h\00a\00n\00d\00 \00s\00i\00d\00e\00 \00i\00s\00 \00'\00n\00u\00l\00l\00'")
  (data (;208;) (i32.const 8844) "\1c")
  (data (;209;) (i32.const 8876) "\8c")
  (data (;210;) (i32.const 8888) "\01\00\00\00r\00\00\00[\00g\00e\00t\00O\00r\00C\00r\00e\00a\00t\00e\00C\00o\00m\00p\00t\00r\00o\00l\00l\00e\00r\00]\00 \00t\00r\00y\00_\00c\00l\00o\00s\00e\00F\00a\00c\00t\00o\00r\00M\00a\00n\00t\00i\00s\00s\00a\00 \00r\00e\00v\00e\00r\00t\00e\00d")
  (data (;211;) (i32.const 9020) "\1c")
  (data (;212;) (i32.const 9052) ",")
  (data (;213;) (i32.const 9064) "\01\00\00\00\16\00\00\00c\00l\00o\00s\00e\00F\00a\00c\00t\00o\00r")
  (data (;214;) (i32.const 9100) "\1c")
  (data (;215;) (i32.const 9112) "\14\00\00\00\08\00\00\00\08")
  (data (;216;) (i32.const 9132) "\1c")
  (data (;217;) (i32.const 9144) "\14\00\00\00\08\00\00\00\09")
  (data (;218;) (i32.const 9164) "<")
  (data (;219;) (i32.const 9180) " \00\00\00\a0\04\00\00\c0\04\00\00\e0\04\00\00\10\05\00\000\05\00\00P\05\00\00p\05\00\00\90\05")
  (data (;220;) (i32.const 9228) ",")
  (data (;221;) (i32.const 9240) "\03\00\00\00\10\00\00\00\e0#\00\00\e0#\00\00 \00\00\00\08"))
