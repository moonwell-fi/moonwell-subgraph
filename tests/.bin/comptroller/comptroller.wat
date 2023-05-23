(module
  (type (;0;) (func (param i32) (result i32)))
  (type (;1;) (func (param i32 i32)))
  (type (;2;) (func))
  (type (;3;) (func (param i32 i32) (result i32)))
  (type (;4;) (func (param i32 i32 i32)))
  (type (;5;) (func (param i32)))
  (type (;6;) (func (param i32 i32 i32) (result i32)))
  (type (;7;) (func (param i32 i32 i32 i32) (result i32)))
  (type (;8;) (func (param i32 i32 i32 i32)))
  (type (;9;) (func (param f64) (result i32)))
  (type (;10;) (func (result i32)))
  (type (;11;) (func (param i32 i32 i32 i32 i32 i32)))
  (type (;12;) (func (param i32 i32 i32 i32 i32) (result i32)))
  (type (;13;) (func (param i64 i32 i64 i32 i64 i32) (result i32)))
  (type (;14;) (func (param i32 i32 i32 i32 i32 i32 i32) (result i32)))
  (import "env" "abort" (func $~lib/builtins/abort (type 8)))
  (import "conversion" "typeConversion.stringToH160" (func $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.stringToH160 (type 0)))
  (import "numbers" "bigDecimal.fromString" (func $~lib/@graphprotocol/graph-ts/common/numbers/bigDecimal.fromString (type 0)))
  (import "numbers" "bigInt.times" (func $~lib/@graphprotocol/graph-ts/common/numbers/bigInt.times (type 3)))
  (import "numbers" "bigInt.fromString" (func $~lib/@graphprotocol/graph-ts/common/numbers/bigInt.fromString (type 0)))
  (import "index" "_registerTest" (func $~lib/matchstick-as/assembly/index/_registerTest (type 4)))
  (import "store" "clearStore" (func $~lib/matchstick-as/assembly/store/clearStore (type 2)))
  (import "index" "_registerHook" (func $~lib/matchstick-as/assembly/index/_registerHook (type 1)))
  (import "log" "log.log" (func $~lib/matchstick-as/assembly/log/log.log (type 1)))
  (import "index" "mockFunction" (func $~lib/matchstick-as/assembly/index/mockFunction (type 11)))
  (import "ethereum" "ethereum.call" (func $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.call (type 0)))
  (import "assert" "_assert.equals" (func $~lib/matchstick-as/assembly/assert/_assert.equals (type 3)))
  (import "conversion" "typeConversion.bytesToHex" (func $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.bytesToHex (type 0)))
  (import "index" "_registerDescribe" (func $~lib/matchstick-as/assembly/index/_registerDescribe (type 1)))
  (import "store" "countEntities" (func $~lib/matchstick-as/assembly/store/countEntities (type 0)))
  (import "index" "store.get" (func $~lib/@graphprotocol/graph-ts/index/store.get (type 3)))
  (import "numbers" "bigDecimal.toString" (func $~lib/@graphprotocol/graph-ts/common/numbers/bigDecimal.toString (type 0)))
  (import "conversion" "typeConversion.bigIntToString" (func $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.bigIntToString (type 0)))
  (import "index" "store.set" (func $~lib/@graphprotocol/graph-ts/index/store.set (type 4)))
  (import "assert" "_assert.fieldEquals" (func $~lib/matchstick-as/assembly/assert/_assert.fieldEquals (type 7)))
  (import "datasource" "dataSource.create" (func $~lib/@graphprotocol/graph-ts/common/datasource/dataSource.create (type 1)))
  (import "index" "log.log" (func $~lib/@graphprotocol/graph-ts/index/log.log (type 1)))
  (import "datasource" "dataSource.network" (func $~lib/@graphprotocol/graph-ts/common/datasource/dataSource.network (type 10)))
  (import "numbers" "bigDecimal.dividedBy" (func $~lib/@graphprotocol/graph-ts/common/numbers/bigDecimal.dividedBy (type 3)))
  (import "numbers" "bigInt.dividedBy" (func $~lib/@graphprotocol/graph-ts/common/numbers/bigInt.dividedBy (type 3)))
  (import "numbers" "bigDecimal.times" (func $~lib/@graphprotocol/graph-ts/common/numbers/bigDecimal.times (type 3)))
  (import "numbers" "bigDecimal.minus" (func $~lib/@graphprotocol/graph-ts/common/numbers/bigDecimal.minus (type 3)))
  (import "numbers" "bigDecimal.plus" (func $~lib/@graphprotocol/graph-ts/common/numbers/bigDecimal.plus (type 3)))
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
  (func $~lib/memory/memory.fill (type 1) (param i32 i32)
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
  (func $~lib/@graphprotocol/graph-ts/common/collections/ByteArray#constructor (type 3) (param i32 i32) (result i32)
    (local i32)
    block (result i32)  ;; label = @1
      block (result i32)  ;; label = @2
        block (result i32)  ;; label = @3
          local.get 0
          i32.eqz
          if  ;; label = @4
            i32.const 12
            i32.const 12
            call $~lib/rt/stub/__new
            local.set 0
          end
          local.get 0
        end
        i32.eqz
        if  ;; label = @3
          i32.const 12
          i32.const 13
          call $~lib/rt/stub/__new
          local.set 0
        end
        local.get 0
      end
      i32.eqz
      if  ;; label = @2
        i32.const 12
        i32.const 2
        call $~lib/rt/stub/__new
        local.set 0
      end
      local.get 0
    end
    i32.const 0
    i32.store
    local.get 0
    i32.const 0
    i32.store offset=4
    local.get 0
    i32.const 0
    i32.store offset=8
    local.get 1
    i32.const 1073741820
    i32.gt_u
    if  ;; label = @1
      i32.const 1728
      i32.const 1936
      i32.const 18
      i32.const 57
      call $~lib/builtins/abort
      unreachable
    end
    local.get 1
    i32.const 0
    call $~lib/rt/stub/__new
    local.tee 2
    local.get 1
    call $~lib/memory/memory.fill
    local.get 0
    local.get 2
    i32.store
    local.get 0
    local.get 2
    i32.store offset=4
    local.get 0
    local.get 1
    i32.store offset=8
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
    (local i32)
    i32.const 0
    i32.const 4
    call $~lib/@graphprotocol/graph-ts/common/collections/ByteArray#constructor
    local.tee 1
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
  (func $~lib/rt/__newArray (type 6) (param i32 i32 i32) (result i32)
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
  (func $~lib/rt/stub/__renew (type 3) (param i32 i32) (result i32)
    (local i32 i32 i32 i32 i32)
    local.get 1
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
    local.get 1
    i32.const 16
    i32.add
    local.set 3
    local.get 0
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
    local.tee 6
    i32.load
    local.tee 5
    i32.add
    i32.eq
    local.set 4
    local.get 3
    i32.const 19
    i32.add
    i32.const -16
    i32.and
    i32.const 4
    i32.sub
    local.set 2
    local.get 3
    local.get 5
    i32.gt_u
    if  ;; label = @1
      local.get 4
      if  ;; label = @2
        local.get 3
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
        local.tee 3
        memory.size
        local.tee 5
        i32.const 16
        i32.shl
        i32.const 15
        i32.add
        i32.const -16
        i32.and
        local.tee 4
        i32.gt_u
        if  ;; label = @3
          local.get 5
          local.get 3
          local.get 4
          i32.sub
          i32.const 65535
          i32.add
          i32.const -65536
          i32.and
          i32.const 16
          i32.shr_u
          local.tee 4
          local.get 4
          local.get 5
          i32.lt_s
          select
          memory.grow
          i32.const 0
          i32.lt_s
          if  ;; label = @4
            local.get 4
            memory.grow
            i32.const 0
            i32.lt_s
            if  ;; label = @5
              unreachable
            end
          end
        end
        local.get 3
        global.set $~lib/rt/stub/offset
        local.get 6
        local.get 2
        i32.store
      else
        local.get 2
        local.get 5
        i32.const 1
        i32.shl
        local.tee 3
        local.get 2
        local.get 3
        i32.gt_u
        select
        call $~lib/rt/stub/__alloc
        local.tee 2
        local.get 0
        local.get 5
        call $~lib/memory/memory.copy
        local.get 2
        local.set 0
      end
    else
      local.get 4
      if  ;; label = @2
        local.get 0
        local.get 2
        i32.add
        global.set $~lib/rt/stub/offset
        local.get 6
        local.get 2
        i32.store
      end
    end
    local.get 0
    i32.const 4
    i32.sub
    local.get 1
    i32.store offset=16
    local.get 0
    i32.const 16
    i32.add)
  (func $~lib/string/String#toLowerCase (type 0) (param i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    local.get 0
    i32.const 20
    i32.sub
    i32.load offset=16
    i32.const 1
    i32.shr_u
    local.tee 8
    i32.eqz
    if  ;; label = @1
      local.get 0
      return
    end
    local.get 8
    i32.const 2
    i32.shl
    i32.const 1
    call $~lib/rt/stub/__new
    local.set 7
    loop  ;; label = @1
      local.get 4
      local.get 8
      i32.lt_u
      if  ;; label = @2
        local.get 0
        local.get 4
        i32.const 1
        i32.shl
        i32.add
        i32.load16_u
        local.tee 1
        i32.const 7
        i32.shr_u
        if  ;; label = @3
          block  ;; label = @4
            local.get 4
            local.get 8
            i32.const 1
            i32.sub
            i32.lt_u
            i32.const 0
            local.get 1
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
              local.tee 5
              i32.const 56319
              i32.sub
              i32.const 1025
              i32.lt_u
              if  ;; label = @6
                local.get 4
                i32.const 1
                i32.add
                local.set 4
                local.get 5
                i32.const 1023
                i32.and
                local.get 1
                local.tee 2
                i32.const 1023
                i32.and
                i32.const 10
                i32.shl
                i32.or
                i32.const 65536
                i32.add
                local.tee 1
                i32.const 131072
                i32.ge_u
                if  ;; label = @7
                  local.get 7
                  local.get 6
                  i32.const 1
                  i32.shl
                  i32.add
                  local.get 2
                  local.get 5
                  i32.const 16
                  i32.shl
                  i32.or
                  i32.store
                  local.get 6
                  i32.const 1
                  i32.add
                  local.set 6
                  br 3 (;@4;)
                end
              end
            end
            local.get 1
            i32.const 304
            i32.eq
            if  ;; label = @5
              local.get 7
              local.get 6
              i32.const 1
              i32.shl
              i32.add
              i32.const 50790505
              i32.store
              local.get 6
              i32.const 1
              i32.add
              local.set 6
            else
              local.get 1
              i32.const 931
              i32.eq
              if  ;; label = @6
                local.get 7
                local.get 6
                i32.const 1
                i32.shl
                i32.add
                i32.const 962
                i32.const 963
                local.get 8
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
                    local.set 10
                    loop  ;; label = @9
                      local.get 2
                      local.get 10
                      i32.gt_s
                      if  ;; label = @10
                        i32.const -1
                        local.set 1
                        block  ;; label = @11
                          local.get 2
                          i32.const 0
                          i32.le_s
                          br_if 0 (;@11;)
                          local.get 0
                          local.get 2
                          i32.const 1
                          i32.sub
                          i32.const 1
                          i32.shl
                          i32.add
                          i32.load16_u
                          local.tee 5
                          i32.const 64512
                          i32.and
                          i32.const 56320
                          i32.eq
                          local.get 2
                          i32.const 2
                          i32.sub
                          i32.const 0
                          i32.ge_s
                          i32.and
                          if  ;; label = @12
                            local.get 5
                            i32.const 1023
                            i32.and
                            local.get 0
                            local.get 2
                            i32.const 2
                            i32.sub
                            i32.const 1
                            i32.shl
                            i32.add
                            i32.load16_u
                            local.tee 9
                            i32.const 1023
                            i32.and
                            i32.const 10
                            i32.shl
                            i32.add
                            i32.const 65536
                            i32.add
                            local.set 1
                            local.get 9
                            i32.const 64512
                            i32.and
                            i32.const 55296
                            i32.eq
                            br_if 1 (;@11;)
                          end
                          i32.const 65533
                          local.get 5
                          local.get 5
                          i32.const 63488
                          i32.and
                          i32.const 55296
                          i32.eq
                          select
                          local.set 1
                        end
                        local.get 1
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
                          block (result i32)  ;; label = @12
                            i32.const 0
                            local.get 1
                            i32.const 127370
                            i32.lt_u
                            if (result i32)  ;; label = @13
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
                            br_if 4 (;@8;)
                            drop
                            i32.const 1
                          end
                          local.set 3
                        end
                        local.get 2
                        local.get 1
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
                    local.get 8
                    local.get 1
                    local.get 8
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
                          local.get 8
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
                            local.tee 5
                            i32.const 64512
                            i32.and
                            i32.const 56320
                            i32.eq
                            if  ;; label = @13
                              local.get 5
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
                local.get 1
                i32.const 9398
                i32.sub
                i32.const 25
                i32.le_u
                if  ;; label = @7
                  local.get 7
                  local.get 6
                  i32.const 1
                  i32.shl
                  i32.add
                  local.get 1
                  i32.const 26
                  i32.add
                  i32.store16
                else
                  local.get 1
                  local.tee 2
                  i32.const 8
                  i32.shr_u
                  local.tee 1
                  i32.const 12772
                  i32.add
                  i32.load8_u
                  local.get 1
                  i32.const 9132
                  i32.add
                  i32.load8_u
                  i32.const 86
                  i32.mul
                  i32.const 9132
                  i32.add
                  local.get 2
                  i32.const 255
                  i32.and
                  local.tee 9
                  i32.const 3
                  i32.div_u
                  i32.add
                  i32.load8_u
                  local.get 9
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
                  local.tee 1
                  i32.const 8
                  i32.shr_s
                  local.set 5
                  block  ;; label = @8
                    block  ;; label = @9
                      local.get 1
                      i32.const 255
                      i32.and
                      local.tee 1
                      i32.const 2
                      i32.lt_u
                      br_if 0 (;@9;)
                      local.get 5
                      i32.const 255
                      i32.and
                      local.set 1
                      local.get 5
                      i32.const 8
                      i32.shr_u
                      local.set 3
                      loop  ;; label = @10
                        local.get 1
                        if  ;; label = @11
                          local.get 9
                          local.get 3
                          local.get 1
                          i32.const 1
                          i32.shr_u
                          local.tee 5
                          i32.add
                          i32.const 1
                          i32.shl
                          i32.const 13284
                          i32.add
                          i32.load8_u
                          local.tee 10
                          i32.eq
                          if (result i32)  ;; label = @12
                            local.get 3
                            local.get 5
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
                            local.tee 1
                            i32.const 8
                            i32.shr_s
                            local.set 5
                            local.get 1
                            i32.const 255
                            i32.and
                            local.tee 1
                            i32.const 2
                            i32.lt_u
                            br_if 3 (;@9;)
                            local.get 2
                            i32.const 1
                            i32.add
                            local.set 2
                            br 4 (;@8;)
                          else
                            local.get 9
                            local.get 10
                            i32.lt_u
                            if (result i32)  ;; label = @13
                              local.get 5
                            else
                              local.get 3
                              local.get 5
                              i32.add
                              local.set 3
                              local.get 1
                              local.get 5
                              i32.sub
                            end
                          end
                          local.set 1
                          br 1 (;@10;)
                        end
                      end
                      br 1 (;@8;)
                    end
                    local.get 2
                    local.get 5
                    i32.const 0
                    local.get 1
                    i32.sub
                    i32.and
                    i32.add
                    local.set 2
                  end
                  local.get 2
                  i32.const 2097151
                  i32.and
                  local.tee 1
                  i32.const 65536
                  i32.lt_u
                  if  ;; label = @8
                    local.get 7
                    local.get 6
                    i32.const 1
                    i32.shl
                    i32.add
                    local.get 1
                    i32.store16
                  else
                    local.get 7
                    local.get 6
                    i32.const 1
                    i32.shl
                    i32.add
                    local.get 1
                    i32.const 65536
                    i32.sub
                    local.tee 1
                    i32.const 10
                    i32.shr_u
                    i32.const 55296
                    i32.or
                    local.get 1
                    i32.const 1023
                    i32.and
                    i32.const 56320
                    i32.or
                    i32.const 16
                    i32.shl
                    i32.or
                    i32.store
                    local.get 6
                    i32.const 1
                    i32.add
                    local.set 6
                  end
                end
              end
            end
          end
        else
          local.get 7
          local.get 6
          i32.const 1
          i32.shl
          i32.add
          local.get 1
          i32.const 4428
          i32.add
          i32.load8_u
          i32.store16
        end
        local.get 4
        i32.const 1
        i32.add
        local.set 4
        local.get 6
        i32.const 1
        i32.add
        local.set 6
        br 1 (;@1;)
      end
    end
    local.get 7
    local.get 6
    i32.const 1
    i32.shl
    call $~lib/rt/stub/__renew)
  (func $~lib/string/String#repeat (type 3) (param i32 i32) (result i32)
    (local i32 i32 i32 i32)
    local.get 0
    i32.const 20
    i32.sub
    i32.load offset=16
    i32.const 1
    i32.shr_u
    local.set 2
    local.get 1
    i32.const 0
    i32.lt_s
    if (result i32)  ;; label = @1
      i32.const 1
    else
      local.get 2
      i64.extend_i32_s
      local.get 1
      i64.extend_i32_s
      i64.mul
      i64.const 268435456
      i64.gt_u
    end
    if  ;; label = @1
      i32.const 1728
      i32.const 14432
      i32.const 333
      i32.const 7
      call $~lib/builtins/abort
      unreachable
    end
    local.get 2
    i32.const 0
    local.get 1
    select
    i32.eqz
    if  ;; label = @1
      i32.const 14480
      return
    end
    local.get 1
    i32.const 1
    i32.eq
    if  ;; label = @1
      local.get 0
      return
    end
    local.get 1
    local.get 2
    i32.mul
    i32.const 1
    i32.shl
    i32.const 1
    call $~lib/rt/stub/__new
    local.tee 4
    local.set 5
    local.get 2
    i32.const 1
    i32.shl
    local.tee 2
    local.get 1
    i32.mul
    local.set 1
    loop  ;; label = @1
      local.get 1
      local.get 3
      i32.gt_u
      if  ;; label = @2
        local.get 3
        local.get 5
        i32.add
        local.get 0
        local.get 2
        call $~lib/memory/memory.copy
        local.get 2
        local.get 3
        i32.add
        local.set 3
        br 1 (;@1;)
      end
    end
    local.get 4)
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
      i32.const 14480
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
  (func $start:tests/comptroller/comptroller.test~anonymous|0 (type 2)
    i32.const 0
    i32.const 14576
    i32.const 44
    i32.const 3
    call $~lib/builtins/abort
    unreachable)
  (func $start:tests/comptroller/comptroller.test~anonymous|1~anonymous|0 (type 2)
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
  (func $~lib/array/ensureCapacity (type 1) (param i32 i32)
    (local i32 i32 i32)
    local.get 1
    local.get 0
    i32.load offset=8
    local.tee 3
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
      local.tee 4
      local.get 3
      i32.const 1
      i32.shl
      local.tee 2
      i32.const 1073741820
      local.get 2
      i32.const 1073741820
      i32.lt_u
      select
      local.tee 2
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
      local.get 2
      i32.lt_u
      select
      local.tee 1
      call $~lib/rt/stub/__renew
      local.tee 2
      local.get 3
      i32.add
      local.get 1
      local.get 3
      i32.sub
      call $~lib/memory/memory.fill
      local.get 2
      local.get 4
      i32.ne
      if  ;; label = @2
        local.get 0
        local.get 2
        i32.store
        local.get 0
        local.get 2
        i32.store offset=4
      end
      local.get 0
      local.get 1
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
      i32.const 15216
      i32.const 15312
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
  (func $~lib/matchstick-as/assembly/index/createMockedFunction (type 6) (param i32 i32 i32) (result i32)
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
    i32.const 15808
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
      i32.const 16064
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
      i32.const 14480
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
    i32.const 14480
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
            i32.const 15872
            i32.const 2192
            call $~lib/string/String#concat
            i32.const 15968
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
  (func $~lib/matchstick-as/assembly/index/MockedFunction#withArgs (type 3) (param i32 i32) (result i32)
    local.get 0
    i32.load8_u
    if  ;; label = @1
      i32.const 0
      i32.const 0
      i32.const 3
      i32.const 15840
      call $~lib/rt/__newArray
      call $~lib/matchstick-as/assembly/log/format
      call $~lib/matchstick-as/assembly/log/log.log
    else
      local.get 0
      local.get 1
      i32.store offset=16
    end
    local.get 0)
  (func $~lib/matchstick-as/assembly/index/MockedFunction#returns (type 1) (param i32 i32)
    local.get 0
    i32.load8_u
    if  ;; label = @1
      i32.const 0
      i32.const 0
      i32.const 3
      i32.const 16224
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
  (func $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.SmartContractCall#constructor (type 12) (param i32 i32 i32 i32 i32) (result i32)
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
  (func $start:tests/comptroller/comptroller.test~anonymous|1~anonymous|1 (type 2)
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
    i64.const 15008
    i64.store offset=8
    local.get 0
    local.set 3
    i32.const 2
    i32.const 19
    i32.const 15072
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
    i32.const 15104
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
    i64.const 15424
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
    i32.const 15472
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.stringToH160
    i32.const 15584
    i32.const 15632
    call $~lib/matchstick-as/assembly/index/createMockedFunction
    local.get 0
    call $~lib/matchstick-as/assembly/index/MockedFunction#withArgs
    local.set 3
    i32.const 1
    i32.const 22
    i32.const 0
    call $~lib/rt/__newArray
    local.tee 2
    i32.load offset=4
    drop
    i32.const 16
    i32.const 21
    call $~lib/rt/stub/__new
    local.tee 1
    i32.const 6
    i32.store
    local.get 1
    i64.const 16192
    i64.store offset=8
    local.get 2
    i32.load offset=4
    local.get 1
    i32.store
    local.get 3
    local.get 2
    call $~lib/matchstick-as/assembly/index/MockedFunction#returns
    i32.const 16256
    i32.const 15472
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.stringToH160
    i32.const 15584
    i32.const 15632
    local.get 0
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.SmartContractCall#constructor
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.call
    local.tee 0
    i32.eqz
    if  ;; label = @1
      i32.const 16304
      i32.const 14576
      i32.const 66
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
    i64.const 16192
    i64.store offset=8
    local.get 0
    local.get 2
    call $~lib/matchstick-as/assembly/assert/_assert.equals
    i32.eqz
    if  ;; label = @1
      i32.const 16368
      i32.const 16432
      i32.const 19
      i32.const 7
      call $~lib/builtins/abort
      unreachable
    end)
  (func $start:tests/comptroller/comptroller.test~anonymous|1~anonymous|2 (type 2)
    (local i32)
    i32.const 15104
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.stringToH160
    i32.const 16656
    i32.const 16720
    call $~lib/matchstick-as/assembly/index/createMockedFunction
    local.tee 0
    i32.load8_u
    if  ;; label = @1
      i32.const 0
      i32.const 0
      i32.const 3
      i32.const 16832
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
      i32.const 16800
      call $~lib/rt/__newArray
      i32.const 1
      call $~lib/matchstick-as/assembly/index/mockFunction
      local.get 0
      i32.const 1
      i32.store8
    end
    i32.const 16256
    i32.const 15104
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.stringToH160
    i32.const 16656
    i32.const 16720
    i32.const 0
    i32.const 22
    i32.const 16864
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
      i32.const 16368
      i32.const 16432
      i32.const 19
      i32.const 7
      call $~lib/builtins/abort
      unreachable
    end)
  (func $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.SmartContract#constructor (type 6) (param i32 i32 i32) (result i32)
    block (result i32)  ;; label = @1
      local.get 0
      i32.eqz
      if  ;; label = @2
        i32.const 8
        i32.const 27
        call $~lib/rt/stub/__new
        local.set 0
      end
      local.get 0
    end
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
    local.get 0)
  (func $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.SmartContract#call (type 7) (param i32 i32 i32 i32) (result i32)
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
      i32.const 17200
      i32.const 17392
      call $~lib/string/String#concat
      local.get 1
      call $~lib/string/String#concat
      i32.const 17456
      call $~lib/string/String#concat
      i32.const 15312
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
      i32.const 17552
      i32.const 15312
      i32.const 53
      i32.const 7
      call $~lib/builtins/abort
      unreachable
    end
    local.get 0
    i64.load offset=8
    i32.wrap_i64)
  (func $~lib/matchstick-as/assembly/assert/assert.addressEquals (type 1) (param i32 i32)
    local.get 0
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value.fromAddress
    local.get 1
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value.fromAddress
    call $~lib/matchstick-as/assembly/assert/_assert.equals
    i32.eqz
    if  ;; label = @1
      i32.const 16368
      i32.const 16432
      i32.const 19
      i32.const 7
      call $~lib/builtins/abort
      unreachable
    end)
  (func $start:tests/comptroller/comptroller.test~anonymous|1~anonymous|3 (type 2)
    (local i32 i32 i32)
    global.get $tests/comptroller/comptroller.test/comptrollerAddress
    i32.const 17024
    i32.const 17056
    call $~lib/matchstick-as/assembly/index/createMockedFunction
    local.set 1
    i32.const 1
    i32.const 22
    i32.const 0
    call $~lib/rt/__newArray
    local.tee 0
    i32.load offset=4
    drop
    global.get $tests/comptroller/comptroller.test/expectedPriceOracle
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value.fromAddress
    local.set 2
    local.get 0
    i32.load offset=4
    local.get 2
    i32.store
    local.get 1
    local.get 0
    call $~lib/matchstick-as/assembly/index/MockedFunction#returns
    global.get $tests/comptroller/comptroller.test/comptrollerAddress
    local.set 0
    i32.const 8
    i32.const 26
    call $~lib/rt/stub/__new
    i32.const 17120
    local.get 0
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.SmartContract#constructor
    i32.const 17024
    i32.const 17056
    i32.const 0
    i32.const 22
    i32.const 17168
    call $~lib/rt/__newArray
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.SmartContract#call
    i32.const 0
    call $~lib/array/Array<~lib/string/String>#__get
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value#toAddress
    local.set 0
    global.get $tests/comptroller/comptroller.test/expectedPriceOracle
    local.get 0
    call $~lib/matchstick-as/assembly/assert/assert.addressEquals)
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
      i32.const 18112
      i32.const 15312
      i32.const 80
      i32.const 7
      call $~lib/builtins/abort
      unreachable
    end
    local.get 0
    i64.load offset=8
    i32.wrap_i64)
  (func $~lib/matchstick-as/assembly/assert/assert.bigIntEquals (type 1) (param i32 i32)
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
      i32.const 16368
      i32.const 16432
      i32.const 19
      i32.const 7
      call $~lib/builtins/abort
      unreachable
    end)
  (func $start:tests/comptroller/comptroller.test~anonymous|1~anonymous|4 (type 2)
    (local i32 i32 i32 i32 i64)
    i32.const 17824
    call $~lib/@graphprotocol/graph-ts/common/numbers/bigInt.fromString
    local.set 2
    global.get $tests/comptroller/comptroller.test/comptrollerAddress
    i32.const 17888
    i32.const 17968
    call $~lib/matchstick-as/assembly/index/createMockedFunction
    local.set 3
    i32.const 1
    i32.const 22
    i32.const 0
    call $~lib/rt/__newArray
    local.tee 0
    i32.load offset=4
    drop
    i32.const 17824
    call $~lib/@graphprotocol/graph-ts/common/numbers/bigInt.fromString
    i64.extend_i32_u
    local.set 4
    i32.const 16
    i32.const 21
    call $~lib/rt/stub/__new
    local.tee 1
    i32.const 4
    i32.store
    local.get 1
    local.get 4
    i64.store offset=8
    local.get 0
    i32.load offset=4
    local.get 1
    i32.store
    local.get 3
    local.get 0
    call $~lib/matchstick-as/assembly/index/MockedFunction#returns
    global.get $tests/comptroller/comptroller.test/comptrollerAddress
    local.set 0
    local.get 2
    i32.const 8
    i32.const 26
    call $~lib/rt/stub/__new
    i32.const 17120
    local.get 0
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.SmartContract#constructor
    i32.const 17888
    i32.const 17968
    i32.const 0
    i32.const 22
    i32.const 18080
    call $~lib/rt/__newArray
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.SmartContract#call
    i32.const 0
    call $~lib/array/Array<~lib/string/String>#__get
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value#toBigInt
    call $~lib/matchstick-as/assembly/assert/assert.bigIntEquals)
  (func $start:tests/comptroller/comptroller.test~anonymous|1~anonymous|5 (type 2)
    (local i32 i32 i32 i32 i64)
    i32.const 18368
    call $~lib/@graphprotocol/graph-ts/common/numbers/bigInt.fromString
    local.set 2
    global.get $tests/comptroller/comptroller.test/comptrollerAddress
    i32.const 18432
    i32.const 18496
    call $~lib/matchstick-as/assembly/index/createMockedFunction
    local.set 3
    i32.const 1
    i32.const 22
    i32.const 0
    call $~lib/rt/__newArray
    local.tee 0
    i32.load offset=4
    drop
    i32.const 18368
    call $~lib/@graphprotocol/graph-ts/common/numbers/bigInt.fromString
    i64.extend_i32_u
    local.set 4
    i32.const 16
    i32.const 21
    call $~lib/rt/stub/__new
    local.tee 1
    i32.const 4
    i32.store
    local.get 1
    local.get 4
    i64.store offset=8
    local.get 0
    i32.load offset=4
    local.get 1
    i32.store
    local.get 3
    local.get 0
    call $~lib/matchstick-as/assembly/index/MockedFunction#returns
    global.get $tests/comptroller/comptroller.test/comptrollerAddress
    local.set 0
    local.get 2
    i32.const 8
    i32.const 26
    call $~lib/rt/stub/__new
    i32.const 17120
    local.get 0
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.SmartContract#constructor
    i32.const 18432
    i32.const 18496
    i32.const 0
    i32.const 22
    i32.const 18592
    call $~lib/rt/__newArray
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.SmartContract#call
    i32.const 0
    call $~lib/array/Array<~lib/string/String>#__get
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value#toBigInt
    call $~lib/matchstick-as/assembly/assert/assert.bigIntEquals)
  (func $start:tests/comptroller/comptroller.test~anonymous|1~anonymous|6 (type 2)
    (local i32 i32 i32)
    global.get $tests/comptroller/comptroller.test/movrMarketAddress
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.stringToH160
    i32.const 18800
    i32.const 18864
    call $~lib/matchstick-as/assembly/index/createMockedFunction
    local.set 1
    i32.const 1
    i32.const 22
    i32.const 0
    call $~lib/rt/__newArray
    local.tee 0
    i32.load offset=4
    drop
    global.get $tests/comptroller/comptroller.test/expectedInterestRateModel
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.stringToH160
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value.fromAddress
    local.set 2
    local.get 0
    i32.load offset=4
    local.get 2
    i32.store
    local.get 1
    local.get 0
    call $~lib/matchstick-as/assembly/index/MockedFunction#returns
    global.get $tests/comptroller/comptroller.test/movrMarketAddress
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.stringToH160
    local.set 0
    i32.const 8
    i32.const 28
    call $~lib/rt/stub/__new
    i32.const 18944
    local.get 0
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.SmartContract#constructor
    i32.const 18800
    i32.const 18864
    i32.const 0
    i32.const 22
    i32.const 18976
    call $~lib/rt/__newArray
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.SmartContract#call
    i32.const 0
    call $~lib/array/Array<~lib/string/String>#__get
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value#toAddress
    local.set 0
    global.get $tests/comptroller/comptroller.test/expectedInterestRateModel
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.stringToH160
    local.get 0
    call $~lib/matchstick-as/assembly/assert/assert.addressEquals)
  (func $start:tests/comptroller/comptroller.test~anonymous|1~anonymous|7 (type 2)
    (local i32 i32 i32 i64)
    global.get $tests/comptroller/comptroller.test/movrMarketAddress
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.stringToH160
    i32.const 19184
    i32.const 19248
    call $~lib/matchstick-as/assembly/index/createMockedFunction
    local.set 2
    i32.const 1
    i32.const 22
    i32.const 0
    call $~lib/rt/__newArray
    local.tee 0
    i32.load offset=4
    drop
    global.get $tests/comptroller/comptroller.test/expectedReserveFactorMantissa
    i64.extend_i32_u
    local.set 3
    i32.const 16
    i32.const 21
    call $~lib/rt/stub/__new
    local.tee 1
    i32.const 4
    i32.store
    local.get 1
    local.get 3
    i64.store offset=8
    local.get 0
    i32.load offset=4
    local.get 1
    i32.store
    local.get 2
    local.get 0
    call $~lib/matchstick-as/assembly/index/MockedFunction#returns
    global.get $tests/comptroller/comptroller.test/movrMarketAddress
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.stringToH160
    local.set 0
    i32.const 8
    i32.const 28
    call $~lib/rt/stub/__new
    i32.const 18944
    local.get 0
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.SmartContract#constructor
    i32.const 19184
    i32.const 19248
    i32.const 0
    i32.const 22
    i32.const 19344
    call $~lib/rt/__newArray
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.SmartContract#call
    i32.const 0
    call $~lib/array/Array<~lib/string/String>#__get
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value#toBigInt
    local.set 0
    global.get $tests/comptroller/comptroller.test/expectedReserveFactorMantissa
    local.get 0
    call $~lib/matchstick-as/assembly/assert/assert.bigIntEquals)
  (func $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value#toString (type 0) (param i32) (result i32)
    local.get 0
    i32.load
    i32.const 6
    i32.ne
    if  ;; label = @1
      i32.const 19696
      i32.const 15312
      i32.const 88
      i32.const 7
      call $~lib/builtins/abort
      unreachable
    end
    local.get 0
    i64.load offset=8
    i32.wrap_i64)
  (func $~lib/matchstick-as/assembly/assert/assert.stringEquals (type 1) (param i32 i32)
    (local i64)
    local.get 0
    i64.extend_i32_u
    local.set 2
    i32.const 16
    i32.const 21
    call $~lib/rt/stub/__new
    local.tee 0
    i32.const 6
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
    i32.const 6
    i32.store
    local.get 1
    local.get 2
    i64.store offset=8
    local.get 0
    local.get 1
    call $~lib/matchstick-as/assembly/assert/_assert.equals
    i32.eqz
    if  ;; label = @1
      i32.const 16368
      i32.const 16432
      i32.const 19
      i32.const 7
      call $~lib/builtins/abort
      unreachable
    end)
  (func $start:tests/comptroller/comptroller.test~anonymous|1~anonymous|8 (type 2)
    (local i32 i32 i32)
    global.get $tests/comptroller/comptroller.test/movrMarketAddress
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.stringToH160
    i32.const 19568
    i32.const 19600
    call $~lib/matchstick-as/assembly/index/createMockedFunction
    local.set 2
    i32.const 1
    i32.const 22
    i32.const 0
    call $~lib/rt/__newArray
    local.tee 0
    i32.load offset=4
    drop
    i32.const 16
    i32.const 21
    call $~lib/rt/stub/__new
    local.tee 1
    i32.const 6
    i32.store
    local.get 1
    i64.const 19520
    i64.store offset=8
    local.get 0
    i32.load offset=4
    local.get 1
    i32.store
    local.get 2
    local.get 0
    call $~lib/matchstick-as/assembly/index/MockedFunction#returns
    global.get $tests/comptroller/comptroller.test/movrMarketAddress
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.stringToH160
    local.set 0
    i32.const 19520
    i32.const 8
    i32.const 28
    call $~lib/rt/stub/__new
    i32.const 18944
    local.get 0
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.SmartContract#constructor
    i32.const 19568
    i32.const 19600
    i32.const 0
    i32.const 22
    i32.const 19664
    call $~lib/rt/__newArray
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.SmartContract#call
    i32.const 0
    call $~lib/array/Array<~lib/string/String>#__get
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value#toString
    call $~lib/matchstick-as/assembly/assert/assert.stringEquals)
  (func $start:tests/comptroller/comptroller.test~anonymous|1~anonymous|9 (type 2)
    (local i32 i32 i32)
    global.get $tests/comptroller/comptroller.test/movrMarketAddress
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.stringToH160
    i32.const 19936
    i32.const 19968
    call $~lib/matchstick-as/assembly/index/createMockedFunction
    local.set 2
    i32.const 1
    i32.const 22
    i32.const 0
    call $~lib/rt/__newArray
    local.tee 0
    i32.load offset=4
    drop
    i32.const 16
    i32.const 21
    call $~lib/rt/stub/__new
    local.tee 1
    i32.const 6
    i32.store
    local.get 1
    i64.const 14112
    i64.store offset=8
    local.get 0
    i32.load offset=4
    local.get 1
    i32.store
    local.get 2
    local.get 0
    call $~lib/matchstick-as/assembly/index/MockedFunction#returns
    global.get $tests/comptroller/comptroller.test/movrMarketAddress
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.stringToH160
    local.set 0
    i32.const 14112
    i32.const 8
    i32.const 28
    call $~lib/rt/stub/__new
    i32.const 18944
    local.get 0
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.SmartContract#constructor
    i32.const 19936
    i32.const 19968
    i32.const 0
    i32.const 22
    i32.const 20032
    call $~lib/rt/__newArray
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.SmartContract#call
    i32.const 0
    call $~lib/array/Array<~lib/string/String>#__get
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value#toString
    call $~lib/matchstick-as/assembly/assert/assert.stringEquals)
  (func $generated/Comptroller/PriceOracle/PriceOracle#getFeed (type 3) (param i32 i32) (result i32)
    (local i32 i64)
    i32.const 1
    i32.const 22
    i32.const 0
    call $~lib/rt/__newArray
    local.tee 2
    i32.load offset=4
    drop
    local.get 1
    i64.extend_i32_u
    local.set 3
    i32.const 16
    i32.const 21
    call $~lib/rt/stub/__new
    local.tee 1
    i32.const 6
    i32.store
    local.get 1
    local.get 3
    i64.store offset=8
    local.get 2
    i32.load offset=4
    local.get 1
    i32.store
    local.get 0
    i32.const 20272
    i32.const 20320
    local.get 2
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.SmartContract#call
    i32.const 0
    call $~lib/array/Array<~lib/string/String>#__get
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value#toAddress)
  (func $start:tests/comptroller/comptroller.test~anonymous|1~anonymous|10 (type 2)
    (local i32 i32 i32)
    global.get $tests/comptroller/comptroller.test/expectedPriceOracle
    i32.const 20272
    i32.const 20320
    call $~lib/matchstick-as/assembly/index/createMockedFunction
    local.set 2
    i32.const 1
    i32.const 22
    i32.const 0
    call $~lib/rt/__newArray
    local.tee 0
    i32.load offset=4
    drop
    i32.const 16
    i32.const 21
    call $~lib/rt/stub/__new
    local.tee 1
    i32.const 6
    i32.store
    local.get 1
    i64.const 14112
    i64.store offset=8
    local.get 0
    i32.load offset=4
    local.get 1
    i32.store
    local.get 2
    local.get 0
    call $~lib/matchstick-as/assembly/index/MockedFunction#withArgs
    local.set 1
    i32.const 1
    i32.const 22
    i32.const 0
    call $~lib/rt/__newArray
    local.tee 0
    i32.load offset=4
    drop
    global.get $tests/comptroller/comptroller.test/expectedMovrFeed
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.stringToH160
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value.fromAddress
    local.set 2
    local.get 0
    i32.load offset=4
    local.get 2
    i32.store
    local.get 1
    local.get 0
    call $~lib/matchstick-as/assembly/index/MockedFunction#returns
    global.get $tests/comptroller/comptroller.test/expectedPriceOracle
    i32.const 20272
    i32.const 20320
    call $~lib/matchstick-as/assembly/index/createMockedFunction
    local.set 2
    i32.const 1
    i32.const 22
    i32.const 0
    call $~lib/rt/__newArray
    local.tee 0
    i32.load offset=4
    drop
    i32.const 16
    i32.const 21
    call $~lib/rt/stub/__new
    local.tee 1
    i32.const 6
    i32.store
    local.get 1
    i64.const 20400
    i64.store offset=8
    local.get 0
    i32.load offset=4
    local.get 1
    i32.store
    local.get 2
    local.get 0
    call $~lib/matchstick-as/assembly/index/MockedFunction#withArgs
    local.set 1
    i32.const 1
    i32.const 22
    i32.const 0
    call $~lib/rt/__newArray
    local.tee 0
    i32.load offset=4
    drop
    global.get $tests/comptroller/comptroller.test/expectedXcksmFeed
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.stringToH160
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value.fromAddress
    local.set 2
    local.get 0
    i32.load offset=4
    local.get 2
    i32.store
    local.get 1
    local.get 0
    call $~lib/matchstick-as/assembly/index/MockedFunction#returns
    global.get $tests/comptroller/comptroller.test/expectedPriceOracle
    local.set 0
    i32.const 8
    i32.const 29
    call $~lib/rt/stub/__new
    i32.const 20432
    local.get 0
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.SmartContract#constructor
    local.tee 0
    i32.const 14112
    call $generated/Comptroller/PriceOracle/PriceOracle#getFeed
    local.set 1
    global.get $tests/comptroller/comptroller.test/expectedMovrFeed
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.stringToH160
    local.get 1
    call $~lib/matchstick-as/assembly/assert/assert.addressEquals
    local.get 0
    i32.const 20400
    call $generated/Comptroller/PriceOracle/PriceOracle#getFeed
    local.set 0
    global.get $tests/comptroller/comptroller.test/expectedXcksmFeed
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.stringToH160
    local.get 0
    call $~lib/matchstick-as/assembly/assert/assert.addressEquals)
  (func $start:tests/comptroller/comptroller.test~anonymous|1~anonymous|11 (type 2)
    (local i32 i32 i32)
    global.get $tests/comptroller/comptroller.test/expectedPriceOracle
    i32.const 20688
    i32.const 20736
    call $~lib/matchstick-as/assembly/index/createMockedFunction
    local.set 1
    i32.const 1
    i32.const 22
    i32.const 0
    call $~lib/rt/__newArray
    local.tee 0
    i32.load offset=4
    drop
    global.get $tests/comptroller/comptroller.test/expectedMovrAggregator
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.stringToH160
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value.fromAddress
    local.set 2
    local.get 0
    i32.load offset=4
    local.get 2
    i32.store
    local.get 1
    local.get 0
    call $~lib/matchstick-as/assembly/index/MockedFunction#returns
    global.get $tests/comptroller/comptroller.test/expectedMovrFeed
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.stringToH160
    i32.const 20688
    i32.const 20736
    call $~lib/matchstick-as/assembly/index/createMockedFunction
    local.set 1
    i32.const 1
    i32.const 22
    i32.const 0
    call $~lib/rt/__newArray
    local.tee 0
    i32.load offset=4
    drop
    global.get $tests/comptroller/comptroller.test/expectedMovrAggregator
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.stringToH160
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value.fromAddress
    local.set 2
    local.get 0
    i32.load offset=4
    local.get 2
    i32.store
    local.get 1
    local.get 0
    call $~lib/matchstick-as/assembly/index/MockedFunction#returns
    global.get $tests/comptroller/comptroller.test/expectedXcksmFeed
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.stringToH160
    i32.const 20688
    i32.const 20736
    call $~lib/matchstick-as/assembly/index/createMockedFunction
    local.set 1
    i32.const 1
    i32.const 22
    i32.const 0
    call $~lib/rt/__newArray
    local.tee 0
    i32.load offset=4
    drop
    global.get $tests/comptroller/comptroller.test/expectedXcksmAggregator
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.stringToH160
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value.fromAddress
    local.set 2
    local.get 0
    i32.load offset=4
    local.get 2
    i32.store
    local.get 1
    local.get 0
    call $~lib/matchstick-as/assembly/index/MockedFunction#returns
    global.get $tests/comptroller/comptroller.test/expectedPriceOracle
    local.set 0
    i32.const 8
    i32.const 30
    call $~lib/rt/stub/__new
    i32.const 20800
    local.get 0
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.SmartContract#constructor
    i32.const 20688
    i32.const 20736
    i32.const 0
    i32.const 22
    i32.const 20848
    call $~lib/rt/__newArray
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.SmartContract#call
    i32.const 0
    call $~lib/array/Array<~lib/string/String>#__get
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value#toAddress
    local.set 0
    global.get $tests/comptroller/comptroller.test/expectedMovrAggregator
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.stringToH160
    local.get 0
    call $~lib/matchstick-as/assembly/assert/assert.addressEquals
    global.get $tests/comptroller/comptroller.test/expectedXcksmFeed
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.stringToH160
    local.set 0
    i32.const 8
    i32.const 30
    call $~lib/rt/stub/__new
    i32.const 20800
    local.get 0
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.SmartContract#constructor
    i32.const 20688
    i32.const 20736
    i32.const 0
    i32.const 22
    i32.const 20848
    call $~lib/rt/__newArray
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.SmartContract#call
    i32.const 0
    call $~lib/array/Array<~lib/string/String>#__get
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value#toAddress
    local.set 0
    global.get $tests/comptroller/comptroller.test/expectedXcksmAggregator
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.stringToH160
    local.get 0
    call $~lib/matchstick-as/assembly/assert/assert.addressEquals)
  (func $start:tests/comptroller/comptroller.test~anonymous|1~anonymous|12 (type 2)
    (local i32 i32 i32)
    global.get $tests/comptroller/comptroller.test/xcksmMarketAddress
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.stringToH160
    i32.const 18800
    i32.const 18864
    call $~lib/matchstick-as/assembly/index/createMockedFunction
    local.set 1
    i32.const 1
    i32.const 22
    i32.const 0
    call $~lib/rt/__newArray
    local.tee 0
    i32.load offset=4
    drop
    global.get $tests/comptroller/comptroller.test/expectedInterestRateModel
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.stringToH160
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value.fromAddress
    local.set 2
    local.get 0
    i32.load offset=4
    local.get 2
    i32.store
    local.get 1
    local.get 0
    call $~lib/matchstick-as/assembly/index/MockedFunction#returns
    global.get $tests/comptroller/comptroller.test/xcksmMarketAddress
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.stringToH160
    local.set 0
    i32.const 8
    i32.const 28
    call $~lib/rt/stub/__new
    i32.const 18944
    local.get 0
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.SmartContract#constructor
    i32.const 18800
    i32.const 18864
    i32.const 0
    i32.const 22
    i32.const 18976
    call $~lib/rt/__newArray
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.SmartContract#call
    i32.const 0
    call $~lib/array/Array<~lib/string/String>#__get
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value#toAddress
    local.set 0
    global.get $tests/comptroller/comptroller.test/expectedInterestRateModel
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.stringToH160
    local.get 0
    call $~lib/matchstick-as/assembly/assert/assert.addressEquals)
  (func $start:tests/comptroller/comptroller.test~anonymous|1~anonymous|13 (type 2)
    (local i32 i32 i32 i64)
    global.get $tests/comptroller/comptroller.test/xcksmMarketAddress
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.stringToH160
    i32.const 19184
    i32.const 19248
    call $~lib/matchstick-as/assembly/index/createMockedFunction
    local.set 2
    i32.const 1
    i32.const 22
    i32.const 0
    call $~lib/rt/__newArray
    local.tee 0
    i32.load offset=4
    drop
    global.get $tests/comptroller/comptroller.test/expectedReserveFactorMantissa
    i64.extend_i32_u
    local.set 3
    i32.const 16
    i32.const 21
    call $~lib/rt/stub/__new
    local.tee 1
    i32.const 4
    i32.store
    local.get 1
    local.get 3
    i64.store offset=8
    local.get 0
    i32.load offset=4
    local.get 1
    i32.store
    local.get 2
    local.get 0
    call $~lib/matchstick-as/assembly/index/MockedFunction#returns
    global.get $tests/comptroller/comptroller.test/xcksmMarketAddress
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.stringToH160
    local.set 0
    i32.const 8
    i32.const 28
    call $~lib/rt/stub/__new
    i32.const 18944
    local.get 0
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.SmartContract#constructor
    i32.const 19184
    i32.const 19248
    i32.const 0
    i32.const 22
    i32.const 19344
    call $~lib/rt/__newArray
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.SmartContract#call
    i32.const 0
    call $~lib/array/Array<~lib/string/String>#__get
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value#toBigInt
    local.set 0
    global.get $tests/comptroller/comptroller.test/expectedReserveFactorMantissa
    local.get 0
    call $~lib/matchstick-as/assembly/assert/assert.bigIntEquals)
  (func $start:tests/comptroller/comptroller.test~anonymous|1~anonymous|14 (type 2)
    (local i32 i32 i32)
    global.get $tests/comptroller/comptroller.test/xcksmMarketAddress
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.stringToH160
    i32.const 19568
    i32.const 19600
    call $~lib/matchstick-as/assembly/index/createMockedFunction
    local.set 2
    i32.const 1
    i32.const 22
    i32.const 0
    call $~lib/rt/__newArray
    local.tee 0
    i32.load offset=4
    drop
    i32.const 16
    i32.const 21
    call $~lib/rt/stub/__new
    local.tee 1
    i32.const 6
    i32.store
    local.get 1
    i64.const 21376
    i64.store offset=8
    local.get 0
    i32.load offset=4
    local.get 1
    i32.store
    local.get 2
    local.get 0
    call $~lib/matchstick-as/assembly/index/MockedFunction#returns
    global.get $tests/comptroller/comptroller.test/xcksmMarketAddress
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.stringToH160
    local.set 0
    i32.const 21376
    i32.const 8
    i32.const 28
    call $~lib/rt/stub/__new
    i32.const 18944
    local.get 0
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.SmartContract#constructor
    i32.const 19568
    i32.const 19600
    i32.const 0
    i32.const 22
    i32.const 19664
    call $~lib/rt/__newArray
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.SmartContract#call
    i32.const 0
    call $~lib/array/Array<~lib/string/String>#__get
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value#toString
    call $~lib/matchstick-as/assembly/assert/assert.stringEquals)
  (func $start:tests/comptroller/comptroller.test~anonymous|1~anonymous|15 (type 2)
    (local i32 i32 i32)
    global.get $tests/comptroller/comptroller.test/xcksmMarketAddress
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.stringToH160
    i32.const 19936
    i32.const 19968
    call $~lib/matchstick-as/assembly/index/createMockedFunction
    local.set 2
    i32.const 1
    i32.const 22
    i32.const 0
    call $~lib/rt/__newArray
    local.tee 0
    i32.load offset=4
    drop
    i32.const 16
    i32.const 21
    call $~lib/rt/stub/__new
    local.tee 1
    i32.const 6
    i32.store
    local.get 1
    i64.const 14368
    i64.store offset=8
    local.get 0
    i32.load offset=4
    local.get 1
    i32.store
    local.get 2
    local.get 0
    call $~lib/matchstick-as/assembly/index/MockedFunction#returns
    global.get $tests/comptroller/comptroller.test/xcksmMarketAddress
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.stringToH160
    local.set 0
    i32.const 14368
    i32.const 8
    i32.const 28
    call $~lib/rt/stub/__new
    i32.const 18944
    local.get 0
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.SmartContract#constructor
    i32.const 19936
    i32.const 19968
    i32.const 0
    i32.const 22
    i32.const 20032
    call $~lib/rt/__newArray
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.SmartContract#call
    i32.const 0
    call $~lib/array/Array<~lib/string/String>#__get
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value#toString
    call $~lib/matchstick-as/assembly/assert/assert.stringEquals)
  (func $start:tests/comptroller/comptroller.test~anonymous|1~anonymous|16 (type 2)
    (local i32 i32 i32 i32)
    i32.const 14256
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.stringToH160
    local.set 1
    global.get $tests/comptroller/comptroller.test/xcksmMarketAddress
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.stringToH160
    i32.const 21744
    i32.const 21792
    call $~lib/matchstick-as/assembly/index/createMockedFunction
    local.set 2
    i32.const 1
    i32.const 22
    i32.const 0
    call $~lib/rt/__newArray
    local.tee 0
    i32.load offset=4
    drop
    local.get 1
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value.fromAddress
    local.set 3
    local.get 0
    i32.load offset=4
    local.get 3
    i32.store
    local.get 2
    local.get 0
    call $~lib/matchstick-as/assembly/index/MockedFunction#returns
    global.get $tests/comptroller/comptroller.test/xcksmMarketAddress
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.stringToH160
    local.set 0
    local.get 1
    i32.const 8
    i32.const 28
    call $~lib/rt/stub/__new
    i32.const 18944
    local.get 0
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.SmartContract#constructor
    i32.const 21744
    i32.const 21792
    i32.const 0
    i32.const 22
    i32.const 21856
    call $~lib/rt/__newArray
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.SmartContract#call
    i32.const 0
    call $~lib/array/Array<~lib/string/String>#__get
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value#toAddress
    call $~lib/matchstick-as/assembly/assert/assert.addressEquals)
  (func $~lib/typedarray/Uint8Array#__get (type 3) (param i32 i32) (result i32)
    local.get 1
    local.get 0
    i32.load offset=8
    i32.ge_u
    if  ;; label = @1
      i32.const 2000
      i32.const 2064
      i32.const 164
      i32.const 45
      call $~lib/builtins/abort
      unreachable
    end
    local.get 1
    local.get 0
    i32.load offset=4
    i32.add
    i32.load8_u)
  (func $~lib/@graphprotocol/graph-ts/common/collections/ByteArray#toI32 (type 0) (param i32) (result i32)
    (local i32 i32 i32)
    i32.const 255
    i32.const 0
    local.get 0
    i32.load offset=8
    i32.const 0
    i32.gt_s
    local.tee 2
    if (result i32)  ;; label = @1
      local.get 0
      local.get 0
      i32.load offset=8
      i32.const 1
      i32.sub
      call $~lib/typedarray/Uint8Array#__get
      i32.const 7
      i32.shr_u
      i32.const 1
      i32.eq
    else
      local.get 2
    end
    select
    local.set 2
    i32.const 4
    local.set 1
    loop  ;; label = @1
      local.get 1
      local.get 0
      i32.load offset=8
      i32.lt_s
      if  ;; label = @2
        local.get 0
        local.get 1
        call $~lib/typedarray/Uint8Array#__get
        local.get 2
        i32.ne
        if  ;; label = @3
          i32.const 22224
          local.get 0
          call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.bytesToHex
          call $~lib/string/String#concat
          i32.const 22288
          call $~lib/string/String#concat
          i32.const 22336
          i32.const 150
          i32.const 9
          call $~lib/builtins/abort
          unreachable
        end
        local.get 1
        i32.const 1
        i32.add
        local.set 1
        br 1 (;@1;)
      end
    end
    i32.const 12
    i32.const 11
    call $~lib/rt/stub/__new
    i32.const 4
    call $~lib/@graphprotocol/graph-ts/common/collections/ByteArray#constructor
    local.tee 1
    i32.const 0
    local.get 2
    call $~lib/typedarray/Uint8Array#__set
    local.get 1
    i32.const 1
    local.get 2
    call $~lib/typedarray/Uint8Array#__set
    local.get 1
    i32.const 2
    local.get 2
    call $~lib/typedarray/Uint8Array#__set
    local.get 1
    i32.const 3
    local.get 2
    call $~lib/typedarray/Uint8Array#__set
    local.get 1
    local.get 0
    local.get 1
    i32.load offset=8
    local.get 0
    i32.load offset=8
    i32.lt_s
    select
    i32.load offset=8
    local.set 2
    loop  ;; label = @1
      local.get 2
      local.get 3
      i32.gt_s
      if  ;; label = @2
        local.get 1
        local.get 3
        local.get 0
        local.get 3
        call $~lib/typedarray/Uint8Array#__get
        call $~lib/typedarray/Uint8Array#__set
        local.get 3
        i32.const 1
        i32.add
        local.set 3
        br 1 (;@1;)
      end
    end
    local.get 1
    i32.const 3
    call $~lib/typedarray/Uint8Array#__get
    i32.const 8
    i32.shl
    local.get 1
    i32.const 2
    call $~lib/typedarray/Uint8Array#__get
    i32.or
    i32.const 8
    i32.shl
    local.get 1
    i32.const 1
    call $~lib/typedarray/Uint8Array#__get
    i32.or
    i32.const 8
    i32.shl
    local.get 1
    i32.const 0
    call $~lib/typedarray/Uint8Array#__get
    i32.or)
  (func $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value#toI32 (type 0) (param i32) (result i32)
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
      i32.const 18112
      i32.const 15312
      i32.const 71
      i32.const 7
      call $~lib/builtins/abort
      unreachable
    end
    local.get 0
    i64.load offset=8
    i32.wrap_i64
    call $~lib/@graphprotocol/graph-ts/common/collections/ByteArray#toI32)
  (func $~lib/matchstick-as/assembly/assert/assert.i32Equals (type 1) (param i32 i32)
    local.get 0
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value.fromI32
    local.get 1
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value.fromI32
    call $~lib/matchstick-as/assembly/assert/_assert.equals
    i32.eqz
    if  ;; label = @1
      i32.const 16368
      i32.const 16432
      i32.const 19
      i32.const 7
      call $~lib/builtins/abort
      unreachable
    end)
  (func $start:tests/comptroller/comptroller.test~anonymous|1~anonymous|17 (type 2)
    (local i32 i32 i32)
    global.get $tests/comptroller/comptroller.test/xcksmContractAddress
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.stringToH160
    i32.const 22048
    i32.const 22096
    call $~lib/matchstick-as/assembly/index/createMockedFunction
    local.set 1
    i32.const 1
    i32.const 22
    i32.const 0
    call $~lib/rt/__newArray
    local.tee 0
    i32.load offset=4
    drop
    i32.const 12
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value.fromI32
    local.set 2
    local.get 0
    i32.load offset=4
    local.get 2
    i32.store
    local.get 1
    local.get 0
    call $~lib/matchstick-as/assembly/index/MockedFunction#returns
    global.get $tests/comptroller/comptroller.test/xcksmContractAddress
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.stringToH160
    local.set 0
    i32.const 12
    i32.const 8
    i32.const 31
    call $~lib/rt/stub/__new
    i32.const 22160
    local.get 0
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.SmartContract#constructor
    i32.const 22048
    i32.const 22096
    i32.const 0
    i32.const 22
    i32.const 22192
    call $~lib/rt/__newArray
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.SmartContract#call
    i32.const 0
    call $~lib/array/Array<~lib/string/String>#__get
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value#toI32
    call $~lib/matchstick-as/assembly/assert/assert.i32Equals)
  (func $start:tests/comptroller/comptroller.test~anonymous|1~anonymous|18 (type 2)
    (local i32 i32 i32)
    global.get $tests/comptroller/comptroller.test/xcksmContractAddress
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.stringToH160
    i32.const 19568
    i32.const 19600
    call $~lib/matchstick-as/assembly/index/createMockedFunction
    local.set 2
    i32.const 1
    i32.const 22
    i32.const 0
    call $~lib/rt/__newArray
    local.tee 0
    i32.load offset=4
    drop
    i32.const 16
    i32.const 21
    call $~lib/rt/stub/__new
    local.tee 1
    i32.const 6
    i32.store
    local.get 1
    i64.const 20400
    i64.store offset=8
    local.get 0
    i32.load offset=4
    local.get 1
    i32.store
    local.get 2
    local.get 0
    call $~lib/matchstick-as/assembly/index/MockedFunction#returns
    global.get $tests/comptroller/comptroller.test/xcksmContractAddress
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.stringToH160
    local.set 0
    i32.const 20400
    i32.const 8
    i32.const 31
    call $~lib/rt/stub/__new
    i32.const 22160
    local.get 0
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.SmartContract#constructor
    i32.const 19568
    i32.const 19600
    i32.const 0
    i32.const 22
    i32.const 22624
    call $~lib/rt/__newArray
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.SmartContract#call
    i32.const 0
    call $~lib/array/Array<~lib/string/String>#__get
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value#toString
    call $~lib/matchstick-as/assembly/assert/assert.stringEquals)
  (func $start:tests/comptroller/comptroller.test~anonymous|1~anonymous|19 (type 2)
    (local i32 i32 i32)
    global.get $tests/comptroller/comptroller.test/xcksmContractAddress
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.stringToH160
    i32.const 19936
    i32.const 19968
    call $~lib/matchstick-as/assembly/index/createMockedFunction
    local.set 2
    i32.const 1
    i32.const 22
    i32.const 0
    call $~lib/rt/__newArray
    local.tee 0
    i32.load offset=4
    drop
    i32.const 16
    i32.const 21
    call $~lib/rt/stub/__new
    local.tee 1
    i32.const 6
    i32.store
    local.get 1
    i64.const 20400
    i64.store offset=8
    local.get 0
    i32.load offset=4
    local.get 1
    i32.store
    local.get 2
    local.get 0
    call $~lib/matchstick-as/assembly/index/MockedFunction#returns
    global.get $tests/comptroller/comptroller.test/xcksmContractAddress
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.stringToH160
    local.set 0
    i32.const 20400
    i32.const 8
    i32.const 31
    call $~lib/rt/stub/__new
    i32.const 22160
    local.get 0
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.SmartContract#constructor
    i32.const 19936
    i32.const 19968
    i32.const 0
    i32.const 22
    i32.const 22816
    call $~lib/rt/__newArray
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.SmartContract#call
    i32.const 0
    call $~lib/array/Array<~lib/string/String>#__get
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value#toString
    call $~lib/matchstick-as/assembly/assert/assert.stringEquals)
  (func $start:tests/comptroller/comptroller.test~anonymous|1 (type 2)
    i32.const 14784
    i32.load
    i32.const 14816
    call $~lib/matchstick-as/assembly/index/_registerHook
    i32.const 14864
    i32.const 0
    i32.const 16528
    i32.load
    call $~lib/matchstick-as/assembly/index/_registerTest
    i32.const 16560
    i32.const 0
    i32.const 16896
    i32.load
    call $~lib/matchstick-as/assembly/index/_registerTest
    i32.const 16928
    i32.const 0
    i32.const 17648
    i32.load
    call $~lib/matchstick-as/assembly/index/_registerTest
    i32.const 17680
    i32.const 0
    i32.const 18208
    i32.load
    call $~lib/matchstick-as/assembly/index/_registerTest
    i32.const 18240
    i32.const 0
    i32.const 18624
    i32.load
    call $~lib/matchstick-as/assembly/index/_registerTest
    i32.const 18656
    i32.const 0
    i32.const 19008
    i32.load
    call $~lib/matchstick-as/assembly/index/_registerTest
    i32.const 19040
    i32.const 0
    i32.const 19376
    i32.load
    call $~lib/matchstick-as/assembly/index/_registerTest
    i32.const 19408
    i32.const 0
    i32.const 19792
    i32.load
    call $~lib/matchstick-as/assembly/index/_registerTest
    i32.const 19824
    i32.const 0
    i32.const 20064
    i32.load
    call $~lib/matchstick-as/assembly/index/_registerTest
    i32.const 20096
    i32.const 0
    i32.const 20480
    i32.load
    call $~lib/matchstick-as/assembly/index/_registerTest
    i32.const 20512
    i32.const 0
    i32.const 20880
    i32.load
    call $~lib/matchstick-as/assembly/index/_registerTest
    i32.const 20912
    i32.const 0
    i32.const 21056
    i32.load
    call $~lib/matchstick-as/assembly/index/_registerTest
    i32.const 21088
    i32.const 0
    i32.const 21232
    i32.load
    call $~lib/matchstick-as/assembly/index/_registerTest
    i32.const 21264
    i32.const 0
    i32.const 21440
    i32.load
    call $~lib/matchstick-as/assembly/index/_registerTest
    i32.const 21472
    i32.const 0
    i32.const 21584
    i32.load
    call $~lib/matchstick-as/assembly/index/_registerTest
    i32.const 21616
    i32.const 0
    i32.const 21888
    i32.load
    call $~lib/matchstick-as/assembly/index/_registerTest
    i32.const 21920
    i32.const 0
    i32.const 22464
    i32.load
    call $~lib/matchstick-as/assembly/index/_registerTest
    i32.const 22496
    i32.const 0
    i32.const 22656
    i32.load
    call $~lib/matchstick-as/assembly/index/_registerTest
    i32.const 22688
    i32.const 0
    i32.const 22848
    i32.load
    call $~lib/matchstick-as/assembly/index/_registerTest)
  (func $~lib/string/String.__eq (type 3) (param i32 i32) (result i32)
    (local i32 i32 i32)
    local.get 0
    local.get 1
    i32.eq
    if  ;; label = @1
      i32.const 1
      return
    end
    local.get 1
    i32.const 0
    local.get 0
    select
    i32.eqz
    if  ;; label = @1
      i32.const 0
      return
    end
    local.get 0
    i32.const 20
    i32.sub
    i32.load offset=16
    i32.const 1
    i32.shr_u
    local.tee 4
    local.get 1
    i32.const 20
    i32.sub
    i32.load offset=16
    i32.const 1
    i32.shr_u
    i32.ne
    if  ;; label = @1
      i32.const 0
      return
    end
    block (result i32)  ;; label = @1
      local.get 0
      local.set 2
      local.get 1
      local.set 3
      local.get 2
      i32.const 7
      i32.and
      local.get 3
      i32.const 7
      i32.and
      i32.or
      i32.const 1
      local.get 4
      local.tee 0
      i32.const 4
      i32.ge_u
      select
      i32.eqz
      if  ;; label = @2
        loop  ;; label = @3
          local.get 2
          i64.load
          local.get 3
          i64.load
          i64.eq
          if  ;; label = @4
            local.get 2
            i32.const 8
            i32.add
            local.set 2
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
            br_if 1 (;@3;)
          end
        end
      end
      loop  ;; label = @2
        local.get 0
        local.tee 1
        i32.const 1
        i32.sub
        local.set 0
        local.get 1
        if  ;; label = @3
          local.get 2
          i32.load16_u
          local.tee 1
          local.get 3
          i32.load16_u
          local.tee 4
          i32.ne
          if  ;; label = @4
            local.get 1
            local.get 4
            i32.sub
            br 3 (;@1;)
          end
          local.get 2
          i32.const 2
          i32.add
          local.set 2
          local.get 3
          i32.const 2
          i32.add
          local.set 3
          br 1 (;@2;)
        end
      end
      i32.const 0
    end
    i32.eqz)
  (func $~lib/array/Array<~lib/@graphprotocol/graph-ts/common/collections/TypedMapEntry<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>>#push (type 1) (param i32 i32)
    (local i32 i32)
    local.get 0
    local.get 0
    i32.load offset=12
    local.tee 2
    i32.const 1
    i32.add
    local.tee 3
    call $~lib/array/ensureCapacity
    local.get 0
    i32.load offset=4
    local.get 2
    i32.const 2
    i32.shl
    i32.add
    local.get 1
    i32.store
    local.get 0
    local.get 3
    i32.store offset=12)
  (func $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#set (type 4) (param i32 i32 i32)
    (local i32 i32)
    block (result i32)  ;; label = @1
      local.get 0
      local.set 3
      loop  ;; label = @2
        local.get 4
        local.get 3
        i32.load
        i32.load offset=12
        i32.lt_s
        if  ;; label = @3
          local.get 3
          i32.load
          local.get 4
          call $~lib/array/Array<~lib/string/String>#__get
          i32.load
          local.get 1
          call $~lib/string/String.__eq
          if  ;; label = @4
            local.get 3
            i32.load
            local.get 4
            call $~lib/array/Array<~lib/string/String>#__get
            br 3 (;@1;)
          end
          local.get 4
          i32.const 1
          i32.add
          local.set 4
          br 1 (;@2;)
        end
      end
      i32.const 0
    end
    local.tee 3
    if  ;; label = @1
      local.get 3
      local.get 2
      i32.store offset=4
    else
      i32.const 8
      i32.const 8
      call $~lib/rt/stub/__new
      local.tee 3
      i32.const 0
      i32.store
      local.get 3
      i32.const 0
      i32.store offset=4
      local.get 3
      local.get 1
      i32.store
      local.get 3
      local.get 2
      i32.store offset=4
      local.get 0
      i32.load
      local.get 3
      call $~lib/array/Array<~lib/@graphprotocol/graph-ts/common/collections/TypedMapEntry<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>>#push
    end)
  (func $~lib/util/number/genDigits (type 13) (param i64 i32 i64 i32 i64 i32) (result i32)
    (local i64 i64 i64 i64 i32 i32)
    local.get 2
    local.get 0
    i64.sub
    local.set 7
    local.get 2
    i64.const 1
    i32.const 0
    local.get 3
    i32.sub
    local.tee 11
    i64.extend_i32_s
    local.tee 0
    i64.shl
    local.tee 8
    i64.const 1
    i64.sub
    local.tee 9
    i64.and
    local.set 6
    local.get 2
    local.get 0
    i64.shr_u
    i32.wrap_i64
    local.tee 1
    local.set 3
    local.get 1
    i32.const 100000
    i32.lt_u
    if (result i32)  ;; label = @1
      local.get 3
      i32.const 100
      i32.lt_u
      if (result i32)  ;; label = @2
        local.get 3
        i32.const 10
        i32.ge_u
        i32.const 1
        i32.add
      else
        local.get 3
        i32.const 10000
        i32.ge_u
        i32.const 3
        i32.add
        local.get 3
        i32.const 1000
        i32.ge_u
        i32.add
      end
    else
      local.get 3
      i32.const 10000000
      i32.lt_u
      if (result i32)  ;; label = @2
        local.get 3
        i32.const 1000000
        i32.ge_u
        i32.const 6
        i32.add
      else
        local.get 3
        i32.const 1000000000
        i32.ge_u
        i32.const 8
        i32.add
        local.get 3
        i32.const 100000000
        i32.ge_u
        i32.add
      end
    end
    local.set 10
    loop  ;; label = @1
      local.get 10
      i32.const 0
      i32.gt_s
      if  ;; label = @2
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
                                local.get 10
                                i32.const 1
                                i32.sub
                                br_table 9 (;@5;) 8 (;@6;) 7 (;@7;) 6 (;@8;) 5 (;@9;) 4 (;@10;) 3 (;@11;) 2 (;@12;) 1 (;@13;) 0 (;@14;) 10 (;@4;)
                              end
                              local.get 1
                              i32.const 1000000000
                              i32.div_u
                              local.set 3
                              local.get 1
                              i32.const 1000000000
                              i32.rem_u
                              local.set 1
                              br 10 (;@3;)
                            end
                            local.get 1
                            i32.const 100000000
                            i32.div_u
                            local.set 3
                            local.get 1
                            i32.const 100000000
                            i32.rem_u
                            local.set 1
                            br 9 (;@3;)
                          end
                          local.get 1
                          i32.const 10000000
                          i32.div_u
                          local.set 3
                          local.get 1
                          i32.const 10000000
                          i32.rem_u
                          local.set 1
                          br 8 (;@3;)
                        end
                        local.get 1
                        i32.const 1000000
                        i32.div_u
                        local.set 3
                        local.get 1
                        i32.const 1000000
                        i32.rem_u
                        local.set 1
                        br 7 (;@3;)
                      end
                      local.get 1
                      i32.const 100000
                      i32.div_u
                      local.set 3
                      local.get 1
                      i32.const 100000
                      i32.rem_u
                      local.set 1
                      br 6 (;@3;)
                    end
                    local.get 1
                    i32.const 10000
                    i32.div_u
                    local.set 3
                    local.get 1
                    i32.const 10000
                    i32.rem_u
                    local.set 1
                    br 5 (;@3;)
                  end
                  local.get 1
                  i32.const 1000
                  i32.div_u
                  local.set 3
                  local.get 1
                  i32.const 1000
                  i32.rem_u
                  local.set 1
                  br 4 (;@3;)
                end
                local.get 1
                i32.const 100
                i32.div_u
                local.set 3
                local.get 1
                i32.const 100
                i32.rem_u
                local.set 1
                br 3 (;@3;)
              end
              local.get 1
              i32.const 10
              i32.div_u
              local.set 3
              local.get 1
              i32.const 10
              i32.rem_u
              local.set 1
              br 2 (;@3;)
            end
            local.get 1
            local.set 3
            i32.const 0
            local.set 1
            br 1 (;@3;)
          end
          i32.const 0
          local.set 3
        end
        local.get 3
        local.get 5
        i32.or
        if  ;; label = @3
          block (result i32)  ;; label = @4
            local.get 5
            i32.const 1
            i32.shl
            i32.const 23424
            i32.add
            local.get 3
            i32.const 65535
            i32.and
            i32.const 48
            i32.add
            i32.store16
            local.get 5
            i32.const 1
            i32.add
          end
          local.set 5
        end
        local.get 10
        i32.const 1
        i32.sub
        local.set 10
        local.get 6
        local.get 1
        i64.extend_i32_u
        local.get 11
        i64.extend_i32_s
        i64.shl
        i64.add
        local.tee 0
        local.get 4
        i64.le_u
        if  ;; label = @3
          local.get 10
          global.get $~lib/util/number/_K
          i32.add
          global.set $~lib/util/number/_K
          local.get 10
          i32.const 2
          i32.shl
          i32.const 24352
          i32.add
          i64.load32_u
          local.get 11
          i64.extend_i32_s
          i64.shl
          local.set 2
          local.get 5
          i32.const 1
          i32.shl
          i32.const 23422
          i32.add
          local.tee 10
          i32.load16_u
          local.set 3
          loop  ;; label = @4
            local.get 2
            local.get 4
            local.get 0
            i64.sub
            i64.le_u
            i32.const 0
            local.get 0
            local.get 7
            i64.lt_u
            select
            if (result i32)  ;; label = @5
              i32.const 1
              local.get 7
              local.get 0
              i64.sub
              local.get 0
              local.get 2
              i64.add
              local.tee 6
              local.get 7
              i64.sub
              i64.gt_u
              local.get 6
              local.get 7
              i64.lt_u
              select
            else
              i32.const 0
            end
            if  ;; label = @5
              local.get 3
              i32.const 1
              i32.sub
              local.set 3
              local.get 0
              local.get 2
              i64.add
              local.set 0
              br 1 (;@4;)
            end
          end
          local.get 10
          local.get 3
          i32.store16
          local.get 5
          return
        end
        br 1 (;@1;)
      end
    end
    local.get 11
    i64.extend_i32_s
    local.set 0
    loop  ;; label = @1
      local.get 4
      i64.const 10
      i64.mul
      local.set 4
      local.get 6
      i64.const 10
      i64.mul
      local.tee 2
      local.get 0
      i64.shr_u
      local.tee 6
      local.get 5
      i64.extend_i32_s
      i64.or
      i64.const 0
      i64.ne
      if  ;; label = @2
        block (result i32)  ;; label = @3
          local.get 5
          i32.const 1
          i32.shl
          i32.const 23424
          i32.add
          local.get 6
          i32.wrap_i64
          i32.const 65535
          i32.and
          i32.const 48
          i32.add
          i32.store16
          local.get 5
          i32.const 1
          i32.add
        end
        local.set 5
      end
      local.get 10
      i32.const 1
      i32.sub
      local.set 10
      local.get 4
      local.get 2
      local.get 9
      i64.and
      local.tee 6
      i64.le_u
      br_if 0 (;@1;)
    end
    local.get 10
    global.get $~lib/util/number/_K
    i32.add
    global.set $~lib/util/number/_K
    local.get 6
    local.set 0
    local.get 7
    i32.const 0
    local.get 10
    i32.sub
    i32.const 2
    i32.shl
    i32.const 24352
    i32.add
    i64.load32_u
    i64.mul
    local.set 2
    local.get 5
    i32.const 1
    i32.shl
    i32.const 23422
    i32.add
    local.tee 10
    i32.load16_u
    local.set 3
    loop  ;; label = @1
      local.get 8
      local.get 4
      local.get 0
      i64.sub
      i64.le_u
      i32.const 0
      local.get 0
      local.get 2
      i64.lt_u
      select
      if (result i32)  ;; label = @2
        i32.const 1
        local.get 2
        local.get 0
        i64.sub
        local.get 0
        local.get 8
        i64.add
        local.tee 6
        local.get 2
        i64.sub
        i64.gt_u
        local.get 2
        local.get 6
        i64.gt_u
        select
      else
        i32.const 0
      end
      if  ;; label = @2
        local.get 3
        i32.const 1
        i32.sub
        local.set 3
        local.get 0
        local.get 8
        i64.add
        local.set 0
        br 1 (;@1;)
      end
    end
    local.get 10
    local.get 3
    i32.store16
    local.get 5)
  (func $~lib/util/number/utoa32_dec_lut (type 4) (param i32 i32 i32)
    (local i32)
    loop  ;; label = @1
      local.get 1
      i32.const 10000
      i32.ge_u
      if  ;; label = @2
        local.get 1
        i32.const 10000
        i32.rem_u
        local.set 3
        local.get 1
        i32.const 10000
        i32.div_u
        local.set 1
        local.get 0
        local.get 2
        i32.const 4
        i32.sub
        local.tee 2
        i32.const 1
        i32.shl
        i32.add
        local.get 3
        i32.const 100
        i32.div_u
        i32.const 2
        i32.shl
        i32.const 24392
        i32.add
        i64.load32_u
        local.get 3
        i32.const 100
        i32.rem_u
        i32.const 2
        i32.shl
        i32.const 24392
        i32.add
        i64.load32_u
        i64.const 32
        i64.shl
        i64.or
        i64.store
        br 1 (;@1;)
      end
    end
    block (result i32)  ;; label = @1
      local.get 1
      i32.const 100
      i32.ge_u
      if  ;; label = @2
        block (result i32)  ;; label = @3
          local.get 0
          local.get 2
          i32.const 2
          i32.sub
          local.tee 2
          i32.const 1
          i32.shl
          i32.add
          local.get 1
          i32.const 100
          i32.rem_u
          i32.const 2
          i32.shl
          i32.const 24392
          i32.add
          i32.load
          i32.store
          local.get 1
          i32.const 100
          i32.div_u
        end
        local.set 1
      end
      local.get 1
    end
    i32.const 10
    i32.ge_u
    if  ;; label = @1
      local.get 0
      local.get 2
      i32.const 2
      i32.sub
      i32.const 1
      i32.shl
      i32.add
      local.get 1
      i32.const 2
      i32.shl
      i32.const 24392
      i32.add
      i32.load
      i32.store
    else
      local.get 0
      local.get 2
      i32.const 1
      i32.sub
      i32.const 1
      i32.shl
      i32.add
      local.get 1
      i32.const 48
      i32.add
      i32.store16
    end)
  (func $~lib/util/number/prettify (type 6) (param i32 i32 i32) (result i32)
    (local i32 i32 i32 i32)
    local.get 2
    i32.eqz
    if  ;; label = @1
      local.get 0
      local.get 1
      i32.const 1
      i32.shl
      i32.add
      i32.const 3145774
      i32.store
      local.get 1
      i32.const 2
      i32.add
      return
    end
    local.get 1
    local.get 2
    i32.add
    local.tee 4
    i32.const 21
    i32.le_s
    i32.const 0
    local.get 1
    local.get 4
    i32.le_s
    select
    if (result i32)  ;; label = @1
      loop  ;; label = @2
        local.get 1
        local.get 4
        i32.lt_s
        if  ;; label = @3
          local.get 0
          local.get 1
          i32.const 1
          i32.shl
          i32.add
          i32.const 48
          i32.store16
          local.get 1
          i32.const 1
          i32.add
          local.set 1
          br 1 (;@2;)
        end
      end
      local.get 0
      local.get 4
      i32.const 1
      i32.shl
      i32.add
      i32.const 3145774
      i32.store
      local.get 4
      i32.const 2
      i32.add
    else
      local.get 4
      i32.const 21
      i32.le_s
      i32.const 0
      local.get 4
      i32.const 0
      i32.gt_s
      select
      if (result i32)  ;; label = @2
        local.get 0
        local.get 4
        i32.const 1
        i32.shl
        i32.add
        local.tee 0
        i32.const 2
        i32.add
        local.get 0
        i32.const 0
        local.get 2
        i32.sub
        i32.const 1
        i32.shl
        call $~lib/memory/memory.copy
        local.get 0
        i32.const 46
        i32.store16
        local.get 1
        i32.const 1
        i32.add
      else
        local.get 4
        i32.const 0
        i32.le_s
        i32.const 0
        local.get 4
        i32.const -6
        i32.gt_s
        select
        if (result i32)  ;; label = @3
          local.get 0
          i32.const 2
          local.get 4
          i32.sub
          local.tee 5
          i32.const 1
          i32.shl
          i32.add
          local.get 0
          local.get 1
          i32.const 1
          i32.shl
          call $~lib/memory/memory.copy
          local.get 0
          i32.const 3014704
          i32.store
          i32.const 2
          local.set 2
          loop  ;; label = @4
            local.get 2
            local.get 5
            i32.lt_s
            if  ;; label = @5
              local.get 0
              local.get 2
              i32.const 1
              i32.shl
              i32.add
              i32.const 48
              i32.store16
              local.get 2
              i32.const 1
              i32.add
              local.set 2
              br 1 (;@4;)
            end
          end
          local.get 1
          local.get 5
          i32.add
        else
          local.get 1
          i32.const 1
          i32.eq
          if (result i32)  ;; label = @4
            local.get 0
            i32.const 101
            i32.store16 offset=2
            local.get 0
            local.tee 3
            i32.const 4
            i32.add
            local.set 5
            block (result i32)  ;; label = @5
              local.get 4
              i32.const 1
              i32.sub
              local.tee 0
              i32.const 0
              i32.lt_s
              local.tee 2
              if  ;; label = @6
                i32.const 0
                local.get 0
                i32.sub
                local.set 0
              end
              local.get 0
            end
            local.tee 1
            i32.const 100000
            i32.lt_u
            if (result i32)  ;; label = @5
              local.get 1
              i32.const 100
              i32.lt_u
              if (result i32)  ;; label = @6
                local.get 1
                i32.const 10
                i32.ge_u
                i32.const 1
                i32.add
              else
                local.get 1
                i32.const 10000
                i32.ge_u
                i32.const 3
                i32.add
                local.get 1
                i32.const 1000
                i32.ge_u
                i32.add
              end
            else
              local.get 1
              i32.const 10000000
              i32.lt_u
              if (result i32)  ;; label = @6
                local.get 1
                i32.const 1000000
                i32.ge_u
                i32.const 6
                i32.add
              else
                local.get 1
                i32.const 1000000000
                i32.ge_u
                i32.const 8
                i32.add
                local.get 1
                i32.const 100000000
                i32.ge_u
                i32.add
              end
            end
            local.set 1
            local.get 5
            local.get 0
            local.get 1
            i32.const 1
            i32.add
            local.tee 0
            call $~lib/util/number/utoa32_dec_lut
            local.get 3
            i32.const 45
            i32.const 43
            local.get 2
            select
            i32.store16 offset=4
            local.get 0
            i32.const 2
            i32.add
          else
            local.get 0
            i32.const 4
            i32.add
            local.get 0
            i32.const 2
            i32.add
            local.get 1
            i32.const 1
            i32.shl
            local.tee 2
            i32.const 2
            i32.sub
            call $~lib/memory/memory.copy
            local.get 0
            i32.const 46
            i32.store16 offset=2
            local.get 0
            local.get 2
            i32.add
            local.tee 0
            i32.const 101
            i32.store16 offset=2
            local.get 0
            local.tee 3
            i32.const 4
            i32.add
            local.set 6
            block (result i32)  ;; label = @5
              local.get 4
              i32.const 1
              i32.sub
              local.tee 0
              i32.const 0
              i32.lt_s
              local.tee 5
              if  ;; label = @6
                i32.const 0
                local.get 0
                i32.sub
                local.set 0
              end
              local.get 0
            end
            local.tee 2
            i32.const 100000
            i32.lt_u
            if (result i32)  ;; label = @5
              local.get 2
              i32.const 100
              i32.lt_u
              if (result i32)  ;; label = @6
                local.get 2
                i32.const 10
                i32.ge_u
                i32.const 1
                i32.add
              else
                local.get 2
                i32.const 10000
                i32.ge_u
                i32.const 3
                i32.add
                local.get 2
                i32.const 1000
                i32.ge_u
                i32.add
              end
            else
              local.get 2
              i32.const 10000000
              i32.lt_u
              if (result i32)  ;; label = @6
                local.get 2
                i32.const 1000000
                i32.ge_u
                i32.const 6
                i32.add
              else
                local.get 2
                i32.const 1000000000
                i32.ge_u
                i32.const 8
                i32.add
                local.get 2
                i32.const 100000000
                i32.ge_u
                i32.add
              end
            end
            local.set 2
            local.get 6
            local.get 0
            local.get 2
            i32.const 1
            i32.add
            local.tee 0
            call $~lib/util/number/utoa32_dec_lut
            local.get 3
            i32.const 45
            i32.const 43
            local.get 5
            select
            i32.store16 offset=4
            local.get 0
            local.get 1
            i32.add
            i32.const 2
            i32.add
          end
        end
      end
    end)
  (func $~lib/util/number/dtoa_core (type 9) (param f64) (result i32)
    (local i64 i64 i64 i64 i64 i64 i64 i32 i32 i32 i32 i32)
    local.get 0
    f64.const 0x0p+0 (;=0;)
    f64.lt
    local.tee 11
    if (result f64)  ;; label = @1
      i32.const 23424
      i32.const 45
      i32.store16
      local.get 0
      f64.neg
    else
      local.get 0
    end
    i64.reinterpret_f64
    local.tee 2
    i64.const 9218868437227405312
    i64.and
    i64.const 52
    i64.shr_u
    i32.wrap_i64
    local.tee 10
    i32.const 0
    i32.ne
    i64.extend_i32_u
    i64.const 52
    i64.shl
    local.get 2
    i64.const 4503599627370495
    i64.and
    i64.add
    local.tee 1
    i64.const 1
    i64.shl
    i64.const 1
    i64.add
    local.tee 2
    i64.clz
    i32.wrap_i64
    local.set 8
    local.get 2
    local.get 8
    i64.extend_i32_s
    i64.shl
    global.set $~lib/util/number/_frc_plus
    local.get 10
    i32.const 1
    local.get 10
    select
    i32.const 1075
    i32.sub
    local.tee 10
    i32.const 1
    i32.sub
    local.get 8
    i32.sub
    local.set 8
    local.get 1
    local.get 1
    i64.const 4503599627370496
    i64.eq
    i32.const 1
    i32.add
    local.tee 9
    i64.extend_i32_s
    i64.shl
    i64.const 1
    i64.sub
    local.get 10
    local.get 9
    i32.sub
    local.get 8
    i32.sub
    i64.extend_i32_s
    i64.shl
    global.set $~lib/util/number/_frc_minus
    local.get 8
    global.set $~lib/util/number/_exp
    i32.const 348
    i32.const -61
    global.get $~lib/util/number/_exp
    local.tee 8
    i32.sub
    f64.convert_i32_s
    f64.const 0x1.34413509f79fep-2 (;=0.30103;)
    f64.mul
    f64.const 0x1.5bp+8 (;=347;)
    f64.add
    local.tee 0
    i32.trunc_f64_s
    local.tee 9
    local.get 0
    local.get 9
    f64.convert_i32_s
    f64.ne
    i32.add
    i32.const 3
    i32.shr_s
    i32.const 1
    i32.add
    local.tee 9
    i32.const 3
    i32.shl
    local.tee 12
    i32.sub
    global.set $~lib/util/number/_K
    local.get 12
    i32.const 23480
    i32.add
    i64.load
    global.set $~lib/util/number/_frc_pow
    local.get 9
    i32.const 1
    i32.shl
    i32.const 24176
    i32.add
    i32.load16_s
    global.set $~lib/util/number/_exp_pow
    global.get $~lib/util/number/_frc_pow
    local.tee 3
    i64.const 32
    i64.shr_u
    local.set 2
    local.get 3
    i64.const 4294967295
    i64.and
    local.tee 3
    global.get $~lib/util/number/_frc_plus
    local.tee 4
    i64.const 32
    i64.shr_u
    local.tee 6
    i64.mul
    local.get 3
    local.get 4
    i64.const 4294967295
    i64.and
    local.tee 7
    i64.mul
    i64.const 32
    i64.shr_u
    i64.add
    local.set 4
    local.get 11
    i32.const 1
    i32.shl
    i32.const 23424
    i32.add
    local.get 2
    local.get 1
    local.get 1
    i64.clz
    i32.wrap_i64
    local.tee 9
    i64.extend_i32_s
    i64.shl
    local.tee 1
    i64.const 32
    i64.shr_u
    local.tee 5
    i64.mul
    local.get 3
    local.get 5
    i64.mul
    local.get 3
    local.get 1
    i64.const 4294967295
    i64.and
    local.tee 1
    i64.mul
    i64.const 32
    i64.shr_u
    i64.add
    local.tee 5
    i64.const 32
    i64.shr_u
    i64.add
    local.get 1
    local.get 2
    i64.mul
    local.get 5
    i64.const 4294967295
    i64.and
    i64.add
    i64.const 2147483647
    i64.add
    i64.const 32
    i64.shr_u
    i64.add
    global.get $~lib/util/number/_exp_pow
    local.tee 12
    local.get 10
    local.get 9
    i32.sub
    i32.add
    i32.const -64
    i32.sub
    local.get 2
    local.get 6
    i64.mul
    local.get 4
    i64.const 32
    i64.shr_u
    i64.add
    local.get 2
    local.get 7
    i64.mul
    local.get 4
    i64.const 4294967295
    i64.and
    i64.add
    i64.const 2147483647
    i64.add
    i64.const 32
    i64.shr_u
    i64.add
    i64.const 1
    i64.sub
    local.tee 1
    local.get 8
    local.get 12
    i32.add
    i32.const -64
    i32.sub
    local.get 1
    local.get 2
    global.get $~lib/util/number/_frc_minus
    local.tee 1
    i64.const 32
    i64.shr_u
    local.tee 4
    i64.mul
    local.get 3
    local.get 4
    i64.mul
    local.get 3
    local.get 1
    i64.const 4294967295
    i64.and
    local.tee 3
    i64.mul
    i64.const 32
    i64.shr_u
    i64.add
    local.tee 1
    i64.const 32
    i64.shr_u
    i64.add
    local.get 2
    local.get 3
    i64.mul
    local.get 1
    i64.const 4294967295
    i64.and
    i64.add
    i64.const 2147483647
    i64.add
    i64.const 32
    i64.shr_u
    i64.add
    i64.const 1
    i64.add
    i64.sub
    local.get 11
    call $~lib/util/number/genDigits
    local.get 11
    i32.sub
    global.get $~lib/util/number/_K
    call $~lib/util/number/prettify
    local.get 11
    i32.add)
  (func $~lib/number/F64#toString (type 9) (param f64) (result i32)
    (local i32 i32)
    i32.const 23280
    local.set 1
    block  ;; label = @1
      local.get 0
      f64.const 0x0p+0 (;=0;)
      f64.eq
      br_if 0 (;@1;)
      local.get 0
      local.get 0
      f64.sub
      f64.const 0x0p+0 (;=0;)
      f64.ne
      if  ;; label = @2
        i32.const 23312
        local.set 1
        local.get 0
        local.get 0
        f64.ne
        br_if 1 (;@1;)
        i32.const 23344
        i32.const 23392
        local.get 0
        f64.const 0x0p+0 (;=0;)
        f64.lt
        select
        local.set 1
        br 1 (;@1;)
      end
      local.get 0
      call $~lib/util/number/dtoa_core
      i32.const 1
      i32.shl
      local.tee 2
      i32.const 1
      call $~lib/rt/stub/__new
      local.tee 1
      i32.const 23424
      local.get 2
      call $~lib/memory/memory.copy
    end
    local.get 1)
  (func $~lib/@graphprotocol/graph-ts/common/value/Value.fromStringArray (type 0) (param i32) (result i32)
    (local i32 i32 i32 i32 i32 i64)
    local.get 0
    i32.load offset=12
    local.set 3
    i32.const 16
    i32.const 33
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
    local.get 3
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
    local.get 3
    i32.const 8
    local.get 3
    i32.const 8
    i32.gt_u
    select
    i32.const 2
    i32.shl
    local.tee 5
    i32.const 0
    call $~lib/rt/stub/__new
    local.tee 2
    local.get 5
    call $~lib/memory/memory.fill
    local.get 1
    local.get 2
    i32.store
    local.get 1
    local.get 2
    i32.store offset=4
    local.get 1
    local.get 5
    i32.store offset=8
    local.get 1
    local.get 3
    i32.store offset=12
    loop  ;; label = @1
      local.get 4
      local.get 0
      i32.load offset=12
      i32.lt_s
      if  ;; label = @2
        local.get 0
        local.get 4
        call $~lib/array/Array<~lib/string/String>#__get
        i64.extend_i32_u
        local.set 6
        i32.const 16
        i32.const 6
        call $~lib/rt/stub/__new
        local.tee 2
        i32.const 0
        i32.store
        local.get 2
        local.get 6
        i64.store offset=8
        local.get 1
        local.get 4
        local.get 2
        call $~lib/array/Array<~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value>#__set
        local.get 4
        i32.const 1
        i32.add
        local.set 4
        br 1 (;@1;)
      end
    end
    local.get 1
    i64.extend_i32_u
    local.set 6
    i32.const 16
    i32.const 6
    call $~lib/rt/stub/__new
    local.tee 0
    i32.const 4
    i32.store
    local.get 0
    local.get 6
    i64.store offset=8
    local.get 0)
  (func $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#get (type 3) (param i32 i32) (result i32)
    (local i32)
    loop  ;; label = @1
      local.get 2
      local.get 0
      i32.load
      i32.load offset=12
      i32.lt_s
      if  ;; label = @2
        local.get 0
        i32.load
        local.get 2
        call $~lib/array/Array<~lib/string/String>#__get
        i32.load
        local.get 1
        call $~lib/string/String.__eq
        if  ;; label = @3
          local.get 0
          i32.load
          local.get 2
          call $~lib/array/Array<~lib/string/String>#__get
          i32.load offset=4
          return
        end
        local.get 2
        i32.const 1
        i32.add
        local.set 2
        br 1 (;@1;)
      end
    end
    i32.const 0)
  (func $~lib/@graphprotocol/graph-ts/common/value/Value#toString (type 0) (param i32) (result i32)
    local.get 0
    i32.load
    if  ;; label = @1
      i32.const 25456
      i32.const 25520
      i32.const 70
      i32.const 5
      call $~lib/builtins/abort
      unreachable
    end
    local.get 0
    i64.load offset=8
    i32.wrap_i64)
  (func $~lib/@graphprotocol/graph-ts/common/value/Value#toI32 (type 0) (param i32) (result i32)
    local.get 0
    i32.load
    i32.const 5
    i32.eq
    if  ;; label = @1
      i32.const 0
      return
    end
    local.get 0
    i32.load
    i32.const 1
    i32.ne
    if  ;; label = @1
      i32.const 25632
      i32.const 25520
      i32.const 65
      i32.const 5
      call $~lib/builtins/abort
      unreachable
    end
    local.get 0
    i64.load offset=8
    i32.wrap_i64)
  (func $~lib/util/number/itoa32 (type 0) (param i32) (result i32)
    (local i32 i32 i32)
    local.get 0
    i32.eqz
    if  ;; label = @1
      i32.const 2816
      return
    end
    i32.const 0
    local.get 0
    i32.sub
    local.get 0
    local.get 0
    i32.const 31
    i32.shr_u
    local.tee 1
    select
    local.tee 2
    local.tee 0
    i32.const 100000
    i32.lt_u
    if (result i32)  ;; label = @1
      local.get 0
      i32.const 100
      i32.lt_u
      if (result i32)  ;; label = @2
        local.get 0
        i32.const 10
        i32.ge_u
        i32.const 1
        i32.add
      else
        local.get 0
        i32.const 10000
        i32.ge_u
        i32.const 3
        i32.add
        local.get 0
        i32.const 1000
        i32.ge_u
        i32.add
      end
    else
      local.get 0
      i32.const 10000000
      i32.lt_u
      if (result i32)  ;; label = @2
        local.get 0
        i32.const 1000000
        i32.ge_u
        i32.const 6
        i32.add
      else
        local.get 0
        i32.const 1000000000
        i32.ge_u
        i32.const 8
        i32.add
        local.get 0
        i32.const 100000000
        i32.ge_u
        i32.add
      end
    end
    local.get 1
    i32.add
    local.tee 3
    i32.const 1
    i32.shl
    i32.const 1
    call $~lib/rt/stub/__new
    local.tee 0
    local.get 2
    local.get 3
    call $~lib/util/number/utoa32_dec_lut
    local.get 1
    if  ;; label = @1
      local.get 0
      i32.const 45
      i32.store16
    end
    local.get 0)
  (func $~lib/@graphprotocol/graph-ts/common/value/Value#toBigDecimal (type 0) (param i32) (result i32)
    local.get 0
    i32.load
    i32.const 2
    i32.ne
    if  ;; label = @1
      i32.const 27040
      i32.const 25520
      i32.const 80
      i32.const 5
      call $~lib/builtins/abort
      unreachable
    end
    local.get 0
    i64.load offset=8
    i32.wrap_i64)
  (func $~lib/@graphprotocol/graph-ts/common/value/Value#toArray (type 0) (param i32) (result i32)
    local.get 0
    i32.load
    i32.const 4
    i32.ne
    if  ;; label = @1
      i32.const 27264
      i32.const 25520
      i32.const 85
      i32.const 5
      call $~lib/builtins/abort
      unreachable
    end
    local.get 0
    i64.load offset=8
    i32.wrap_i64)
  (func $~lib/@graphprotocol/graph-ts/common/value/Value#displayData~anonymous|0 (type 6) (param i32 i32 i32) (result i32)
    local.get 0
    call $~lib/@graphprotocol/graph-ts/common/value/Value#displayData)
  (func $~lib/util/string/joinStringArray (type 6) (param i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32)
    local.get 1
    i32.const 1
    i32.sub
    local.tee 7
    i32.const 0
    i32.lt_s
    if  ;; label = @1
      i32.const 14480
      return
    end
    local.get 7
    i32.eqz
    if  ;; label = @1
      local.get 0
      i32.load
      local.tee 0
      if (result i32)  ;; label = @2
        local.get 0
      else
        i32.const 14480
      end
      return
    end
    loop  ;; label = @1
      local.get 1
      local.get 5
      i32.gt_s
      if  ;; label = @2
        local.get 0
        local.get 5
        i32.const 2
        i32.shl
        i32.add
        i32.load
        local.tee 6
        if  ;; label = @3
          local.get 4
          local.get 6
          i32.const 20
          i32.sub
          i32.load offset=16
          i32.const 1
          i32.shr_u
          i32.add
          local.set 4
        end
        local.get 5
        i32.const 1
        i32.add
        local.set 5
        br 1 (;@1;)
      end
    end
    local.get 4
    local.get 7
    local.get 2
    i32.const 20
    i32.sub
    i32.load offset=16
    i32.const 1
    i32.shr_u
    local.tee 4
    i32.mul
    i32.add
    i32.const 1
    i32.shl
    i32.const 1
    call $~lib/rt/stub/__new
    local.set 1
    i32.const 0
    local.set 5
    loop  ;; label = @1
      local.get 5
      local.get 7
      i32.lt_s
      if  ;; label = @2
        local.get 0
        local.get 5
        i32.const 2
        i32.shl
        i32.add
        i32.load
        local.tee 6
        if  ;; label = @3
          block (result i32)  ;; label = @4
            local.get 1
            local.get 3
            i32.const 1
            i32.shl
            i32.add
            local.get 6
            local.get 6
            i32.const 20
            i32.sub
            i32.load offset=16
            i32.const 1
            i32.shr_u
            local.tee 6
            i32.const 1
            i32.shl
            call $~lib/memory/memory.copy
            local.get 3
            local.get 6
            i32.add
          end
          local.set 3
        end
        local.get 4
        if  ;; label = @3
          block (result i32)  ;; label = @4
            local.get 1
            local.get 3
            i32.const 1
            i32.shl
            i32.add
            local.get 2
            local.get 4
            i32.const 1
            i32.shl
            call $~lib/memory/memory.copy
            local.get 3
            local.get 4
            i32.add
          end
          local.set 3
        end
        local.get 5
        i32.const 1
        i32.add
        local.set 5
        br 1 (;@1;)
      end
    end
    local.get 0
    local.get 7
    i32.const 2
    i32.shl
    i32.add
    i32.load
    local.tee 0
    if  ;; label = @1
      local.get 1
      local.get 3
      i32.const 1
      i32.shl
      i32.add
      local.get 0
      local.get 0
      i32.const 20
      i32.sub
      i32.load offset=16
      i32.const 1
      i32.shr_u
      i32.const 1
      i32.shl
      call $~lib/memory/memory.copy
    end
    local.get 1)
  (func $~lib/@graphprotocol/graph-ts/common/value/Value#displayData (type 0) (param i32) (result i32)
    (local i32 i32 i32 i32 i32 i32)
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      local.get 0
                      i32.load
                      br_table 0 (;@9;) 1 (;@8;) 2 (;@7;) 3 (;@6;) 4 (;@5;) 5 (;@4;) 6 (;@3;) 7 (;@2;) 8 (;@1;)
                    end
                    local.get 0
                    call $~lib/@graphprotocol/graph-ts/common/value/Value#toString
                    return
                  end
                  local.get 0
                  call $~lib/@graphprotocol/graph-ts/common/value/Value#toI32
                  call $~lib/util/number/itoa32
                  return
                end
                local.get 0
                call $~lib/@graphprotocol/graph-ts/common/value/Value#toBigDecimal
                call $~lib/@graphprotocol/graph-ts/common/numbers/bigDecimal.toString
                return
              end
              i32.const 27200
              i32.const 27232
              local.get 0
              i32.load
              i32.const 5
              i32.eq
              if (result i32)  ;; label = @6
                i32.const 0
              else
                local.get 0
                i32.load
                i32.const 3
                i32.ne
                if  ;; label = @7
                  i32.const 27120
                  i32.const 25520
                  i32.const 52
                  i32.const 5
                  call $~lib/builtins/abort
                  unreachable
                end
                local.get 0
                i64.load offset=8
                i64.const 0
                i64.ne
              end
              select
              return
            end
            local.get 0
            call $~lib/@graphprotocol/graph-ts/common/value/Value#toArray
            local.set 1
            i32.const 0
            local.set 0
            local.get 1
            i32.load offset=12
            local.tee 3
            i32.const 3
            i32.const 0
            call $~lib/rt/__newArray
            local.tee 4
            i32.load offset=4
            local.set 5
            loop  ;; label = @5
              local.get 0
              local.get 3
              local.get 1
              i32.load offset=12
              local.tee 2
              local.get 2
              local.get 3
              i32.gt_s
              select
              i32.lt_s
              if  ;; label = @6
                local.get 0
                i32.const 2
                i32.shl
                local.tee 2
                local.get 1
                i32.load offset=4
                i32.add
                i32.load
                local.get 0
                local.get 1
                i32.const 27360
                i32.load
                call_indirect $0 (type 6)
                local.set 6
                local.get 2
                local.get 5
                i32.add
                local.get 6
                i32.store
                local.get 0
                i32.const 1
                i32.add
                local.set 0
                br 1 (;@5;)
              end
            end
            i32.const 27328
            local.get 4
            i32.load offset=4
            local.get 4
            i32.load offset=12
            i32.const 27392
            call $~lib/util/string/joinStringArray
            call $~lib/string/String#concat
            i32.const 27424
            call $~lib/string/String#concat
            return
          end
          i32.const 1360
          return
        end
        local.get 0
        i32.load
        i32.const 6
        i32.ne
        if  ;; label = @3
          i32.const 27456
          i32.const 25520
          i32.const 57
          i32.const 5
          call $~lib/builtins/abort
          unreachable
        end
        local.get 0
        i64.load offset=8
        i32.wrap_i64
        call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.bytesToHex
        return
      end
      local.get 0
      i32.load
      i32.const 7
      i32.ne
      if  ;; label = @2
        i32.const 27536
        i32.const 25520
        i32.const 75
        i32.const 5
        call $~lib/builtins/abort
        unreachable
      end
      local.get 0
      i64.load offset=8
      i32.wrap_i64
      call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.bigIntToString
      return
    end
    i32.const 27700
    local.get 0
    i32.load
    call $~lib/util/number/itoa32
    i32.store
    i32.const 27696
    i32.const 27692
    i32.load
    i32.const 2
    i32.shr_u
    i32.const 14480
    call $~lib/util/string/joinStringArray)
  (func $~lib/@graphprotocol/graph-ts/common/value/Value#displayKind (type 0) (param i32) (result i32)
    local.get 0
    i32.load
    i32.const 1532
    i32.load
    i32.ge_s
    if (result i32)  ;; label = @1
      i32.const 27780
      local.get 0
      i32.load
      call $~lib/util/number/itoa32
      i32.store
      i32.const 27776
      i32.const 27772
      i32.load
      i32.const 2
      i32.shr_u
      i32.const 14480
      call $~lib/util/string/joinStringArray
    else
      i32.const 1520
      local.get 0
      i32.load
      call $~lib/array/Array<~lib/string/String>#__get
    end)
  (func $generated/schema/Comptroller#save (type 5) (param i32)
    (local i32)
    local.get 0
    i32.const 23200
    call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#get
    local.tee 1
    i32.eqz
    if  ;; label = @1
      i32.const 25008
      i32.const 25120
      i32.const 22
      i32.const 5
      call $~lib/builtins/abort
      unreachable
    end
    local.get 1
    if  ;; label = @1
      local.get 1
      i32.load
      if  ;; label = @2
        i32.const 25412
        local.get 1
        call $~lib/@graphprotocol/graph-ts/common/value/Value#displayData
        i32.store
        i32.const 25420
        local.get 1
        call $~lib/@graphprotocol/graph-ts/common/value/Value#displayKind
        i32.store
        i32.const 25408
        i32.const 25404
        i32.load
        i32.const 2
        i32.shr_u
        i32.const 14480
        call $~lib/util/string/joinStringArray
        i32.const 25120
        i32.const 24
        i32.const 7
        call $~lib/builtins/abort
        unreachable
      end
      i32.const 17120
      local.get 1
      call $~lib/@graphprotocol/graph-ts/common/value/Value#toString
      local.get 0
      call $~lib/@graphprotocol/graph-ts/index/store.set
    end)
  (func $~lib/matchstick-as/assembly/assert/assert.fieldEquals (type 8) (param i32 i32 i32 i32)
    local.get 0
    local.get 1
    local.get 2
    local.get 3
    call $~lib/matchstick-as/assembly/assert/_assert.fieldEquals
    i32.eqz
    if  ;; label = @1
      i32.const 16368
      i32.const 16432
      i32.const 13
      i32.const 7
      call $~lib/builtins/abort
      unreachable
    end)
  (func $start:tests/comptroller/comptroller.test~anonymous|2~anonymous|1 (type 2)
    (local i32 i32 i64)
    i32.const 0
    i32.const 17120
    call $~lib/matchstick-as/assembly/store/countEntities
    call $~lib/matchstick-as/assembly/assert/assert.i32Equals
    i32.const 17120
    i32.const 2848
    call $~lib/@graphprotocol/graph-ts/index/store.get
    local.tee 1
    i32.eqz
    if  ;; label = @1
      i32.const 4
      i32.const 32
      call $~lib/rt/stub/__new
      call $~lib/@graphprotocol/graph-ts/common/collections/Entity#constructor
      local.set 1
      i32.const 16
      i32.const 6
      call $~lib/rt/stub/__new
      local.tee 0
      i32.const 0
      i32.store
      local.get 0
      i64.const 2848
      i64.store offset=8
      local.get 1
      i32.const 23200
      local.get 0
      call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#set
      i32.const 16
      i32.const 6
      call $~lib/rt/stub/__new
      local.tee 0
      i32.const 0
      i32.store
      local.get 0
      i64.const 4224
      i64.store offset=8
      local.get 1
      i32.const 23232
      local.get 0
      call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#set
      f64.const 0x1.199999999999ap+0 (;=1.1;)
      call $~lib/number/F64#toString
      call $~lib/@graphprotocol/graph-ts/common/numbers/bigDecimal.fromString
      i64.extend_i32_u
      local.set 2
      i32.const 16
      i32.const 6
      call $~lib/rt/stub/__new
      local.tee 0
      i32.const 2
      i32.store
      local.get 0
      local.get 2
      i64.store offset=8
      local.get 1
      i32.const 24816
      local.get 0
      call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#set
      f64.const 0x1p-1 (;=0.5;)
      call $~lib/number/F64#toString
      call $~lib/@graphprotocol/graph-ts/common/numbers/bigDecimal.fromString
      i64.extend_i32_u
      local.set 2
      i32.const 16
      i32.const 6
      call $~lib/rt/stub/__new
      local.tee 0
      i32.const 2
      i32.store
      local.get 0
      local.get 2
      i64.store offset=8
      local.get 1
      i32.const 24880
      local.get 0
      call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#set
      local.get 1
      i32.const 24960
      i32.const 0
      i32.const 3
      i32.const 24928
      call $~lib/rt/__newArray
      call $~lib/@graphprotocol/graph-ts/common/value/Value.fromStringArray
      call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#set
    end
    local.get 1
    call $generated/schema/Comptroller#save
    i32.const 1
    i32.const 17120
    call $~lib/matchstick-as/assembly/store/countEntities
    call $~lib/matchstick-as/assembly/assert/assert.i32Equals
    i32.const 17120
    i32.const 2848
    i32.const 23200
    i32.const 2848
    call $~lib/matchstick-as/assembly/assert/assert.fieldEquals)
  (func $~lib/matchstick-as/assembly/defaults/newMockEvent (type 10) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get $~lib/matchstick-as/assembly/defaults/defaultAddressBytes
    local.set 0
    global.get $~lib/matchstick-as/assembly/defaults/defaultAddress
    local.set 7
    global.get $~lib/matchstick-as/assembly/defaults/defaultBigInt
    local.set 3
    i32.const 60
    i32.const 38
    call $~lib/rt/stub/__new
    local.tee 2
    local.get 0
    i32.store
    local.get 2
    local.get 0
    i32.store offset=4
    local.get 2
    local.get 0
    i32.store offset=8
    local.get 2
    local.get 7
    i32.store offset=12
    local.get 2
    local.get 0
    i32.store offset=16
    local.get 2
    local.get 0
    i32.store offset=20
    local.get 2
    local.get 0
    i32.store offset=24
    local.get 2
    local.get 3
    i32.store offset=28
    local.get 2
    local.get 3
    i32.store offset=32
    local.get 2
    local.get 3
    i32.store offset=36
    local.get 2
    local.get 3
    i32.store offset=40
    local.get 2
    local.get 3
    i32.store offset=44
    local.get 2
    local.get 3
    i32.store offset=48
    local.get 2
    local.get 3
    i32.store offset=52
    local.get 2
    local.get 3
    i32.store offset=56
    global.get $~lib/matchstick-as/assembly/defaults/defaultBigInt
    local.set 0
    global.get $~lib/matchstick-as/assembly/defaults/defaultAddress
    local.set 1
    global.get $~lib/matchstick-as/assembly/defaults/defaultAddressBytes
    local.set 4
    i32.const 36
    i32.const 39
    call $~lib/rt/stub/__new
    local.tee 5
    local.get 4
    i32.store
    local.get 5
    local.get 0
    i32.store offset=4
    local.get 5
    local.get 1
    i32.store offset=8
    local.get 5
    local.get 1
    i32.store offset=12
    local.get 5
    local.get 0
    i32.store offset=16
    local.get 5
    local.get 0
    i32.store offset=20
    local.get 5
    local.get 0
    i32.store offset=24
    local.get 5
    local.get 4
    i32.store offset=28
    local.get 5
    local.get 0
    i32.store offset=32
    i32.const 0
    i32.const 41
    i32.const 27952
    call $~lib/rt/__newArray
    local.set 12
    global.get $~lib/matchstick-as/assembly/defaults/defaultAddressBytes
    local.set 8
    global.get $~lib/matchstick-as/assembly/defaults/defaultBigInt
    local.set 1
    global.get $~lib/matchstick-as/assembly/defaults/defaultAddress
    local.set 13
    i32.const 1
    i32.const 46
    i32.const 0
    call $~lib/rt/__newArray
    local.tee 9
    i32.load offset=4
    drop
    global.get $~lib/matchstick-as/assembly/defaults/defaultAddress
    local.set 14
    i32.const 1
    i32.const 44
    i32.const 0
    call $~lib/rt/__newArray
    local.tee 10
    i32.load offset=4
    drop
    local.get 10
    i32.load offset=4
    global.get $~lib/matchstick-as/assembly/defaults/defaultAddressBytes
    local.tee 4
    i32.store
    global.get $~lib/matchstick-as/assembly/defaults/defaultIntBytes
    local.set 15
    global.get $~lib/matchstick-as/assembly/defaults/defaultBigInt
    local.set 6
    i32.const 1
    i32.const 45
    call $~lib/rt/stub/__new
    local.tee 11
    i32.const 0
    i32.store8
    local.get 11
    i32.const 0
    i32.store8
    i32.const 44
    i32.const 43
    call $~lib/rt/stub/__new
    local.tee 0
    local.get 14
    i32.store
    local.get 0
    local.get 10
    i32.store offset=4
    local.get 0
    local.get 4
    i32.store offset=8
    local.get 0
    local.get 4
    i32.store offset=12
    local.get 0
    local.get 15
    i32.store offset=16
    local.get 0
    local.get 4
    i32.store offset=20
    local.get 0
    local.get 6
    i32.store offset=24
    local.get 0
    local.get 6
    i32.store offset=28
    local.get 0
    local.get 6
    i32.store offset=32
    local.get 0
    i32.const 2128
    i32.store offset=36
    local.get 0
    local.get 11
    i32.store offset=40
    local.get 9
    i32.load offset=4
    local.get 0
    i32.store
    global.get $~lib/matchstick-as/assembly/defaults/defaultBigInt
    local.set 6
    global.get $~lib/matchstick-as/assembly/defaults/defaultAddressBytes
    local.set 4
    i32.const 44
    i32.const 42
    call $~lib/rt/stub/__new
    local.tee 0
    local.get 8
    i32.store
    local.get 0
    local.get 1
    i32.store offset=4
    local.get 0
    local.get 8
    i32.store offset=8
    local.get 0
    local.get 1
    i32.store offset=12
    local.get 0
    local.get 1
    i32.store offset=16
    local.get 0
    local.get 1
    i32.store offset=20
    local.get 0
    local.get 13
    i32.store offset=24
    local.get 0
    local.get 9
    i32.store offset=28
    local.get 0
    local.get 6
    i32.store offset=32
    local.get 0
    local.get 4
    i32.store offset=36
    local.get 0
    local.get 4
    i32.store offset=40
    i32.const 32
    i32.const 37
    call $~lib/rt/stub/__new
    local.tee 1
    local.get 7
    i32.store
    local.get 1
    local.get 3
    i32.store offset=4
    local.get 1
    local.get 3
    i32.store offset=8
    local.get 1
    i32.const 2128
    i32.store offset=12
    local.get 1
    local.get 2
    i32.store offset=16
    local.get 1
    local.get 5
    i32.store offset=20
    local.get 1
    local.get 12
    i32.store offset=24
    local.get 1
    local.get 0
    i32.store offset=28
    local.get 1)
  (func $tests/comptroller/utils/createMarketListedEvent (type 0) (param i32) (result i32)
    (local i32 i32 i32 i32)
    call $~lib/matchstick-as/assembly/defaults/newMockEvent
    local.tee 2
    local.set 4
    i32.const 16
    i32.const 41
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
    local.tee 3
    i32.const 32
    call $~lib/memory/memory.fill
    local.get 1
    local.get 3
    i32.store
    local.get 1
    local.get 3
    i32.store offset=4
    local.get 1
    i32.const 32
    i32.store offset=8
    local.get 1
    i32.const 0
    i32.store offset=12
    local.get 4
    local.get 1
    i32.store offset=24
    local.get 0
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.stringToH160
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value.fromAddress
    local.set 1
    i32.const 8
    i32.const 40
    call $~lib/rt/stub/__new
    local.tee 0
    i32.const 27984
    i32.store
    local.get 0
    local.get 1
    i32.store offset=4
    local.get 2
    i32.load offset=24
    local.get 0
    call $~lib/array/Array<~lib/@graphprotocol/graph-ts/common/collections/TypedMapEntry<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>>#push
    local.get 2)
  (func $generated/schema/Market#set:underlyingAddress (type 1) (param i32 i32)
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
    i32.const 28016
    local.get 1
    call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#set)
  (func $generated/schema/Market#set:underlyingDecimals (type 1) (param i32 i32)
    (local i64)
    local.get 1
    i64.extend_i32_s
    local.set 2
    i32.const 16
    i32.const 6
    call $~lib/rt/stub/__new
    local.tee 1
    i32.const 1
    i32.store
    local.get 1
    local.get 2
    i64.store offset=8
    local.get 0
    i32.const 28080
    local.get 1
    call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#set)
  (func $generated/schema/Market#set:underlyingPrice (type 1) (param i32 i32)
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
    i32.const 28144
    local.get 1
    call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#set)
  (func $generated/schema/Market#set:underlyingName (type 1) (param i32 i32)
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
    i32.const 28208
    local.get 1
    call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#set)
  (func $generated/schema/Market#set:underlyingSymbol (type 1) (param i32 i32)
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
    i32.const 28256
    local.get 1
    call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#set)
  (func $generated/schema/Market#set:underlyingPriceUSD (type 1) (param i32 i32)
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
    i32.const 28320
    local.get 1
    call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#set)
  (func $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.SmartContract#tryCall (type 7) (param i32 i32 i32 i32) (result i32)
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
      i32.const 52
      call $~lib/rt/stub/__new
      local.tee 0
      i32.const 0
      i32.store
      local.get 0
      i32.const 0
      i32.store
      i32.const 4
      i32.const 53
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
      i32.const 52
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
      i32.const 28416
      i32.const 28512
      call $~lib/string/String#concat
      i32.const 15312
      i32.const 519
      i32.const 7
      call $~lib/builtins/abort
      unreachable
    end
    local.get 0
    i32.load
    i32.load)
  (func $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.CallResult.fromValue<~lib/@graphprotocol/graph-ts/common/numbers/Address> (type 0) (param i32) (result i32)
    (local i32 i32)
    i32.const 4
    i32.const 50
    call $~lib/rt/stub/__new
    local.tee 1
    i32.const 0
    i32.store
    local.get 1
    i32.const 0
    i32.store
    i32.const 4
    i32.const 51
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
  (func $~lib/@graphprotocol/graph-ts/index/format (type 3) (param i32 i32) (result i32)
    (local i32 i32 i32 i32 i32)
    i32.const 14480
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
            i32.const 15872
            local.get 0
            call $~lib/string/String#concat
            i32.const 28784
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
  (func $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.CallResult.fromValue<~lib/@graphprotocol/graph-ts/common/numbers/BigInt> (type 0) (param i32) (result i32)
    (local i32 i32)
    i32.const 4
    i32.const 55
    call $~lib/rt/stub/__new
    local.tee 1
    i32.const 0
    i32.store
    local.get 1
    i32.const 0
    i32.store
    i32.const 4
    i32.const 56
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
  (func $generated/schema/Market#set:symbol (type 1) (param i32 i32)
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
    i32.const 19936
    local.get 1
    call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#set)
  (func $generated/schema/Market#set:supplierCount (type 1) (param i32 i32)
    (local i64)
    local.get 1
    i64.extend_i32_s
    local.set 2
    i32.const 16
    i32.const 6
    call $~lib/rt/stub/__new
    local.tee 1
    i32.const 1
    i32.store
    local.get 1
    local.get 2
    i64.store offset=8
    local.get 0
    i32.const 29616
    local.get 1
    call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#set)
  (func $generated/schema/Market#set:borrowRewardSpeedNative (type 1) (param i32 i32)
    (local i64)
    local.get 1
    i64.extend_i32_u
    local.set 2
    i32.const 16
    i32.const 6
    call $~lib/rt/stub/__new
    local.tee 1
    i32.const 7
    i32.store
    local.get 1
    local.get 2
    i64.store offset=8
    local.get 0
    i32.const 29760
    local.get 1
    call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#set)
  (func $generated/schema/Market#set:borrowRewardSpeedProtocol (type 1) (param i32 i32)
    (local i64)
    local.get 1
    i64.extend_i32_u
    local.set 2
    i32.const 16
    i32.const 6
    call $~lib/rt/stub/__new
    local.tee 1
    i32.const 7
    i32.store
    local.get 1
    local.get 2
    i64.store offset=8
    local.get 0
    i32.const 29840
    local.get 1
    call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#set)
  (func $generated/schema/Market#set:supplyRewardSpeedNative (type 1) (param i32 i32)
    (local i64)
    local.get 1
    i64.extend_i32_u
    local.set 2
    i32.const 16
    i32.const 6
    call $~lib/rt/stub/__new
    local.tee 1
    i32.const 7
    i32.store
    local.get 1
    local.get 2
    i64.store offset=8
    local.get 0
    i32.const 29920
    local.get 1
    call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#set)
  (func $generated/schema/Market#set:supplyRewardSpeedProtocol (type 1) (param i32 i32)
    (local i64)
    local.get 1
    i64.extend_i32_u
    local.set 2
    i32.const 16
    i32.const 6
    call $~lib/rt/stub/__new
    local.tee 1
    i32.const 7
    i32.store
    local.get 1
    local.get 2
    i64.store offset=8
    local.get 0
    i32.const 30000
    local.get 1
    call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#set)
  (func $generated/schema/Market#get:underlyingSymbol (type 0) (param i32) (result i32)
    local.get 0
    i32.const 28256
    call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#get
    local.tee 0
    i32.eqz
    if  ;; label = @1
      i32.const 16304
      i32.const 25120
      i32.const 160
      i32.const 12
      call $~lib/builtins/abort
      unreachable
    end
    local.get 0
    call $~lib/@graphprotocol/graph-ts/common/value/Value#toString)
  (func $generated/schema/Market#get:symbol (type 0) (param i32) (result i32)
    local.get 0
    i32.const 19936
    call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#get
    local.tee 0
    i32.eqz
    if  ;; label = @1
      i32.const 16304
      i32.const 25120
      i32.const 124
      i32.const 12
      call $~lib/builtins/abort
      unreachable
    end
    local.get 0
    call $~lib/@graphprotocol/graph-ts/common/value/Value#toString)
  (func $generated/schema/Market#set:_feed (type 1) (param i32 i32)
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
    i32.const 31376
    local.get 1
    call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#set)
  (func $src/markets/createMarket (type 0) (param i32) (result i32)
    (local i32 i32 i32 i32 i64)
    i32.const 4
    i32.const 48
    call $~lib/rt/stub/__new
    call $~lib/@graphprotocol/graph-ts/common/collections/Entity#constructor
    local.set 2
    local.get 0
    i64.extend_i32_u
    local.set 5
    i32.const 16
    i32.const 6
    call $~lib/rt/stub/__new
    local.tee 1
    i32.const 0
    i32.store
    local.get 1
    local.get 5
    i64.store offset=8
    local.get 2
    i32.const 23200
    local.get 1
    call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#set
    local.get 0
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.stringToH160
    local.set 3
    i32.const 8
    i32.const 49
    call $~lib/rt/stub/__new
    i32.const 18944
    local.get 3
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.SmartContract#constructor
    local.set 4
    global.get $config/config/config
    i32.load offset=8
    local.set 1
    local.get 0
    call $~lib/string/String#toLowerCase
    local.get 1
    call $~lib/string/String#toLowerCase
    call $~lib/string/String.__eq
    if  ;; label = @1
      local.get 2
      i32.const 1568
      call $generated/schema/Market#set:underlyingAddress
      local.get 2
      i32.const 18
      call $generated/schema/Market#set:underlyingDecimals
      local.get 2
      i32.const 2848
      call $~lib/@graphprotocol/graph-ts/common/numbers/bigDecimal.fromString
      call $generated/schema/Market#set:underlyingPrice
      local.get 2
      global.get $config/config/config
      i32.load offset=4
      call $generated/schema/Market#set:underlyingName
      local.get 2
      global.get $config/config/config
      i32.load offset=4
      call $generated/schema/Market#set:underlyingSymbol
      local.get 2
      global.get $src/helpers/zeroBD
      call $generated/schema/Market#set:underlyingPriceUSD
    else
      block  ;; label = @2
        local.get 4
        i32.const 21744
        i32.const 21792
        i32.const 0
        i32.const 22
        i32.const 28384
        call $~lib/rt/__newArray
        call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.SmartContract#tryCall
        local.tee 0
        i32.load
        i32.eqz
        if  ;; label = @3
          i32.const 4
          i32.const 50
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
        call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.CallResult.fromValue<~lib/@graphprotocol/graph-ts/common/numbers/Address>
        local.set 0
      end
      local.get 0
      i32.load
      if  ;; label = @2
        local.get 0
        call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.CallResult<~lib/array/Array<~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value>>#get:value
        local.set 0
        i32.const 8
        i32.const 54
        call $~lib/rt/stub/__new
        i32.const 22160
        local.get 0
        call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.SmartContract#constructor
        local.set 1
        local.get 2
        local.get 0
        call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.bytesToHex
        call $generated/schema/Market#set:underlyingAddress
        local.get 2
        local.get 1
        i32.const 22048
        i32.const 22096
        i32.const 0
        i32.const 22
        i32.const 28880
        call $~lib/rt/__newArray
        call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.SmartContract#call
        i32.const 0
        call $~lib/array/Array<~lib/string/String>#__get
        call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value#toI32
        call $generated/schema/Market#set:underlyingDecimals
        local.get 2
        local.get 1
        i32.const 19568
        i32.const 19600
        i32.const 0
        i32.const 22
        i32.const 28912
        call $~lib/rt/__newArray
        call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.SmartContract#call
        i32.const 0
        call $~lib/array/Array<~lib/string/String>#__get
        call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value#toString
        call $generated/schema/Market#set:underlyingName
        local.get 2
        local.get 1
        i32.const 19936
        i32.const 19968
        i32.const 0
        i32.const 22
        i32.const 28944
        call $~lib/rt/__newArray
        call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.SmartContract#call
        i32.const 0
        call $~lib/array/Array<~lib/string/String>#__get
        call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value#toString
        call $generated/schema/Market#set:underlyingSymbol
        local.get 2
        global.get $src/helpers/zeroBD
        call $generated/schema/Market#set:underlyingPriceUSD
        local.get 2
        global.get $src/helpers/zeroBD
        call $generated/schema/Market#set:underlyingPrice
      else
        i32.const 1
        i32.const 3
        i32.const 0
        call $~lib/rt/__newArray
        local.tee 2
        i32.load offset=4
        drop
        local.get 3
        call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.bytesToHex
        local.set 0
        local.get 2
        i32.load offset=4
        local.get 0
        i32.store
        i32.const 2
        i32.const 28672
        local.get 2
        call $~lib/@graphprotocol/graph-ts/index/format
        call $~lib/@graphprotocol/graph-ts/index/log.log
        i32.const 0
        return
      end
    end
    block  ;; label = @1
      local.get 4
      i32.const 18800
      i32.const 18864
      i32.const 0
      i32.const 22
      i32.const 28976
      call $~lib/rt/__newArray
      call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.SmartContract#tryCall
      local.tee 0
      i32.load
      i32.eqz
      if  ;; label = @2
        i32.const 4
        i32.const 50
        call $~lib/rt/stub/__new
        local.tee 0
        i32.const 0
        i32.store
        local.get 0
        i32.const 0
        i32.store
        br 1 (;@1;)
      end
      local.get 0
      call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.CallResult<~lib/array/Array<~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value>>#get:value
      i32.const 0
      call $~lib/array/Array<~lib/string/String>#__get
      call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value#toAddress
      call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.CallResult.fromValue<~lib/@graphprotocol/graph-ts/common/numbers/Address>
      local.set 0
    end
    local.get 0
    local.set 1
    block  ;; label = @1
      local.get 4
      i32.const 19184
      i32.const 19248
      i32.const 0
      i32.const 22
      i32.const 29008
      call $~lib/rt/__newArray
      call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.SmartContract#tryCall
      local.tee 0
      i32.load
      i32.eqz
      if  ;; label = @2
        i32.const 4
        i32.const 55
        call $~lib/rt/stub/__new
        local.tee 0
        i32.const 0
        i32.store
        local.get 0
        i32.const 0
        i32.store
        br 1 (;@1;)
      end
      local.get 0
      call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.CallResult<~lib/array/Array<~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value>>#get:value
      i32.const 0
      call $~lib/array/Array<~lib/string/String>#__get
      call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value#toBigInt
      call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.CallResult.fromValue<~lib/@graphprotocol/graph-ts/common/numbers/BigInt>
      local.set 0
    end
    global.get $src/helpers/zeroBD
    i64.extend_i32_u
    local.set 5
    i32.const 16
    i32.const 6
    call $~lib/rt/stub/__new
    local.tee 3
    i32.const 2
    i32.store
    local.get 3
    local.get 5
    i64.store offset=8
    local.get 2
    i32.const 29040
    local.get 3
    call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#set
    global.get $src/helpers/zeroBD
    i64.extend_i32_u
    local.set 5
    i32.const 16
    i32.const 6
    call $~lib/rt/stub/__new
    local.tee 3
    i32.const 2
    i32.store
    local.get 3
    local.get 5
    i64.store offset=8
    local.get 2
    i32.const 29088
    local.get 3
    call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#set
    global.get $src/helpers/zeroBD
    i64.extend_i32_u
    local.set 5
    i32.const 16
    i32.const 6
    call $~lib/rt/stub/__new
    local.tee 3
    i32.const 2
    i32.store
    local.get 3
    local.get 5
    i64.store offset=8
    local.get 2
    i32.const 29120
    local.get 3
    call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#set
    global.get $src/helpers/zeroBD
    i64.extend_i32_u
    local.set 5
    i32.const 16
    i32.const 6
    call $~lib/rt/stub/__new
    local.tee 3
    i32.const 2
    i32.store
    local.get 3
    local.get 5
    i64.store offset=8
    local.get 2
    i32.const 29184
    local.get 3
    call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#set
    local.get 1
    i32.load
    if (result i32)  ;; label = @1
      local.get 1
      call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.CallResult<~lib/array/Array<~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value>>#get:value
      call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.bytesToHex
    else
      i32.const 1568
    end
    i64.extend_i32_u
    local.set 5
    i32.const 16
    i32.const 6
    call $~lib/rt/stub/__new
    local.tee 1
    i32.const 0
    i32.store
    local.get 1
    local.get 5
    i64.store offset=8
    local.get 2
    i32.const 29232
    local.get 1
    call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#set
    local.get 4
    i32.const 19568
    i32.const 19600
    i32.const 0
    i32.const 22
    i32.const 29312
    call $~lib/rt/__newArray
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.SmartContract#call
    i32.const 0
    call $~lib/array/Array<~lib/string/String>#__get
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value#toString
    i64.extend_i32_u
    local.set 5
    i32.const 16
    i32.const 6
    call $~lib/rt/stub/__new
    local.tee 1
    i32.const 0
    i32.store
    local.get 1
    local.get 5
    i64.store offset=8
    local.get 2
    i32.const 19568
    local.get 1
    call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#set
    global.get $src/helpers/zeroBD
    i64.extend_i32_u
    local.set 5
    i32.const 16
    i32.const 6
    call $~lib/rt/stub/__new
    local.tee 1
    i32.const 2
    i32.store
    local.get 1
    local.get 5
    i64.store offset=8
    local.get 2
    i32.const 29344
    local.get 1
    call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#set
    global.get $src/helpers/zeroBD
    i64.extend_i32_u
    local.set 5
    i32.const 16
    i32.const 6
    call $~lib/rt/stub/__new
    local.tee 1
    i32.const 2
    i32.store
    local.get 1
    local.get 5
    i64.store offset=8
    local.get 2
    i32.const 29392
    local.get 1
    call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#set
    local.get 2
    local.get 4
    i32.const 19936
    i32.const 19968
    i32.const 0
    i32.const 22
    i32.const 29440
    call $~lib/rt/__newArray
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.SmartContract#call
    i32.const 0
    call $~lib/array/Array<~lib/string/String>#__get
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value#toString
    call $generated/schema/Market#set:symbol
    global.get $src/helpers/zeroBD
    i64.extend_i32_u
    local.set 5
    i32.const 16
    i32.const 6
    call $~lib/rt/stub/__new
    local.tee 1
    i32.const 2
    i32.store
    local.get 1
    local.get 5
    i64.store offset=8
    local.get 2
    i32.const 29472
    local.get 1
    call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#set
    global.get $src/helpers/zeroBD
    i64.extend_i32_u
    local.set 5
    i32.const 16
    i32.const 6
    call $~lib/rt/stub/__new
    local.tee 1
    i32.const 2
    i32.store
    local.get 1
    local.get 5
    i64.store offset=8
    local.get 2
    i32.const 29520
    local.get 1
    call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#set
    i32.const 16
    i32.const 6
    call $~lib/rt/stub/__new
    local.tee 1
    i32.const 1
    i32.store
    local.get 1
    i64.const 0
    i64.store offset=8
    local.get 2
    i32.const 29568
    local.get 1
    call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#set
    local.get 2
    i32.const 0
    call $generated/schema/Market#set:supplierCount
    global.get $src/helpers/zeroBI
    i64.extend_i32_u
    local.set 5
    i32.const 16
    i32.const 6
    call $~lib/rt/stub/__new
    local.tee 1
    i32.const 7
    i32.store
    local.get 1
    local.get 5
    i64.store offset=8
    local.get 2
    i32.const 29664
    local.get 1
    call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#set
    global.get $src/helpers/zeroBI
    i64.extend_i32_u
    local.set 5
    i32.const 16
    i32.const 6
    call $~lib/rt/stub/__new
    local.tee 1
    i32.const 7
    i32.store
    local.get 1
    local.get 5
    i64.store offset=8
    local.get 2
    i32.const 29712
    local.get 1
    call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#set
    local.get 2
    global.get $src/helpers/zeroBI
    call $generated/schema/Market#set:borrowRewardSpeedNative
    local.get 2
    global.get $src/helpers/zeroBI
    call $generated/schema/Market#set:borrowRewardSpeedProtocol
    local.get 2
    global.get $src/helpers/zeroBI
    call $generated/schema/Market#set:supplyRewardSpeedNative
    local.get 2
    global.get $src/helpers/zeroBI
    call $generated/schema/Market#set:supplyRewardSpeedProtocol
    local.get 0
    i32.load
    if (result i32)  ;; label = @1
      local.get 0
      call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.CallResult<~lib/array/Array<~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value>>#get:value
    else
      i32.const 0
      call $~lib/@graphprotocol/graph-ts/common/collections/ByteArray.fromI32
    end
    i64.extend_i32_u
    local.set 5
    i32.const 16
    i32.const 6
    call $~lib/rt/stub/__new
    local.tee 0
    i32.const 7
    i32.store
    local.get 0
    local.get 5
    i64.store offset=8
    local.get 2
    i32.const 30080
    local.get 0
    call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#set
    local.get 2
    global.get $src/helpers/zeroBI
    call $generated/schema/Market#set:borrowRewardSpeedNative
    local.get 2
    global.get $src/helpers/zeroBI
    call $generated/schema/Market#set:borrowRewardSpeedProtocol
    local.get 2
    global.get $src/helpers/zeroBI
    call $generated/schema/Market#set:supplyRewardSpeedNative
    local.get 2
    global.get $src/helpers/zeroBI
    call $generated/schema/Market#set:supplyRewardSpeedProtocol
    global.get $src/helpers/zeroBD
    i64.extend_i32_u
    local.set 5
    i32.const 16
    i32.const 6
    call $~lib/rt/stub/__new
    local.tee 0
    i32.const 2
    i32.store
    local.get 0
    local.get 5
    i64.store offset=8
    local.get 2
    i32.const 30128
    local.get 0
    call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#set
    global.get $src/helpers/zeroBD
    i64.extend_i32_u
    local.set 5
    i32.const 16
    i32.const 6
    call $~lib/rt/stub/__new
    local.tee 0
    i32.const 2
    i32.store
    local.get 0
    local.get 5
    i64.store offset=8
    local.get 2
    i32.const 30192
    local.get 0
    call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#set
    global.get $src/helpers/zeroBD
    i64.extend_i32_u
    local.set 5
    i32.const 16
    i32.const 6
    call $~lib/rt/stub/__new
    local.tee 0
    i32.const 2
    i32.store
    local.get 0
    local.get 5
    i64.store offset=8
    local.get 2
    i32.const 30256
    local.get 0
    call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#set
    global.get $src/helpers/zeroBD
    i64.extend_i32_u
    local.set 5
    i32.const 16
    i32.const 6
    call $~lib/rt/stub/__new
    local.tee 0
    i32.const 2
    i32.store
    local.get 0
    local.get 5
    i64.store offset=8
    local.get 2
    i32.const 30320
    local.get 0
    call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#set
    global.get $src/helpers/zeroBI
    i64.extend_i32_u
    local.set 5
    i32.const 16
    i32.const 6
    call $~lib/rt/stub/__new
    local.tee 0
    i32.const 7
    i32.store
    local.get 0
    local.get 5
    i64.store offset=8
    local.get 2
    i32.const 30384
    local.get 0
    call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#set
    i32.const 16
    i32.const 6
    call $~lib/rt/stub/__new
    local.tee 0
    i32.const 1
    i32.store
    local.get 0
    i64.const 0
    i64.store offset=8
    local.get 2
    i32.const 30464
    local.get 0
    call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#set
    global.get $src/helpers/zeroBI
    i64.extend_i32_u
    local.set 5
    i32.const 16
    i32.const 6
    call $~lib/rt/stub/__new
    local.tee 0
    i32.const 7
    i32.store
    local.get 0
    local.get 5
    i64.store offset=8
    local.get 2
    i32.const 30560
    local.get 0
    call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#set
    i32.const 16
    i32.const 6
    call $~lib/rt/stub/__new
    local.tee 0
    i32.const 1
    i32.store
    local.get 0
    i64.const 0
    i64.store offset=8
    local.get 2
    i32.const 30640
    local.get 0
    call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#set
    global.get $src/helpers/zeroBI
    i64.extend_i32_u
    local.set 5
    i32.const 16
    i32.const 6
    call $~lib/rt/stub/__new
    local.tee 0
    i32.const 7
    i32.store
    local.get 0
    local.get 5
    i64.store offset=8
    local.get 2
    i32.const 30736
    local.get 0
    call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#set
    i32.const 16
    i32.const 6
    call $~lib/rt/stub/__new
    local.tee 0
    i32.const 1
    i32.store
    local.get 0
    i64.const 0
    i64.store offset=8
    local.get 2
    i32.const 30816
    local.get 0
    call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#set
    global.get $src/helpers/zeroBI
    i64.extend_i32_u
    local.set 5
    i32.const 16
    i32.const 6
    call $~lib/rt/stub/__new
    local.tee 0
    i32.const 7
    i32.store
    local.get 0
    local.get 5
    i64.store offset=8
    local.get 2
    i32.const 30912
    local.get 0
    call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#set
    i32.const 16
    i32.const 6
    call $~lib/rt/stub/__new
    local.tee 0
    i32.const 1
    i32.store
    local.get 0
    i64.const 0
    i64.store offset=8
    local.get 2
    i32.const 30992
    local.get 0
    call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#set
    i32.const 16
    i32.const 6
    call $~lib/rt/stub/__new
    local.tee 0
    i32.const 1
    i32.store
    local.get 0
    i64.const 0
    i64.store offset=8
    local.get 2
    i32.const 31088
    local.get 0
    call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#set
    i32.const 16
    i32.const 6
    call $~lib/rt/stub/__new
    local.tee 0
    i32.const 1
    i32.store
    local.get 0
    i64.const 0
    i64.store offset=8
    local.get 2
    i32.const 31152
    local.get 0
    call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#set
    i32.const 16
    i32.const 6
    call $~lib/rt/stub/__new
    local.tee 0
    i32.const 3
    i32.store
    local.get 0
    i64.const 0
    i64.store offset=8
    local.get 2
    i32.const 31200
    local.get 0
    call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#set
    i32.const 16
    i32.const 6
    call $~lib/rt/stub/__new
    local.tee 0
    i32.const 3
    i32.store
    local.get 0
    i64.const 0
    i64.store offset=8
    local.get 2
    i32.const 31248
    local.get 0
    call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#set
    i32.const 17120
    i32.const 2848
    call $~lib/@graphprotocol/graph-ts/index/store.get
    local.tee 0
    i32.eqz
    if  ;; label = @1
      i32.const 16304
      i32.const 31296
      i32.const 109
      i32.const 21
      call $~lib/builtins/abort
      unreachable
    end
    local.get 0
    i32.const 23232
    call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#get
    local.tee 0
    i32.eqz
    if  ;; label = @1
      i32.const 16304
      i32.const 25120
      i32.const 47
      i32.const 12
      call $~lib/builtins/abort
      unreachable
    end
    local.get 0
    call $~lib/@graphprotocol/graph-ts/common/value/Value#toString
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.stringToH160
    local.set 0
    i32.const 8
    i32.const 57
    call $~lib/rt/stub/__new
    i32.const 20432
    local.get 0
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.SmartContract#constructor
    local.get 2
    call $generated/schema/Market#get:underlyingSymbol
    global.get $config/config/config
    i32.load offset=4
    call $~lib/string/String.__eq
    if (result i32)  ;; label = @1
      local.get 2
      call $generated/schema/Market#get:symbol
    else
      local.get 2
      call $generated/schema/Market#get:underlyingSymbol
    end
    call $generated/Comptroller/PriceOracle/PriceOracle#getFeed
    local.set 0
    i32.const 8
    i32.const 30
    call $~lib/rt/stub/__new
    i32.const 20800
    local.get 0
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.SmartContract#constructor
    local.set 0
    call $~lib/@graphprotocol/graph-ts/common/datasource/dataSource.network
    i32.const 31344
    call $~lib/string/String.__eq
    if  ;; label = @1
      local.get 2
      i32.const 1568
      call $generated/schema/Market#set:_feed
    else
      local.get 2
      local.get 0
      i32.const 20688
      i32.const 20736
      i32.const 0
      i32.const 22
      i32.const 20848
      call $~lib/rt/__newArray
      call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.SmartContract#call
      i32.const 0
      call $~lib/array/Array<~lib/string/String>#__get
      call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value#toAddress
      call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.bytesToHex
      call $generated/schema/Market#set:_feed
    end
    local.get 2)
  (func $generated/schema/Market#save (type 5) (param i32)
    (local i32)
    local.get 0
    i32.const 23200
    call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#get
    local.tee 1
    i32.eqz
    if  ;; label = @1
      i32.const 31520
      i32.const 25120
      i32.const 90
      i32.const 5
      call $~lib/builtins/abort
      unreachable
    end
    local.get 1
    if  ;; label = @1
      local.get 1
      i32.load
      if  ;; label = @2
        i32.const 31796
        local.get 1
        call $~lib/@graphprotocol/graph-ts/common/value/Value#displayData
        i32.store
        i32.const 31804
        local.get 1
        call $~lib/@graphprotocol/graph-ts/common/value/Value#displayKind
        i32.store
        i32.const 31792
        i32.const 31788
        i32.load
        i32.const 2
        i32.shr_u
        i32.const 14480
        call $~lib/util/string/joinStringArray
        i32.const 25120
        i32.const 92
        i32.const 7
        call $~lib/builtins/abort
        unreachable
      end
      i32.const 27920
      local.get 1
      call $~lib/@graphprotocol/graph-ts/common/value/Value#toString
      local.get 0
      call $~lib/@graphprotocol/graph-ts/index/store.set
    end)
  (func $src/comptroller/handleMarketListed (type 5) (param i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32)
    i32.const 4
    i32.const 47
    call $~lib/rt/stub/__new
    local.tee 1
    i32.const 0
    i32.store
    local.get 1
    local.get 0
    i32.store
    local.get 1
    i32.load
    i32.load offset=24
    i32.const 0
    call $~lib/array/Array<~lib/string/String>#__get
    i32.load offset=4
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value#toAddress
    local.set 2
    i32.const 1
    i32.const 3
    i32.const 0
    call $~lib/rt/__newArray
    local.tee 1
    i32.load offset=4
    drop
    local.get 2
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.bytesToHex
    local.set 2
    local.get 1
    i32.load offset=4
    local.get 2
    i32.store
    i32.const 18944
    local.get 1
    call $~lib/@graphprotocol/graph-ts/common/datasource/dataSource.create
    i32.const 4
    i32.const 47
    call $~lib/rt/stub/__new
    local.tee 1
    i32.const 0
    i32.store
    local.get 1
    local.get 0
    i32.store
    local.get 1
    i32.load
    i32.load offset=24
    i32.const 0
    call $~lib/array/Array<~lib/string/String>#__get
    i32.load offset=4
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value#toAddress
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.bytesToHex
    local.tee 4
    call $src/markets/createMarket
    local.tee 5
    i32.eqz
    if  ;; label = @1
      i32.const 1
      i32.const 3
      i32.const 0
      call $~lib/rt/__newArray
      local.tee 0
      i32.load offset=4
      drop
      local.get 0
      i32.load offset=4
      local.get 4
      i32.store
      i32.const 2
      i32.const 31408
      local.get 0
      call $~lib/@graphprotocol/graph-ts/index/format
      call $~lib/@graphprotocol/graph-ts/index/log.log
      return
    end
    local.get 5
    call $generated/schema/Market#save
    i32.const 17120
    i32.const 2848
    call $~lib/@graphprotocol/graph-ts/index/store.get
    local.tee 2
    i32.eqz
    if  ;; label = @1
      i32.const 16304
      i32.const 31840
      i32.const 42
      i32.const 21
      call $~lib/builtins/abort
      unreachable
    end
    local.get 2
    i32.const 24960
    call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#get
    local.tee 0
    i32.eqz
    if  ;; label = @1
      i32.const 16304
      i32.const 25120
      i32.const 74
      i32.const 12
      call $~lib/builtins/abort
      unreachable
    end
    local.get 0
    call $~lib/@graphprotocol/graph-ts/common/value/Value#toArray
    local.tee 6
    i32.load offset=12
    local.set 1
    i32.const 16
    i32.const 3
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
    local.tee 7
    i32.const 0
    call $~lib/rt/stub/__new
    local.tee 8
    local.get 7
    call $~lib/memory/memory.fill
    local.get 0
    local.get 8
    i32.store
    local.get 0
    local.get 8
    i32.store offset=4
    local.get 0
    local.get 7
    i32.store offset=8
    local.get 0
    local.get 1
    i32.store offset=12
    loop  ;; label = @1
      local.get 3
      local.get 6
      i32.load offset=12
      i32.lt_s
      if  ;; label = @2
        local.get 0
        local.get 3
        local.get 6
        local.get 3
        call $~lib/array/Array<~lib/string/String>#__get
        call $~lib/@graphprotocol/graph-ts/common/value/Value#toString
        call $~lib/array/Array<~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value>#__set
        local.get 3
        i32.const 1
        i32.add
        local.set 3
        br 1 (;@1;)
      end
    end
    local.get 0
    local.get 4
    call $~lib/array/Array<~lib/@graphprotocol/graph-ts/common/collections/TypedMapEntry<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>>#push
    local.get 2
    i32.const 24960
    local.get 0
    call $~lib/@graphprotocol/graph-ts/common/value/Value.fromStringArray
    call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#set
    local.get 2
    call $generated/schema/Comptroller#save
    call $~lib/@graphprotocol/graph-ts/common/datasource/dataSource.network
    i32.const 31344
    call $~lib/string/String.__eq
    i32.eqz
    if  ;; label = @1
      local.get 5
      i32.const 31376
      call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#get
      local.tee 0
      i32.eqz
      if  ;; label = @2
        i32.const 16304
        i32.const 25120
        i32.const 493
        i32.const 12
        call $~lib/builtins/abort
        unreachable
      end
      local.get 0
      call $~lib/@graphprotocol/graph-ts/common/value/Value#toString
      call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.stringToH160
      local.set 1
      i32.const 1
      i32.const 3
      i32.const 0
      call $~lib/rt/__newArray
      local.tee 0
      i32.load offset=4
      drop
      local.get 1
      call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.bytesToHex
      local.set 1
      local.get 0
      i32.load offset=4
      local.get 1
      i32.store
      i32.const 31904
      local.get 0
      call $~lib/@graphprotocol/graph-ts/common/datasource/dataSource.create
    end)
  (func $start:tests/comptroller/comptroller.test~anonymous|2~anonymous|2 (type 2)
    (local i32)
    i32.const 0
    i32.const 27920
    call $~lib/matchstick-as/assembly/store/countEntities
    call $~lib/matchstick-as/assembly/assert/assert.i32Equals
    global.get $tests/comptroller/comptroller.test/movrMarketAddress
    call $tests/comptroller/utils/createMarketListedEvent
    call $src/comptroller/handleMarketListed
    i32.const 1
    i32.const 27920
    call $~lib/matchstick-as/assembly/store/countEntities
    call $~lib/matchstick-as/assembly/assert/assert.i32Equals
    i32.const 27920
    global.get $tests/comptroller/comptroller.test/movrMarketAddress
    local.tee 0
    i32.const 23200
    local.get 0
    call $~lib/matchstick-as/assembly/assert/assert.fieldEquals)
  (func $start:tests/comptroller/comptroller.test~anonymous|2~anonymous|3 (type 2)
    i32.const 27920
    global.get $tests/comptroller/comptroller.test/movrMarketAddress
    i32.const 28016
    i32.const 1568
    call $~lib/matchstick-as/assembly/assert/assert.fieldEquals
    i32.const 27920
    global.get $tests/comptroller/comptroller.test/movrMarketAddress
    i32.const 19568
    i32.const 19520
    call $~lib/matchstick-as/assembly/assert/assert.fieldEquals
    i32.const 27920
    global.get $tests/comptroller/comptroller.test/movrMarketAddress
    i32.const 19936
    i32.const 14112
    call $~lib/matchstick-as/assembly/assert/assert.fieldEquals
    i32.const 27920
    global.get $tests/comptroller/comptroller.test/movrMarketAddress
    i32.const 29232
    global.get $tests/comptroller/comptroller.test/expectedInterestRateModel
    call $~lib/matchstick-as/assembly/assert/assert.fieldEquals
    i32.const 27920
    global.get $tests/comptroller/comptroller.test/movrMarketAddress
    i32.const 31376
    global.get $tests/comptroller/comptroller.test/expectedMovrAggregator
    call $~lib/matchstick-as/assembly/assert/assert.fieldEquals)
  (func $start:tests/comptroller/comptroller.test~anonymous|2~anonymous|4 (type 2)
    (local i32)
    i32.const 1
    i32.const 27920
    call $~lib/matchstick-as/assembly/store/countEntities
    call $~lib/matchstick-as/assembly/assert/assert.i32Equals
    global.get $tests/comptroller/comptroller.test/xcksmMarketAddress
    call $tests/comptroller/utils/createMarketListedEvent
    call $src/comptroller/handleMarketListed
    i32.const 2
    i32.const 27920
    call $~lib/matchstick-as/assembly/store/countEntities
    call $~lib/matchstick-as/assembly/assert/assert.i32Equals
    i32.const 27920
    global.get $tests/comptroller/comptroller.test/xcksmMarketAddress
    local.tee 0
    i32.const 23200
    local.get 0
    call $~lib/matchstick-as/assembly/assert/assert.fieldEquals)
  (func $start:tests/comptroller/comptroller.test~anonymous|2~anonymous|5 (type 2)
    i32.const 27920
    global.get $tests/comptroller/comptroller.test/xcksmMarketAddress
    i32.const 28016
    global.get $tests/comptroller/comptroller.test/xcksmContractAddress
    call $~lib/matchstick-as/assembly/assert/assert.fieldEquals
    i32.const 27920
    global.get $tests/comptroller/comptroller.test/xcksmMarketAddress
    i32.const 19568
    i32.const 21376
    call $~lib/matchstick-as/assembly/assert/assert.fieldEquals
    i32.const 27920
    global.get $tests/comptroller/comptroller.test/xcksmMarketAddress
    i32.const 19936
    i32.const 14368
    call $~lib/matchstick-as/assembly/assert/assert.fieldEquals
    i32.const 27920
    global.get $tests/comptroller/comptroller.test/xcksmMarketAddress
    i32.const 29232
    global.get $tests/comptroller/comptroller.test/expectedInterestRateModel
    call $~lib/matchstick-as/assembly/assert/assert.fieldEquals
    i32.const 27920
    global.get $tests/comptroller/comptroller.test/xcksmMarketAddress
    i32.const 31376
    global.get $tests/comptroller/comptroller.test/expectedXcksmAggregator
    call $~lib/matchstick-as/assembly/assert/assert.fieldEquals)
  (func $generated/schema/Account#constructor (type 0) (param i32) (result i32)
    (local i32 i32 i64)
    i32.const 4
    i32.const 58
    call $~lib/rt/stub/__new
    call $~lib/@graphprotocol/graph-ts/common/collections/Entity#constructor
    local.tee 1
    local.set 2
    local.get 0
    i64.extend_i32_u
    local.set 3
    i32.const 16
    i32.const 6
    call $~lib/rt/stub/__new
    local.tee 0
    i32.const 0
    i32.store
    local.get 0
    local.get 3
    i64.store offset=8
    local.get 2
    i32.const 23200
    local.get 0
    call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#set
    local.get 1)
  (func $generated/schema/Account#set:countLiquidated (type 5) (param i32)
    (local i32)
    i32.const 16
    i32.const 6
    call $~lib/rt/stub/__new
    local.tee 1
    i32.const 1
    i32.store
    local.get 1
    i64.const 0
    i64.store offset=8
    local.get 0
    i32.const 32576
    local.get 1
    call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#set)
  (func $generated/schema/Account#set:countLiquidator (type 5) (param i32)
    (local i32)
    i32.const 16
    i32.const 6
    call $~lib/rt/stub/__new
    local.tee 1
    i32.const 1
    i32.store
    local.get 1
    i64.const 0
    i64.store offset=8
    local.get 0
    i32.const 32640
    local.get 1
    call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#set)
  (func $generated/schema/Account#save (type 5) (param i32)
    (local i32)
    local.get 0
    i32.const 23200
    call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#get
    local.tee 1
    i32.eqz
    if  ;; label = @1
      i32.const 32752
      i32.const 25120
      i32.const 509
      i32.const 5
      call $~lib/builtins/abort
      unreachable
    end
    local.get 1
    if  ;; label = @1
      local.get 1
      i32.load
      if  ;; label = @2
        i32.const 33028
        local.get 1
        call $~lib/@graphprotocol/graph-ts/common/value/Value#displayData
        i32.store
        i32.const 33036
        local.get 1
        call $~lib/@graphprotocol/graph-ts/common/value/Value#displayKind
        i32.store
        i32.const 33024
        i32.const 33020
        i32.load
        i32.const 2
        i32.shr_u
        i32.const 14480
        call $~lib/util/string/joinStringArray
        i32.const 25120
        i32.const 511
        i32.const 7
        call $~lib/builtins/abort
        unreachable
      end
      i32.const 32464
      local.get 1
      call $~lib/@graphprotocol/graph-ts/common/value/Value#toString
      local.get 0
      call $~lib/@graphprotocol/graph-ts/index/store.set
    end)
  (func $tests/comptroller/utils/saveAccount (type 5) (param i32)
    (local i32)
    i32.const 32464
    local.get 0
    call $~lib/@graphprotocol/graph-ts/index/store.get
    local.tee 1
    i32.eqz
    if  ;; label = @1
      local.get 0
      call $generated/schema/Account#constructor
      local.tee 1
      i32.const 32544
      i32.const 0
      i32.const 3
      i32.const 32512
      call $~lib/rt/__newArray
      call $~lib/@graphprotocol/graph-ts/common/value/Value.fromStringArray
      call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#set
      local.get 1
      call $generated/schema/Account#set:countLiquidated
      local.get 1
      call $generated/schema/Account#set:countLiquidator
      i32.const 16
      i32.const 6
      call $~lib/rt/stub/__new
      local.tee 0
      i32.const 3
      i32.store
      local.get 0
      i64.const 0
      i64.store offset=8
      local.get 1
      i32.const 32704
      local.get 0
      call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#set
    end
    local.get 1
    call $generated/schema/Account#save)
  (func $start:tests/comptroller/comptroller.test~anonymous|2~anonymous|6 (type 2)
    i32.const 0
    i32.const 32464
    call $~lib/matchstick-as/assembly/store/countEntities
    call $~lib/matchstick-as/assembly/assert/assert.i32Equals
    global.get $tests/comptroller/comptroller.test/testAccountAddress1
    call $tests/comptroller/utils/saveAccount
    i32.const 1
    i32.const 32464
    call $~lib/matchstick-as/assembly/store/countEntities
    call $~lib/matchstick-as/assembly/assert/assert.i32Equals
    global.get $tests/comptroller/comptroller.test/testAccountAddress2
    call $tests/comptroller/utils/saveAccount
    i32.const 2
    i32.const 32464
    call $~lib/matchstick-as/assembly/store/countEntities
    call $~lib/matchstick-as/assembly/assert/assert.i32Equals)
  (func $start:tests/comptroller/comptroller.test~anonymous|2 (type 2)
    i32.const 23088
    i32.load
    i32.const 14816
    call $~lib/matchstick-as/assembly/index/_registerHook
    i32.const 23120
    i32.const 0
    i32.const 27808
    i32.load
    call $~lib/matchstick-as/assembly/index/_registerTest
    i32.const 27840
    i32.const 0
    i32.const 31936
    i32.load
    call $~lib/matchstick-as/assembly/index/_registerTest
    i32.const 31968
    i32.const 0
    i32.const 32080
    i32.load
    call $~lib/matchstick-as/assembly/index/_registerTest
    i32.const 32112
    i32.const 0
    i32.const 32192
    i32.load
    call $~lib/matchstick-as/assembly/index/_registerTest
    i32.const 32224
    i32.const 0
    i32.const 32352
    i32.load
    call $~lib/matchstick-as/assembly/index/_registerTest
    i32.const 32384
    i32.const 0
    i32.const 33072
    i32.load
    call $~lib/matchstick-as/assembly/index/_registerTest)
  (func $~lib/@graphprotocol/graph-ts/common/numbers/BigDecimal#div (type 3) (param i32 i32) (result i32)
    local.get 0
    i32.eqz
    if  ;; label = @1
      i32.const 33392
      i32.const 4112
      i32.const 398
      i32.const 5
      call $~lib/builtins/abort
      unreachable
    end
    local.get 0
    local.get 1
    call $~lib/@graphprotocol/graph-ts/common/numbers/bigDecimal.dividedBy)
  (func $~lib/@graphprotocol/graph-ts/common/numbers/BigDecimal#truncate (type 3) (param i32 i32) (result i32)
    (local i32 i32 i32 i32)
    local.get 1
    local.get 0
    i32.load
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.bigIntToString
    i32.const 20
    i32.sub
    i32.load offset=16
    i32.const 1
    i32.shr_u
    local.get 0
    i32.load offset=4
    call $~lib/@graphprotocol/graph-ts/common/collections/ByteArray#toI32
    i32.add
    i32.add
    local.set 2
    local.get 0
    i32.load
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.bigIntToString
    i32.const 20
    i32.sub
    i32.load offset=16
    i32.const 1
    i32.shr_u
    local.get 2
    i32.sub
    local.tee 4
    i32.const 0
    i32.ge_s
    if  ;; label = @1
      loop  ;; label = @2
        local.get 3
        local.get 4
        i32.lt_s
        if  ;; label = @3
          local.get 0
          i32.load
          local.set 2
          i32.const 10
          call $~lib/@graphprotocol/graph-ts/common/collections/ByteArray.fromI32
          local.set 5
          local.get 2
          i32.eqz
          if  ;; label = @4
            i32.const 33536
            i32.const 4112
            i32.const 202
            i32.const 5
            call $~lib/builtins/abort
            unreachable
          end
          local.get 0
          local.get 2
          local.get 5
          call $~lib/@graphprotocol/graph-ts/common/numbers/bigInt.dividedBy
          i32.store
          local.get 3
          i32.const 1
          i32.add
          local.set 3
          br 1 (;@2;)
        end
      end
      local.get 0
      i32.const 0
      local.get 1
      i32.sub
      call $~lib/@graphprotocol/graph-ts/common/collections/ByteArray.fromI32
      i32.store offset=4
    end
    local.get 0)
  (func $~lib/string/String#substr (type 6) (param i32 i32 i32) (result i32)
    (local i32 i32)
    local.get 0
    i32.const 20
    i32.sub
    i32.load offset=16
    i32.const 1
    i32.shr_u
    local.set 4
    local.get 1
    local.tee 3
    i32.const 0
    i32.lt_s
    if  ;; label = @1
      local.get 3
      local.get 4
      i32.add
      local.tee 1
      i32.const 0
      local.get 1
      i32.const 0
      i32.gt_s
      select
      local.set 3
    end
    local.get 2
    i32.const 0
    local.get 2
    i32.const 0
    i32.gt_s
    select
    local.tee 1
    local.get 4
    local.get 3
    i32.sub
    local.tee 2
    local.get 1
    local.get 2
    i32.lt_s
    select
    i32.const 1
    i32.shl
    local.tee 1
    i32.const 0
    i32.le_s
    if  ;; label = @1
      i32.const 14480
      return
    end
    local.get 1
    i32.const 1
    call $~lib/rt/stub/__new
    local.tee 2
    local.get 0
    local.get 3
    i32.const 1
    i32.shl
    i32.add
    local.get 1
    call $~lib/memory/memory.copy
    local.get 2)
  (func $~lib/util/string/strtol<i32> (type 0) (param i32) (result i32)
    (local i32 i32 i32 i32)
    local.get 0
    i32.const 20
    i32.sub
    i32.load offset=16
    i32.const 1
    i32.shr_u
    local.tee 1
    i32.eqz
    if  ;; label = @1
      i32.const 0
      return
    end
    local.get 0
    local.tee 2
    i32.load16_u
    local.set 0
    loop  ;; label = @1
      block (result i32)  ;; label = @2
        local.get 0
        i32.const 128
        i32.or
        i32.const 160
        i32.eq
        local.get 0
        i32.const 9
        i32.sub
        i32.const 4
        i32.le_u
        i32.or
        local.get 0
        i32.const 5760
        i32.lt_u
        br_if 0 (;@2;)
        drop
        i32.const 1
        local.get 0
        i32.const -8192
        i32.add
        i32.const 10
        i32.le_u
        br_if 0 (;@2;)
        drop
        block  ;; label = @3
          block  ;; label = @4
            local.get 0
            i32.const 5760
            i32.eq
            br_if 0 (;@4;)
            local.get 0
            i32.const 8232
            i32.eq
            br_if 0 (;@4;)
            local.get 0
            i32.const 8233
            i32.eq
            br_if 0 (;@4;)
            local.get 0
            i32.const 8239
            i32.eq
            br_if 0 (;@4;)
            local.get 0
            i32.const 8287
            i32.eq
            br_if 0 (;@4;)
            local.get 0
            i32.const 12288
            i32.eq
            br_if 0 (;@4;)
            local.get 0
            i32.const 65279
            i32.eq
            br_if 0 (;@4;)
            br 1 (;@3;)
          end
          i32.const 1
          br 1 (;@2;)
        end
        i32.const 0
      end
      if  ;; label = @2
        local.get 2
        i32.const 2
        i32.add
        local.tee 2
        i32.load16_u
        local.set 0
        local.get 1
        i32.const 1
        i32.sub
        local.set 1
        br 1 (;@1;)
      end
    end
    i32.const 1
    local.set 4
    i32.const 1
    local.get 0
    i32.const 43
    i32.eq
    local.get 0
    i32.const 45
    i32.eq
    select
    if (result i32)  ;; label = @1
      local.get 1
      i32.const 1
      i32.sub
      local.tee 1
      i32.eqz
      if  ;; label = @2
        i32.const 0
        return
      end
      i32.const -1
      i32.const 1
      local.get 0
      i32.const 45
      i32.eq
      select
      local.set 4
      local.get 2
      i32.const 2
      i32.add
      local.tee 2
      i32.load16_u
    else
      local.get 0
    end
    i32.const 48
    i32.eq
    i32.const 0
    local.get 1
    i32.const 2
    i32.gt_s
    select
    if (result i32)  ;; label = @1
      local.get 2
      i32.load16_u offset=2
      i32.const 32
      i32.or
      i32.const 120
      i32.eq
    else
      i32.const 0
    end
    if  ;; label = @1
      block (result i32)  ;; label = @2
        local.get 2
        i32.const 4
        i32.add
        local.set 2
        local.get 1
        i32.const 2
        i32.sub
      end
      local.set 1
    end
    loop  ;; label = @1
      block  ;; label = @2
        local.get 1
        local.tee 0
        i32.const 1
        i32.sub
        local.set 1
        local.get 0
        if  ;; label = @3
          local.get 2
          i32.load16_u
          local.tee 0
          i32.const 48
          i32.sub
          i32.const 10
          i32.lt_u
          if (result i32)  ;; label = @4
            local.get 0
            i32.const 48
            i32.sub
          else
            local.get 0
            i32.const 65
            i32.sub
            i32.const 25
            i32.le_u
            if (result i32)  ;; label = @5
              local.get 0
              i32.const 55
              i32.sub
            else
              local.get 0
              i32.const 87
              i32.sub
              local.get 0
              local.get 0
              i32.const 97
              i32.sub
              i32.const 25
              i32.le_u
              select
            end
          end
          local.tee 0
          i32.const 16
          i32.ge_u
          if  ;; label = @4
            local.get 3
            i32.eqz
            if  ;; label = @5
              i32.const 0
              return
            end
            br 2 (;@2;)
          end
          local.get 0
          local.get 3
          i32.const 4
          i32.shl
          i32.add
          local.set 3
          local.get 2
          i32.const 2
          i32.add
          local.set 2
          br 2 (;@1;)
        end
      end
    end
    local.get 3
    local.get 4
    i32.mul)
  (func $~lib/@graphprotocol/graph-ts/common/collections/ByteArray.fromHexString (type 0) (param i32) (result i32)
    (local i32 i32)
    local.get 0
    i32.const 20
    i32.sub
    i32.load offset=16
    i32.const 1
    i32.shr_u
    i32.const 1
    i32.and
    if  ;; label = @1
      i32.const 33872
      local.get 0
      call $~lib/string/String#concat
      i32.const 33904
      call $~lib/string/String#concat
      i32.const 22336
      i32.const 75
      i32.const 5
      call $~lib/builtins/abort
      unreachable
    end
    block (result i32)  ;; label = @1
      local.get 0
      i32.const 20
      i32.sub
      i32.load offset=16
      i32.const 1
      i32.shr_u
      i32.const 2
      i32.ge_u
      if (result i32)  ;; label = @2
        local.get 0
        i32.const 0
        call $~lib/string/String#charAt
        i32.const 2816
        call $~lib/string/String.__eq
      else
        i32.const 0
      end
      if (result i32)  ;; label = @2
        local.get 0
        i32.const 1
        call $~lib/string/String#charAt
        i32.const 33968
        call $~lib/string/String.__eq
      else
        i32.const 0
      end
      if  ;; label = @2
        local.get 0
        i32.const 2
        i32.const 2147483647
        call $~lib/string/String#substr
        local.set 0
      end
      local.get 0
    end
    i32.const 20
    i32.sub
    i32.load offset=16
    i32.const 2
    i32.shr_u
    local.set 1
    i32.const 12
    i32.const 11
    call $~lib/rt/stub/__new
    local.get 1
    call $~lib/@graphprotocol/graph-ts/common/collections/ByteArray#constructor
    local.set 1
    loop  ;; label = @1
      local.get 2
      local.get 0
      i32.const 20
      i32.sub
      i32.load offset=16
      i32.const 1
      i32.shr_u
      i32.lt_s
      if  ;; label = @2
        local.get 1
        local.get 2
        i32.const 2
        i32.div_s
        local.get 0
        local.get 2
        i32.const 2
        call $~lib/string/String#substr
        call $~lib/util/string/strtol<i32>
        i32.extend8_s
        call $~lib/typedarray/Uint8Array#__set
        local.get 2
        i32.const 2
        i32.add
        local.set 2
        br 1 (;@1;)
      end
    end
    local.get 1)
  (func $tests/comptroller/utils/createNewMintEvent (type 7) (param i32 i32 i32 i32) (result i32)
    (local i32 i32 i64)
    local.get 0
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.stringToH160
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value.fromAddress
    local.set 4
    i32.const 8
    i32.const 40
    call $~lib/rt/stub/__new
    local.tee 0
    i32.const 33744
    i32.store
    local.get 0
    local.get 4
    i32.store offset=4
    local.get 2
    i64.extend_i32_u
    local.set 6
    i32.const 16
    i32.const 21
    call $~lib/rt/stub/__new
    local.tee 4
    i32.const 4
    i32.store
    local.get 4
    local.get 6
    i64.store offset=8
    i32.const 8
    i32.const 40
    call $~lib/rt/stub/__new
    local.tee 5
    i32.const 33776
    i32.store
    local.get 5
    local.get 4
    i32.store offset=4
    local.get 2
    i64.extend_i32_u
    local.set 6
    i32.const 16
    i32.const 21
    call $~lib/rt/stub/__new
    local.tee 2
    i32.const 4
    i32.store
    local.get 2
    local.get 6
    i64.store offset=8
    i32.const 8
    i32.const 40
    call $~lib/rt/stub/__new
    local.tee 4
    i32.const 33824
    i32.store
    local.get 4
    local.get 2
    i32.store offset=4
    i32.const 3
    i32.const 41
    i32.const 0
    call $~lib/rt/__newArray
    local.tee 2
    i32.load offset=4
    drop
    local.get 2
    i32.load offset=4
    local.get 0
    i32.store
    local.get 2
    i32.load offset=4
    local.get 5
    i32.store offset=4
    local.get 2
    i32.load offset=4
    local.get 4
    i32.store offset=8
    call $~lib/matchstick-as/assembly/defaults/newMockEvent
    local.tee 0
    local.get 2
    i32.store offset=24
    local.get 0
    local.get 1
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.stringToH160
    i32.store
    local.get 0
    i32.load offset=20
    local.get 3
    call $~lib/@graphprotocol/graph-ts/common/collections/ByteArray.fromHexString
    i32.store
    local.get 0)
  (func $generated/schema/Market#get:underlyingDecimals (type 0) (param i32) (result i32)
    local.get 0
    i32.const 28080
    call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#get
    local.tee 0
    i32.eqz
    if  ;; label = @1
      i32.const 16304
      i32.const 25120
      i32.const 178
      i32.const 12
      call $~lib/builtins/abort
      unreachable
    end
    local.get 0
    call $~lib/@graphprotocol/graph-ts/common/value/Value#toI32)
  (func $generated/schema/MintEvent#set:amount (type 1) (param i32 i32)
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
    i32.const 34128
    local.get 1
    call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#set)
  (func $generated/schema/MintEvent#set:to (type 1) (param i32 i32)
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
    i32.const 34160
    local.get 1
    call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#set)
  (func $generated/schema/MintEvent#set:from (type 1) (param i32 i32)
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
    i32.const 34192
    local.get 1
    call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#set)
  (func $generated/schema/MintEvent#set:blockNumber (type 1) (param i32 i32)
    (local i64)
    local.get 1
    i64.extend_i32_s
    local.set 2
    i32.const 16
    i32.const 6
    call $~lib/rt/stub/__new
    local.tee 1
    i32.const 1
    i32.store
    local.get 1
    local.get 2
    i64.store offset=8
    local.get 0
    i32.const 34224
    local.get 1
    call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#set)
  (func $generated/schema/MintEvent#set:blockTime (type 1) (param i32 i32)
    (local i64)
    local.get 1
    i64.extend_i32_s
    local.set 2
    i32.const 16
    i32.const 6
    call $~lib/rt/stub/__new
    local.tee 1
    i32.const 1
    i32.store
    local.get 1
    local.get 2
    i64.store offset=8
    local.get 0
    i32.const 34272
    local.get 1
    call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#set)
  (func $generated/schema/MintEvent#set:cTokenSymbol (type 1) (param i32 i32)
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
    i32.const 34320
    local.get 1
    call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#set)
  (func $src/ctoken/handleMint (type 5) (param i32)
    (local i32 i32 i32 i32 i32 i32 i32 i64)
    i32.const 27920
    local.get 0
    i32.load
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.bytesToHex
    local.tee 5
    call $~lib/@graphprotocol/graph-ts/index/store.get
    local.tee 3
    i32.eqz
    if  ;; label = @1
      i32.const 16304
      i32.const 34048
      i32.const 49
      i32.const 16
      call $~lib/builtins/abort
      unreachable
    end
    local.get 0
    i32.load offset=20
    i32.load
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.bytesToHex
    i32.const 34096
    call $~lib/string/String#concat
    local.get 0
    i32.load offset=8
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.bigIntToString
    call $~lib/string/String#concat
    local.set 2
    i32.const 4
    i32.const 61
    call $~lib/rt/stub/__new
    local.tee 1
    i32.const 0
    i32.store
    local.get 1
    local.get 0
    i32.store
    local.get 1
    i32.load
    i32.load offset=24
    i32.const 2
    call $~lib/array/Array<~lib/string/String>#__get
    i32.load offset=4
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value#toBigInt
    call $~lib/@graphprotocol/graph-ts/common/numbers/BigDecimal#constructor
    global.get $src/helpers/cTokenDecimalsBD
    call $~lib/@graphprotocol/graph-ts/common/numbers/BigDecimal#div
    i32.const 8
    call $~lib/@graphprotocol/graph-ts/common/numbers/BigDecimal#truncate
    local.set 6
    i32.const 4
    i32.const 61
    call $~lib/rt/stub/__new
    local.tee 1
    i32.const 0
    i32.store
    local.get 1
    local.get 0
    i32.store
    local.get 1
    i32.load
    i32.load offset=24
    i32.const 1
    call $~lib/array/Array<~lib/string/String>#__get
    i32.load offset=4
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value#toBigInt
    call $~lib/@graphprotocol/graph-ts/common/numbers/BigDecimal#constructor
    local.get 3
    call $generated/schema/Market#get:underlyingDecimals
    call $src/helpers/exponentToBigDecimal
    call $~lib/@graphprotocol/graph-ts/common/numbers/BigDecimal#div
    local.get 3
    call $generated/schema/Market#get:underlyingDecimals
    call $~lib/@graphprotocol/graph-ts/common/numbers/BigDecimal#truncate
    local.set 4
    i32.const 4
    i32.const 62
    call $~lib/rt/stub/__new
    call $~lib/@graphprotocol/graph-ts/common/collections/Entity#constructor
    local.tee 1
    local.set 7
    local.get 2
    i64.extend_i32_u
    local.set 8
    i32.const 16
    i32.const 6
    call $~lib/rt/stub/__new
    local.tee 2
    i32.const 0
    i32.store
    local.get 2
    local.get 8
    i64.store offset=8
    local.get 7
    i32.const 23200
    local.get 2
    call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#set
    local.get 1
    local.get 6
    call $generated/schema/MintEvent#set:amount
    i32.const 4
    i32.const 61
    call $~lib/rt/stub/__new
    local.tee 2
    i32.const 0
    i32.store
    local.get 2
    local.get 0
    i32.store
    local.get 1
    local.get 2
    i32.load
    i32.load offset=24
    i32.const 0
    call $~lib/array/Array<~lib/string/String>#__get
    i32.load offset=4
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value#toAddress
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.bytesToHex
    call $generated/schema/MintEvent#set:to
    local.get 1
    local.get 5
    call $generated/schema/MintEvent#set:from
    local.get 1
    local.get 0
    i32.load offset=16
    i32.load offset=28
    call $~lib/@graphprotocol/graph-ts/common/collections/ByteArray#toI32
    call $generated/schema/MintEvent#set:blockNumber
    local.get 1
    local.get 0
    i32.load offset=16
    i32.load offset=40
    call $~lib/@graphprotocol/graph-ts/common/collections/ByteArray#toI32
    call $generated/schema/MintEvent#set:blockTime
    local.get 1
    local.get 3
    call $generated/schema/Market#get:symbol
    call $generated/schema/MintEvent#set:cTokenSymbol
    local.get 4
    if  ;; label = @1
      local.get 4
      i64.extend_i32_u
      local.set 8
      i32.const 16
      i32.const 6
      call $~lib/rt/stub/__new
      local.tee 0
      i32.const 2
      i32.store
      local.get 0
      local.get 8
      i64.store offset=8
    else
      i32.const 16
      i32.const 6
      call $~lib/rt/stub/__new
      local.tee 0
      i32.const 5
      i32.store
      local.get 0
      i64.const 0
      i64.store offset=8
    end
    local.get 1
    i32.const 34368
    local.get 0
    call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#set
    local.get 1
    i32.const 23200
    call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#get
    local.tee 0
    i32.eqz
    if  ;; label = @1
      i32.const 34432
      i32.const 25120
      i32.const 1429
      i32.const 5
      call $~lib/builtins/abort
      unreachable
    end
    local.get 0
    if  ;; label = @1
      local.get 0
      i32.load
      if  ;; label = @2
        i32.const 34708
        local.get 0
        call $~lib/@graphprotocol/graph-ts/common/value/Value#displayData
        i32.store
        i32.const 34716
        local.get 0
        call $~lib/@graphprotocol/graph-ts/common/value/Value#displayKind
        i32.store
        i32.const 34704
        i32.const 34700
        i32.load
        i32.const 2
        i32.shr_u
        i32.const 14480
        call $~lib/util/string/joinStringArray
        i32.const 25120
        i32.const 1431
        i32.const 7
        call $~lib/builtins/abort
        unreachable
      end
      i32.const 34000
      local.get 0
      call $~lib/@graphprotocol/graph-ts/common/value/Value#toString
      local.get 1
      call $~lib/@graphprotocol/graph-ts/index/store.set
    end)
  (func $tests/comptroller/utils/handleNewMints~anonymous|0 (type 4) (param i32 i32 i32)
    local.get 0
    call $src/ctoken/handleMint)
  (func $start:tests/comptroller/comptroller.test~anonymous|3~anonymous|0 (type 2)
    (local i32 i32 i32 i32 i32 i32)
    i32.const 2944
    call $~lib/@graphprotocol/graph-ts/common/numbers/bigInt.fromString
    local.tee 1
    call $~lib/@graphprotocol/graph-ts/common/numbers/BigDecimal#constructor
    global.get $src/helpers/cTokenDecimalsBD
    call $~lib/@graphprotocol/graph-ts/common/numbers/BigDecimal#div
    i32.const 8
    call $~lib/@graphprotocol/graph-ts/common/numbers/BigDecimal#truncate
    local.set 3
    i32.const 33680
    call $~lib/@graphprotocol/graph-ts/common/numbers/bigInt.fromString
    local.tee 0
    call $~lib/@graphprotocol/graph-ts/common/numbers/BigDecimal#constructor
    global.get $src/helpers/cTokenDecimalsBD
    call $~lib/@graphprotocol/graph-ts/common/numbers/BigDecimal#div
    i32.const 8
    call $~lib/@graphprotocol/graph-ts/common/numbers/BigDecimal#truncate
    local.set 4
    global.get $tests/comptroller/comptroller.test/testAccountAddress1
    global.get $tests/comptroller/comptroller.test/movrMarketAddress
    local.get 1
    i32.const 14400
    i32.const 2848
    i32.const 64
    call $~lib/string/String#repeat
    call $~lib/string/String#concat
    call $tests/comptroller/utils/createNewMintEvent
    local.set 2
    global.get $tests/comptroller/comptroller.test/testAccountAddress2
    global.get $tests/comptroller/comptroller.test/movrMarketAddress
    local.get 0
    i32.const 14400
    i32.const 2880
    i32.const 64
    call $~lib/string/String#repeat
    call $~lib/string/String#concat
    call $tests/comptroller/utils/createNewMintEvent
    local.set 0
    i32.const 0
    i32.const 34000
    call $~lib/matchstick-as/assembly/store/countEntities
    call $~lib/matchstick-as/assembly/assert/assert.i32Equals
    i32.const 2
    i32.const 60
    i32.const 0
    call $~lib/rt/__newArray
    local.tee 1
    i32.load offset=4
    drop
    local.get 1
    i32.load offset=4
    local.get 2
    i32.store
    local.get 1
    i32.load offset=4
    local.get 0
    i32.store offset=4
    i32.const 0
    local.set 0
    local.get 1
    i32.load offset=12
    local.set 2
    loop  ;; label = @1
      local.get 0
      local.get 2
      local.get 1
      i32.load offset=12
      local.tee 5
      local.get 2
      local.get 5
      i32.lt_s
      select
      i32.lt_s
      if  ;; label = @2
        local.get 1
        i32.load offset=4
        local.get 0
        i32.const 2
        i32.shl
        i32.add
        i32.load
        local.get 0
        local.get 1
        i32.const 34752
        i32.load
        call_indirect $0 (type 4)
        local.get 0
        i32.const 1
        i32.add
        local.set 0
        br 1 (;@1;)
      end
    end
    i32.const 2
    i32.const 34000
    call $~lib/matchstick-as/assembly/store/countEntities
    call $~lib/matchstick-as/assembly/assert/assert.i32Equals
    i32.const 34000
    i32.const 14400
    i32.const 2848
    i32.const 64
    call $~lib/string/String#repeat
    call $~lib/string/String#concat
    i32.const 2784
    call $~lib/string/String#concat
    i32.const 23200
    i32.const 14400
    i32.const 2848
    i32.const 64
    call $~lib/string/String#repeat
    call $~lib/string/String#concat
    i32.const 2784
    call $~lib/string/String#concat
    call $~lib/matchstick-as/assembly/assert/assert.fieldEquals
    i32.const 34000
    i32.const 14400
    i32.const 2848
    i32.const 64
    call $~lib/string/String#repeat
    call $~lib/string/String#concat
    i32.const 2784
    call $~lib/string/String#concat
    i32.const 34160
    global.get $tests/comptroller/comptroller.test/testAccountAddress1
    call $~lib/matchstick-as/assembly/assert/assert.fieldEquals
    i32.const 34000
    i32.const 14400
    i32.const 2848
    i32.const 64
    call $~lib/string/String#repeat
    call $~lib/string/String#concat
    i32.const 2784
    call $~lib/string/String#concat
    i32.const 34192
    global.get $tests/comptroller/comptroller.test/movrMarketAddress
    call $~lib/matchstick-as/assembly/assert/assert.fieldEquals
    i32.const 34000
    i32.const 14400
    i32.const 2848
    i32.const 64
    call $~lib/string/String#repeat
    call $~lib/string/String#concat
    i32.const 2784
    call $~lib/string/String#concat
    i32.const 34128
    local.get 3
    call $~lib/@graphprotocol/graph-ts/common/numbers/bigDecimal.toString
    call $~lib/matchstick-as/assembly/assert/assert.fieldEquals
    i32.const 34000
    i32.const 14400
    i32.const 2880
    i32.const 64
    call $~lib/string/String#repeat
    call $~lib/string/String#concat
    i32.const 2784
    call $~lib/string/String#concat
    i32.const 23200
    i32.const 14400
    i32.const 2880
    i32.const 64
    call $~lib/string/String#repeat
    call $~lib/string/String#concat
    i32.const 2784
    call $~lib/string/String#concat
    call $~lib/matchstick-as/assembly/assert/assert.fieldEquals
    i32.const 34000
    i32.const 14400
    i32.const 2880
    i32.const 64
    call $~lib/string/String#repeat
    call $~lib/string/String#concat
    i32.const 2784
    call $~lib/string/String#concat
    i32.const 34160
    global.get $tests/comptroller/comptroller.test/testAccountAddress2
    call $~lib/matchstick-as/assembly/assert/assert.fieldEquals
    i32.const 34000
    i32.const 14400
    i32.const 2880
    i32.const 64
    call $~lib/string/String#repeat
    call $~lib/string/String#concat
    i32.const 2784
    call $~lib/string/String#concat
    i32.const 34192
    global.get $tests/comptroller/comptroller.test/movrMarketAddress
    call $~lib/matchstick-as/assembly/assert/assert.fieldEquals
    i32.const 34000
    i32.const 14400
    i32.const 2880
    i32.const 64
    call $~lib/string/String#repeat
    call $~lib/string/String#concat
    i32.const 2784
    call $~lib/string/String#concat
    i32.const 34128
    local.get 4
    call $~lib/@graphprotocol/graph-ts/common/numbers/bigDecimal.toString
    call $~lib/matchstick-as/assembly/assert/assert.fieldEquals)
  (func $start:tests/comptroller/comptroller.test~anonymous|3~anonymous|1 (type 2)
    (local i32 i32 i32 i32 i32 i32)
    i32.const 34944
    call $~lib/@graphprotocol/graph-ts/common/numbers/bigInt.fromString
    local.tee 1
    call $~lib/@graphprotocol/graph-ts/common/numbers/BigDecimal#constructor
    global.get $src/helpers/cTokenDecimalsBD
    call $~lib/@graphprotocol/graph-ts/common/numbers/BigDecimal#div
    i32.const 8
    call $~lib/@graphprotocol/graph-ts/common/numbers/BigDecimal#truncate
    local.set 3
    i32.const 35008
    call $~lib/@graphprotocol/graph-ts/common/numbers/bigInt.fromString
    local.tee 0
    call $~lib/@graphprotocol/graph-ts/common/numbers/BigDecimal#constructor
    global.get $src/helpers/cTokenDecimalsBD
    call $~lib/@graphprotocol/graph-ts/common/numbers/BigDecimal#div
    i32.const 8
    call $~lib/@graphprotocol/graph-ts/common/numbers/BigDecimal#truncate
    local.set 4
    global.get $tests/comptroller/comptroller.test/testAccountAddress1
    global.get $tests/comptroller/comptroller.test/xcksmMarketAddress
    local.get 1
    i32.const 14400
    i32.const 35072
    i32.const 64
    call $~lib/string/String#repeat
    call $~lib/string/String#concat
    call $tests/comptroller/utils/createNewMintEvent
    local.set 2
    global.get $tests/comptroller/comptroller.test/testAccountAddress2
    global.get $tests/comptroller/comptroller.test/xcksmMarketAddress
    local.get 0
    i32.const 14400
    i32.const 35104
    i32.const 64
    call $~lib/string/String#repeat
    call $~lib/string/String#concat
    call $tests/comptroller/utils/createNewMintEvent
    local.set 0
    i32.const 2
    i32.const 34000
    call $~lib/matchstick-as/assembly/store/countEntities
    call $~lib/matchstick-as/assembly/assert/assert.i32Equals
    i32.const 2
    i32.const 60
    i32.const 0
    call $~lib/rt/__newArray
    local.tee 1
    i32.load offset=4
    drop
    local.get 1
    i32.load offset=4
    local.get 2
    i32.store
    local.get 1
    i32.load offset=4
    local.get 0
    i32.store offset=4
    i32.const 0
    local.set 0
    local.get 1
    i32.load offset=12
    local.set 2
    loop  ;; label = @1
      local.get 0
      local.get 2
      local.get 1
      i32.load offset=12
      local.tee 5
      local.get 2
      local.get 5
      i32.lt_s
      select
      i32.lt_s
      if  ;; label = @2
        local.get 1
        i32.load offset=4
        local.get 0
        i32.const 2
        i32.shl
        i32.add
        i32.load
        local.get 0
        local.get 1
        i32.const 34752
        i32.load
        call_indirect $0 (type 4)
        local.get 0
        i32.const 1
        i32.add
        local.set 0
        br 1 (;@1;)
      end
    end
    i32.const 4
    i32.const 34000
    call $~lib/matchstick-as/assembly/store/countEntities
    call $~lib/matchstick-as/assembly/assert/assert.i32Equals
    i32.const 34000
    i32.const 14400
    i32.const 35072
    i32.const 64
    call $~lib/string/String#repeat
    call $~lib/string/String#concat
    i32.const 2784
    call $~lib/string/String#concat
    i32.const 23200
    i32.const 14400
    i32.const 35072
    i32.const 64
    call $~lib/string/String#repeat
    call $~lib/string/String#concat
    i32.const 2784
    call $~lib/string/String#concat
    call $~lib/matchstick-as/assembly/assert/assert.fieldEquals
    i32.const 34000
    i32.const 14400
    i32.const 35072
    i32.const 64
    call $~lib/string/String#repeat
    call $~lib/string/String#concat
    i32.const 2784
    call $~lib/string/String#concat
    i32.const 34160
    global.get $tests/comptroller/comptroller.test/testAccountAddress1
    call $~lib/matchstick-as/assembly/assert/assert.fieldEquals
    i32.const 34000
    i32.const 14400
    i32.const 35072
    i32.const 64
    call $~lib/string/String#repeat
    call $~lib/string/String#concat
    i32.const 2784
    call $~lib/string/String#concat
    i32.const 34192
    global.get $tests/comptroller/comptroller.test/xcksmMarketAddress
    call $~lib/matchstick-as/assembly/assert/assert.fieldEquals
    i32.const 34000
    i32.const 14400
    i32.const 35072
    i32.const 64
    call $~lib/string/String#repeat
    call $~lib/string/String#concat
    i32.const 2784
    call $~lib/string/String#concat
    i32.const 34128
    local.get 3
    call $~lib/@graphprotocol/graph-ts/common/numbers/bigDecimal.toString
    call $~lib/matchstick-as/assembly/assert/assert.fieldEquals
    i32.const 34000
    i32.const 14400
    i32.const 35104
    i32.const 64
    call $~lib/string/String#repeat
    call $~lib/string/String#concat
    i32.const 2784
    call $~lib/string/String#concat
    i32.const 23200
    i32.const 14400
    i32.const 35104
    i32.const 64
    call $~lib/string/String#repeat
    call $~lib/string/String#concat
    i32.const 2784
    call $~lib/string/String#concat
    call $~lib/matchstick-as/assembly/assert/assert.fieldEquals
    i32.const 34000
    i32.const 14400
    i32.const 35104
    i32.const 64
    call $~lib/string/String#repeat
    call $~lib/string/String#concat
    i32.const 2784
    call $~lib/string/String#concat
    i32.const 34160
    global.get $tests/comptroller/comptroller.test/testAccountAddress2
    call $~lib/matchstick-as/assembly/assert/assert.fieldEquals
    i32.const 34000
    i32.const 14400
    i32.const 35104
    i32.const 64
    call $~lib/string/String#repeat
    call $~lib/string/String#concat
    i32.const 2784
    call $~lib/string/String#concat
    i32.const 34192
    global.get $tests/comptroller/comptroller.test/xcksmMarketAddress
    call $~lib/matchstick-as/assembly/assert/assert.fieldEquals
    i32.const 34000
    i32.const 14400
    i32.const 35104
    i32.const 64
    call $~lib/string/String#repeat
    call $~lib/string/String#concat
    i32.const 2784
    call $~lib/string/String#concat
    i32.const 34128
    local.get 4
    call $~lib/@graphprotocol/graph-ts/common/numbers/bigDecimal.toString
    call $~lib/matchstick-as/assembly/assert/assert.fieldEquals)
  (func $~lib/@graphprotocol/graph-ts/common/numbers/BigInt#equals (type 3) (param i32 i32) (result i32)
    (local i32 i32 i32 i32)
    block (result i32)  ;; label = @1
      local.get 1
      local.set 2
      local.get 0
      local.tee 3
      i32.load offset=8
      i32.const 0
      i32.gt_s
      local.tee 1
      if (result i32)  ;; label = @2
        local.get 3
        local.get 3
        i32.load offset=8
        i32.const 1
        i32.sub
        call $~lib/typedarray/Uint8Array#__get
        i32.const 7
        i32.shr_u
        i32.const 1
        i32.eq
      else
        local.get 1
      end
      local.set 4
      i32.const 1
      i32.const 0
      block (result i32)  ;; label = @2
        local.get 2
        i32.load offset=8
        i32.const 0
        i32.gt_s
        local.tee 1
        if  ;; label = @3
          local.get 2
          local.get 2
          i32.load offset=8
          i32.const 1
          i32.sub
          call $~lib/typedarray/Uint8Array#__get
          i32.const 7
          i32.shr_u
          i32.const 1
          i32.eq
          local.set 1
        end
        local.get 1
      end
      local.get 4
      select
      br_if 0 (;@1;)
      drop
      i32.const -1
      local.get 1
      i32.const 1
      local.get 4
      select
      i32.eqz
      br_if 0 (;@1;)
      drop
      local.get 3
      i32.load offset=8
      local.set 5
      loop  ;; label = @2
        local.get 5
        i32.const 0
        i32.gt_s
        if (result i32)  ;; label = @3
          local.get 4
          if (result i32)  ;; label = @4
            i32.const 1
          else
            local.get 3
            local.get 5
            i32.const 1
            i32.sub
            call $~lib/typedarray/Uint8Array#__get
          end
          if (result i32)  ;; label = @4
            local.get 4
            if (result i32)  ;; label = @5
              local.get 3
              local.get 5
              i32.const 1
              i32.sub
              call $~lib/typedarray/Uint8Array#__get
              i32.const 255
              i32.eq
            else
              i32.const 0
            end
          else
            i32.const 1
          end
        else
          i32.const 0
        end
        if  ;; label = @3
          local.get 5
          i32.const 1
          i32.sub
          local.set 5
          br 1 (;@2;)
        end
      end
      local.get 2
      i32.load offset=8
      local.set 0
      loop  ;; label = @2
        local.get 0
        i32.const 0
        i32.gt_s
        if (result i32)  ;; label = @3
          local.get 1
          if (result i32)  ;; label = @4
            i32.const 1
          else
            local.get 2
            local.get 0
            i32.const 1
            i32.sub
            call $~lib/typedarray/Uint8Array#__get
          end
          if (result i32)  ;; label = @4
            local.get 1
            if (result i32)  ;; label = @5
              local.get 2
              local.get 0
              i32.const 1
              i32.sub
              call $~lib/typedarray/Uint8Array#__get
              i32.const 255
              i32.eq
            else
              i32.const 0
            end
          else
            i32.const 1
          end
        else
          i32.const 0
        end
        if  ;; label = @3
          local.get 0
          i32.const 1
          i32.sub
          local.set 0
          br 1 (;@2;)
        end
      end
      i32.const -1
      i32.const 1
      local.get 4
      select
      local.get 0
      local.get 5
      i32.lt_s
      br_if 0 (;@1;)
      drop
      i32.const 1
      i32.const -1
      local.get 4
      select
      local.get 0
      local.get 5
      i32.gt_s
      br_if 0 (;@1;)
      drop
      i32.const 1
      local.set 1
      loop  ;; label = @2
        local.get 1
        local.get 5
        i32.le_s
        if  ;; label = @3
          i32.const -1
          local.get 3
          local.get 5
          local.get 1
          i32.sub
          local.tee 0
          call $~lib/typedarray/Uint8Array#__get
          local.get 2
          local.get 0
          call $~lib/typedarray/Uint8Array#__get
          i32.lt_u
          br_if 2 (;@1;)
          drop
          i32.const 1
          local.get 3
          local.get 5
          local.get 1
          i32.sub
          local.tee 0
          call $~lib/typedarray/Uint8Array#__get
          local.get 2
          local.get 0
          call $~lib/typedarray/Uint8Array#__get
          i32.gt_u
          br_if 2 (;@1;)
          drop
          local.get 1
          i32.const 1
          i32.add
          local.set 1
          br 1 (;@2;)
        end
      end
      i32.const 0
    end
    i32.eqz)
  (func $generated/schema/Market#get:supplierCount (type 0) (param i32) (result i32)
    local.get 0
    i32.const 29616
    call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#get
    local.tee 0
    i32.eqz
    if  ;; label = @1
      i32.const 16304
      i32.const 25120
      i32.const 466
      i32.const 12
      call $~lib/builtins/abort
      unreachable
    end
    local.get 0
    call $~lib/@graphprotocol/graph-ts/common/value/Value#toI32)
  (func $src/helpers/createAccount (type 5) (param i32)
    (local i32)
    local.get 0
    call $generated/schema/Account#constructor
    local.tee 0
    call $generated/schema/Account#set:countLiquidated
    local.get 0
    call $generated/schema/Account#set:countLiquidator
    i32.const 16
    i32.const 6
    call $~lib/rt/stub/__new
    local.tee 1
    i32.const 3
    i32.store
    local.get 1
    i64.const 0
    i64.store offset=8
    local.get 0
    i32.const 32704
    local.get 1
    call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#set
    local.get 0
    call $generated/schema/Account#save)
  (func $generated/schema/Market#get:id (type 0) (param i32) (result i32)
    local.get 0
    i32.const 23200
    call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#get
    local.tee 0
    i32.eqz
    if  ;; label = @1
      i32.const 16304
      i32.const 25120
      i32.const 106
      i32.const 12
      call $~lib/builtins/abort
      unreachable
    end
    local.get 0
    call $~lib/@graphprotocol/graph-ts/common/value/Value#toString)
  (func $generated/schema/AccountCToken#set:account (type 1) (param i32 i32)
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
    i32.const 35968
    local.get 1
    call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#set)
  (func $generated/schema/AccountCToken#set:accrualBlockNumber (type 1) (param i32 i32)
    (local i64)
    local.get 1
    i64.extend_i32_u
    local.set 2
    i32.const 16
    i32.const 6
    call $~lib/rt/stub/__new
    local.tee 1
    i32.const 7
    i32.store
    local.get 1
    local.get 2
    i64.store offset=8
    local.get 0
    i32.const 36016
    local.get 1
    call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#set)
  (func $generated/schema/AccountCToken#set:cTokenBalance (type 1) (param i32 i32)
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
    i32.const 36080
    local.get 1
    call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#set)
  (func $generated/schema/AccountCToken#set:totalUnderlyingSupplied (type 1) (param i32 i32)
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
    i32.const 36128
    local.get 1
    call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#set)
  (func $generated/schema/AccountCToken#set:totalUnderlyingRedeemed (type 1) (param i32 i32)
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
    i32.const 36208
    local.get 1
    call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#set)
  (func $src/helpers/updateCommonCTokenStats (type 14) (param i32 i32 i32 i32 i32 i32 i32) (result i32)
    (local i64 i32 i32 i32)
    i32.const 35888
    local.get 0
    i32.const 34096
    call $~lib/string/String#concat
    local.get 2
    call $~lib/string/String#concat
    local.tee 9
    call $~lib/@graphprotocol/graph-ts/index/store.get
    local.tee 8
    i32.eqz
    if  ;; label = @1
      i32.const 4
      i32.const 67
      call $~lib/rt/stub/__new
      call $~lib/@graphprotocol/graph-ts/common/collections/Entity#constructor
      local.set 8
      local.get 9
      i64.extend_i32_u
      local.set 7
      i32.const 16
      i32.const 6
      call $~lib/rt/stub/__new
      local.tee 10
      i32.const 0
      i32.store
      local.get 10
      local.get 7
      i64.store offset=8
      local.get 8
      i32.const 23200
      local.get 10
      call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#set
      local.get 8
      local.get 1
      call $generated/schema/Market#set:symbol
      local.get 0
      i64.extend_i32_u
      local.set 7
      i32.const 16
      i32.const 6
      call $~lib/rt/stub/__new
      local.tee 0
      i32.const 0
      i32.store
      local.get 0
      local.get 7
      i64.store offset=8
      local.get 8
      i32.const 35936
      local.get 0
      call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#set
      local.get 8
      local.get 2
      call $generated/schema/AccountCToken#set:account
      local.get 8
      i32.const 0
      call $~lib/@graphprotocol/graph-ts/common/collections/ByteArray.fromI32
      call $generated/schema/AccountCToken#set:accrualBlockNumber
      local.get 8
      global.get $src/helpers/zeroBD
      call $generated/schema/AccountCToken#set:cTokenBalance
      local.get 8
      global.get $src/helpers/zeroBD
      call $generated/schema/AccountCToken#set:totalUnderlyingSupplied
      local.get 8
      global.get $src/helpers/zeroBD
      call $generated/schema/AccountCToken#set:totalUnderlyingRedeemed
      global.get $src/helpers/zeroBI
      i64.extend_i32_u
      local.set 7
      i32.const 16
      i32.const 6
      call $~lib/rt/stub/__new
      local.tee 0
      i32.const 7
      i32.store
      local.get 0
      local.get 7
      i64.store offset=8
      local.get 8
      i32.const 36288
      local.get 0
      call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#set
      global.get $src/helpers/zeroBD
      i64.extend_i32_u
      local.set 7
      i32.const 16
      i32.const 6
      call $~lib/rt/stub/__new
      local.tee 0
      i32.const 2
      i32.store
      local.get 0
      local.get 7
      i64.store offset=8
      local.get 8
      i32.const 36352
      local.get 0
      call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#set
      global.get $src/helpers/zeroBD
      i64.extend_i32_u
      local.set 7
      i32.const 16
      i32.const 6
      call $~lib/rt/stub/__new
      local.tee 0
      i32.const 2
      i32.store
      local.get 0
      local.get 7
      i64.store offset=8
      local.get 8
      i32.const 36432
      local.get 0
      call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#set
      global.get $src/helpers/zeroBD
      i64.extend_i32_u
      local.set 7
      i32.const 16
      i32.const 6
      call $~lib/rt/stub/__new
      local.tee 0
      i32.const 2
      i32.store
      local.get 0
      local.get 7
      i64.store offset=8
      local.get 8
      i32.const 36496
      local.get 0
      call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#set
      i32.const 16
      i32.const 6
      call $~lib/rt/stub/__new
      local.tee 0
      i32.const 3
      i32.store
      local.get 0
      i64.const 0
      i64.store offset=8
      local.get 8
      i32.const 36560
      local.get 0
      call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#set
    end
    i32.const 36608
    local.get 9
    i32.const 34096
    call $~lib/string/String#concat
    local.get 3
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.bytesToHex
    call $~lib/string/String#concat
    i32.const 34096
    call $~lib/string/String#concat
    local.get 6
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.bigIntToString
    call $~lib/string/String#concat
    local.tee 0
    call $~lib/@graphprotocol/graph-ts/index/store.get
    i32.eqz
    if  ;; label = @1
      i32.const 4
      i32.const 68
      call $~lib/rt/stub/__new
      call $~lib/@graphprotocol/graph-ts/common/collections/Entity#constructor
      local.set 1
      local.get 0
      i64.extend_i32_u
      local.set 7
      i32.const 16
      i32.const 6
      call $~lib/rt/stub/__new
      local.tee 0
      i32.const 0
      i32.store
      local.get 0
      local.get 7
      i64.store offset=8
      local.get 1
      i32.const 23200
      local.get 0
      call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#set
      local.get 1
      local.get 9
      call $generated/schema/AccountCToken#set:account
      local.get 3
      call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.bytesToHex
      i64.extend_i32_u
      local.set 7
      i32.const 16
      i32.const 6
      call $~lib/rt/stub/__new
      local.tee 0
      i32.const 0
      i32.store
      local.get 0
      local.get 7
      i64.store offset=8
      local.get 1
      i32.const 36688
      local.get 0
      call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#set
      local.get 4
      i64.extend_i32_u
      local.set 7
      i32.const 16
      i32.const 6
      call $~lib/rt/stub/__new
      local.tee 0
      i32.const 7
      i32.store
      local.get 0
      local.get 7
      i64.store offset=8
      local.get 1
      i32.const 36736
      local.get 0
      call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#set
      local.get 5
      i64.extend_i32_u
      local.set 7
      i32.const 16
      i32.const 6
      call $~lib/rt/stub/__new
      local.tee 0
      i32.const 7
      i32.store
      local.get 0
      local.get 7
      i64.store offset=8
      local.get 1
      i32.const 36784
      local.get 0
      call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#set
      local.get 6
      i64.extend_i32_u
      local.set 7
      i32.const 16
      i32.const 6
      call $~lib/rt/stub/__new
      local.tee 0
      i32.const 7
      i32.store
      local.get 0
      local.get 7
      i64.store offset=8
      local.get 1
      i32.const 36816
      local.get 0
      call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#set
      local.get 1
      i32.const 23200
      call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#get
      local.tee 0
      i32.eqz
      if  ;; label = @2
        i32.const 36864
        i32.const 25120
        i32.const 726
        i32.const 5
        call $~lib/builtins/abort
        unreachable
      end
      local.get 0
      if  ;; label = @2
        local.get 0
        i32.load
        if  ;; label = @3
          i32.const 37204
          local.get 0
          call $~lib/@graphprotocol/graph-ts/common/value/Value#displayData
          i32.store
          i32.const 37212
          local.get 0
          call $~lib/@graphprotocol/graph-ts/common/value/Value#displayKind
          i32.store
          i32.const 37200
          i32.const 37196
          i32.load
          i32.const 2
          i32.shr_u
          i32.const 14480
          call $~lib/util/string/joinStringArray
          i32.const 25120
          i32.const 731
          i32.const 7
          call $~lib/builtins/abort
          unreachable
        end
        i32.const 36608
        local.get 0
        call $~lib/@graphprotocol/graph-ts/common/value/Value#toString
        local.get 1
        call $~lib/@graphprotocol/graph-ts/index/store.set
      end
    end
    local.get 8
    local.get 5
    call $generated/schema/AccountCToken#set:accrualBlockNumber
    local.get 8)
  (func $generated/schema/AccountCToken#get:cTokenBalance (type 0) (param i32) (result i32)
    local.get 0
    i32.const 36080
    call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#get
    local.tee 0
    i32.eqz
    if  ;; label = @1
      i32.const 16304
      i32.const 25120
      i32.const 656
      i32.const 12
      call $~lib/builtins/abort
      unreachable
    end
    local.get 0
    call $~lib/@graphprotocol/graph-ts/common/value/Value#toBigDecimal)
  (func $~lib/@graphprotocol/graph-ts/common/numbers/BigDecimal#plus (type 3) (param i32 i32) (result i32)
    local.get 0
    i32.eqz
    if  ;; label = @1
      i32.const 37408
      i32.const 4112
      i32.const 374
      i32.const 5
      call $~lib/builtins/abort
      unreachable
    end
    local.get 0
    local.get 1
    call $~lib/@graphprotocol/graph-ts/common/numbers/bigDecimal.plus)
  (func $generated/schema/AccountCToken#save (type 5) (param i32)
    (local i32)
    local.get 0
    i32.const 23200
    call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#get
    local.tee 1
    i32.eqz
    if  ;; label = @1
      i32.const 37552
      i32.const 25120
      i32.const 577
      i32.const 5
      call $~lib/builtins/abort
      unreachable
    end
    local.get 1
    if  ;; label = @1
      local.get 1
      i32.load
      if  ;; label = @2
        i32.const 37844
        local.get 1
        call $~lib/@graphprotocol/graph-ts/common/value/Value#displayData
        i32.store
        i32.const 37852
        local.get 1
        call $~lib/@graphprotocol/graph-ts/common/value/Value#displayKind
        i32.store
        i32.const 37840
        i32.const 37836
        i32.load
        i32.const 2
        i32.shr_u
        i32.const 14480
        call $~lib/util/string/joinStringArray
        i32.const 25120
        i32.const 579
        i32.const 7
        call $~lib/builtins/abort
        unreachable
      end
      i32.const 35888
      local.get 1
      call $~lib/@graphprotocol/graph-ts/common/value/Value#toString
      local.get 0
      call $~lib/@graphprotocol/graph-ts/index/store.set
    end)
  (func $src/ctoken/handleTransfer (type 5) (param i32)
    (local i32 i32 i32 i32 i32 i32 i64)
    local.get 0
    i32.load
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.bytesToHex
    local.set 2
    i32.const 1
    i32.const 3
    i32.const 0
    call $~lib/rt/__newArray
    local.tee 1
    i32.load offset=4
    drop
    local.get 1
    i32.load offset=4
    local.get 2
    i32.store
    i32.const 3
    i32.const 35392
    local.get 1
    call $~lib/@graphprotocol/graph-ts/index/format
    call $~lib/@graphprotocol/graph-ts/index/log.log
    i32.const 27920
    local.get 2
    call $~lib/@graphprotocol/graph-ts/index/store.get
    local.tee 5
    i32.eqz
    if  ;; label = @1
      i32.const 16304
      i32.const 34048
      i32.const 344
      i32.const 16
      call $~lib/builtins/abort
      unreachable
    end
    local.get 0
    i32.load
    local.set 1
    i32.const 8
    i32.const 49
    call $~lib/rt/stub/__new
    i32.const 18944
    local.get 1
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.SmartContract#constructor
    local.set 4
    i32.const 4
    i32.const 66
    call $~lib/rt/stub/__new
    local.tee 1
    i32.const 0
    i32.store
    local.get 1
    local.get 0
    i32.store
    local.get 1
    i32.load
    i32.load offset=24
    i32.const 1
    call $~lib/array/Array<~lib/string/String>#__get
    i32.load offset=4
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value#toAddress
    local.set 3
    i32.const 1
    i32.const 22
    i32.const 0
    call $~lib/rt/__newArray
    local.tee 1
    i32.load offset=4
    drop
    local.get 3
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value.fromAddress
    local.set 3
    local.get 1
    i32.load offset=4
    local.get 3
    i32.store
    block  ;; label = @1
      local.get 4
      i32.const 35472
      i32.const 35520
      local.get 1
      call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.SmartContract#tryCall
      local.tee 1
      i32.load
      i32.eqz
      if  ;; label = @2
        i32.const 4
        i32.const 55
        call $~lib/rt/stub/__new
        local.tee 1
        i32.const 0
        i32.store
        local.get 1
        i32.const 0
        i32.store
        br 1 (;@1;)
      end
      local.get 1
      call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.CallResult<~lib/array/Array<~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value>>#get:value
      i32.const 0
      call $~lib/array/Array<~lib/string/String>#__get
      call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value#toBigInt
      call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.CallResult.fromValue<~lib/@graphprotocol/graph-ts/common/numbers/BigInt>
      local.set 1
    end
    local.get 1
    i32.load
    if  ;; label = @1
      local.get 1
      call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.CallResult<~lib/array/Array<~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value>>#get:value
      local.set 3
      i32.const 4
      i32.const 66
      call $~lib/rt/stub/__new
      local.tee 1
      i32.const 0
      i32.store
      local.get 1
      local.get 0
      i32.store
      local.get 3
      local.get 1
      i32.load
      i32.load offset=24
      i32.const 2
      call $~lib/array/Array<~lib/string/String>#__get
      i32.load offset=4
      call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value#toBigInt
      call $~lib/@graphprotocol/graph-ts/common/numbers/BigInt#equals
      if  ;; label = @2
        local.get 5
        local.get 5
        call $generated/schema/Market#get:supplierCount
        i32.const 1
        i32.add
        call $generated/schema/Market#set:supplierCount
        local.get 5
        call $generated/schema/Market#save
      end
    else
      i32.const 2
      i32.const 3
      i32.const 0
      call $~lib/rt/__newArray
      local.tee 1
      i32.load offset=4
      drop
      i32.const 4
      i32.const 66
      call $~lib/rt/stub/__new
      local.tee 3
      i32.const 0
      i32.store
      local.get 3
      local.get 0
      i32.store
      local.get 3
      i32.load
      i32.load offset=24
      i32.const 1
      call $~lib/array/Array<~lib/string/String>#__get
      i32.load offset=4
      call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value#toAddress
      call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.bytesToHex
      local.set 3
      local.get 1
      i32.load offset=4
      local.get 3
      i32.store
      local.get 1
      i32.load offset=4
      local.get 2
      i32.store offset=4
      i32.const 2
      i32.const 35600
      local.get 1
      call $~lib/@graphprotocol/graph-ts/index/format
      call $~lib/@graphprotocol/graph-ts/index/log.log
    end
    i32.const 4
    i32.const 66
    call $~lib/rt/stub/__new
    local.tee 1
    i32.const 0
    i32.store
    local.get 1
    local.get 0
    i32.store
    local.get 1
    i32.load
    i32.load offset=24
    i32.const 0
    call $~lib/array/Array<~lib/string/String>#__get
    i32.load offset=4
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value#toAddress
    local.set 3
    i32.const 1
    i32.const 22
    i32.const 0
    call $~lib/rt/__newArray
    local.tee 1
    i32.load offset=4
    drop
    local.get 3
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value.fromAddress
    local.set 3
    local.get 1
    i32.load offset=4
    local.get 3
    i32.store
    local.get 4
    i32.const 35472
    i32.const 35520
    local.get 1
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.SmartContract#call
    i32.const 0
    call $~lib/array/Array<~lib/string/String>#__get
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value#toBigInt
    local.set 4
    i32.const 4
    i32.const 66
    call $~lib/rt/stub/__new
    local.tee 1
    i32.const 0
    i32.store
    local.get 1
    local.get 0
    i32.store
    local.get 4
    local.get 1
    i32.load
    i32.load offset=24
    i32.const 2
    call $~lib/array/Array<~lib/string/String>#__get
    i32.load offset=4
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value#toBigInt
    call $~lib/@graphprotocol/graph-ts/common/numbers/BigInt#equals
    if  ;; label = @1
      local.get 5
      local.get 5
      call $generated/schema/Market#get:supplierCount
      i32.const 1
      i32.sub
      call $generated/schema/Market#set:supplierCount
      local.get 5
      call $generated/schema/Market#save
    end
    local.get 5
    i32.const 29184
    call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#get
    local.tee 1
    i32.eqz
    if  ;; label = @1
      i32.const 16304
      i32.const 25120
      i32.const 250
      i32.const 12
      call $~lib/builtins/abort
      unreachable
    end
    local.get 1
    call $~lib/@graphprotocol/graph-ts/common/value/Value#toBigDecimal
    local.set 1
    i32.const 4
    i32.const 66
    call $~lib/rt/stub/__new
    local.tee 4
    i32.const 0
    i32.store
    local.get 4
    local.get 0
    i32.store
    local.get 4
    i32.load
    i32.load offset=24
    i32.const 2
    call $~lib/array/Array<~lib/string/String>#__get
    i32.load offset=4
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value#toBigInt
    call $~lib/@graphprotocol/graph-ts/common/numbers/BigDecimal#constructor
    global.get $src/helpers/cTokenDecimalsBD
    call $~lib/@graphprotocol/graph-ts/common/numbers/BigDecimal#div
    local.set 4
    local.get 1
    i32.eqz
    if  ;; label = @1
      i32.const 35728
      i32.const 4112
      i32.const 389
      i32.const 5
      call $~lib/builtins/abort
      unreachable
    end
    local.get 1
    local.get 4
    call $~lib/@graphprotocol/graph-ts/common/numbers/bigDecimal.times
    local.get 5
    call $generated/schema/Market#get:underlyingDecimals
    call $~lib/@graphprotocol/graph-ts/common/numbers/BigDecimal#truncate
    local.set 4
    i32.const 4
    i32.const 66
    call $~lib/rt/stub/__new
    local.tee 1
    i32.const 0
    i32.store
    local.get 1
    local.get 0
    i32.store
    local.get 1
    i32.load
    i32.load offset=24
    i32.const 0
    call $~lib/array/Array<~lib/string/String>#__get
    i32.load offset=4
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value#toAddress
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.bytesToHex
    local.tee 1
    local.get 2
    call $~lib/string/String.__eq
    i32.eqz
    if  ;; label = @1
      i32.const 32464
      local.get 1
      call $~lib/@graphprotocol/graph-ts/index/store.get
      i32.eqz
      if  ;; label = @2
        local.get 1
        call $src/helpers/createAccount
      end
      local.get 5
      call $generated/schema/Market#get:id
      local.get 5
      call $generated/schema/Market#get:symbol
      local.get 1
      local.get 0
      i32.load offset=20
      i32.load
      local.get 0
      i32.load offset=16
      i32.load offset=40
      local.get 0
      i32.load offset=16
      i32.load offset=28
      local.get 0
      i32.load offset=4
      call $src/helpers/updateCommonCTokenStats
      local.tee 1
      call $generated/schema/AccountCToken#get:cTokenBalance
      local.set 3
      i32.const 4
      i32.const 66
      call $~lib/rt/stub/__new
      local.tee 6
      i32.const 0
      i32.store
      local.get 6
      local.get 0
      i32.store
      local.get 6
      i32.load
      i32.load offset=24
      i32.const 2
      call $~lib/array/Array<~lib/string/String>#__get
      i32.load offset=4
      call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value#toBigInt
      call $~lib/@graphprotocol/graph-ts/common/numbers/BigDecimal#constructor
      global.get $src/helpers/cTokenDecimalsBD
      call $~lib/@graphprotocol/graph-ts/common/numbers/BigDecimal#div
      i32.const 8
      call $~lib/@graphprotocol/graph-ts/common/numbers/BigDecimal#truncate
      local.set 6
      local.get 3
      i32.eqz
      if  ;; label = @2
        i32.const 37248
        i32.const 4112
        i32.const 380
        i32.const 5
        call $~lib/builtins/abort
        unreachable
      end
      local.get 1
      local.get 3
      local.get 6
      call $~lib/@graphprotocol/graph-ts/common/numbers/bigDecimal.minus
      call $generated/schema/AccountCToken#set:cTokenBalance
      local.get 1
      i32.const 36208
      call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#get
      local.tee 3
      i32.eqz
      if  ;; label = @2
        i32.const 16304
        i32.const 25120
        i32.const 674
        i32.const 12
        call $~lib/builtins/abort
        unreachable
      end
      local.get 1
      local.get 3
      call $~lib/@graphprotocol/graph-ts/common/value/Value#toBigDecimal
      local.get 4
      call $~lib/@graphprotocol/graph-ts/common/numbers/BigDecimal#plus
      call $generated/schema/AccountCToken#set:totalUnderlyingRedeemed
      local.get 1
      call $generated/schema/AccountCToken#save
    end
    i32.const 4
    i32.const 66
    call $~lib/rt/stub/__new
    local.tee 1
    i32.const 0
    i32.store
    local.get 1
    local.get 0
    i32.store
    local.get 1
    i32.load
    i32.load offset=24
    i32.const 1
    call $~lib/array/Array<~lib/string/String>#__get
    i32.load offset=4
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value#toAddress
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.bytesToHex
    local.tee 1
    local.get 2
    call $~lib/string/String.__eq
    i32.eqz
    if  ;; label = @1
      i32.const 32464
      local.get 1
      call $~lib/@graphprotocol/graph-ts/index/store.get
      i32.eqz
      if  ;; label = @2
        local.get 1
        call $src/helpers/createAccount
      end
      local.get 5
      call $generated/schema/Market#get:id
      local.get 5
      call $generated/schema/Market#get:symbol
      local.get 1
      local.get 0
      i32.load offset=20
      i32.load
      local.get 0
      i32.load offset=16
      i32.load offset=40
      local.get 0
      i32.load offset=16
      i32.load offset=28
      local.get 0
      i32.load offset=4
      call $src/helpers/updateCommonCTokenStats
      local.tee 1
      call $generated/schema/AccountCToken#get:cTokenBalance
      local.set 3
      i32.const 4
      i32.const 66
      call $~lib/rt/stub/__new
      local.tee 2
      i32.const 0
      i32.store
      local.get 2
      local.get 0
      i32.store
      local.get 1
      local.get 3
      local.get 2
      i32.load
      i32.load offset=24
      i32.const 2
      call $~lib/array/Array<~lib/string/String>#__get
      i32.load offset=4
      call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value#toBigInt
      call $~lib/@graphprotocol/graph-ts/common/numbers/BigDecimal#constructor
      global.get $src/helpers/cTokenDecimalsBD
      call $~lib/@graphprotocol/graph-ts/common/numbers/BigDecimal#div
      i32.const 8
      call $~lib/@graphprotocol/graph-ts/common/numbers/BigDecimal#truncate
      call $~lib/@graphprotocol/graph-ts/common/numbers/BigDecimal#plus
      call $generated/schema/AccountCToken#set:cTokenBalance
      local.get 1
      i32.const 36128
      call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#get
      local.tee 2
      i32.eqz
      if  ;; label = @2
        i32.const 16304
        i32.const 25120
        i32.const 665
        i32.const 12
        call $~lib/builtins/abort
        unreachable
      end
      local.get 1
      local.get 2
      call $~lib/@graphprotocol/graph-ts/common/value/Value#toBigDecimal
      local.get 4
      call $~lib/@graphprotocol/graph-ts/common/numbers/BigDecimal#plus
      call $generated/schema/AccountCToken#set:totalUnderlyingSupplied
      local.get 1
      call $generated/schema/AccountCToken#save
    end
    local.get 0
    i32.load offset=20
    i32.load
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.bytesToHex
    i32.const 34096
    call $~lib/string/String#concat
    local.get 0
    i32.load offset=8
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.bigIntToString
    call $~lib/string/String#concat
    local.set 2
    i32.const 4
    i32.const 69
    call $~lib/rt/stub/__new
    call $~lib/@graphprotocol/graph-ts/common/collections/Entity#constructor
    local.tee 1
    local.set 4
    local.get 2
    i64.extend_i32_u
    local.set 7
    i32.const 16
    i32.const 6
    call $~lib/rt/stub/__new
    local.tee 2
    i32.const 0
    i32.store
    local.get 2
    local.get 7
    i64.store offset=8
    local.get 4
    i32.const 23200
    local.get 2
    call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#set
    i32.const 4
    i32.const 66
    call $~lib/rt/stub/__new
    local.tee 2
    i32.const 0
    i32.store
    local.get 2
    local.get 0
    i32.store
    local.get 1
    local.get 2
    i32.load
    i32.load offset=24
    i32.const 2
    call $~lib/array/Array<~lib/string/String>#__get
    i32.load offset=4
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value#toBigInt
    call $~lib/@graphprotocol/graph-ts/common/numbers/BigDecimal#constructor
    global.get $src/helpers/cTokenDecimalsBD
    call $~lib/@graphprotocol/graph-ts/common/numbers/BigDecimal#div
    call $generated/schema/MintEvent#set:amount
    i32.const 4
    i32.const 66
    call $~lib/rt/stub/__new
    local.tee 2
    i32.const 0
    i32.store
    local.get 2
    local.get 0
    i32.store
    local.get 1
    local.get 2
    i32.load
    i32.load offset=24
    i32.const 1
    call $~lib/array/Array<~lib/string/String>#__get
    i32.load offset=4
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value#toAddress
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.bytesToHex
    call $generated/schema/MintEvent#set:to
    i32.const 4
    i32.const 66
    call $~lib/rt/stub/__new
    local.tee 2
    i32.const 0
    i32.store
    local.get 2
    local.get 0
    i32.store
    local.get 1
    local.get 2
    i32.load
    i32.load offset=24
    i32.const 0
    call $~lib/array/Array<~lib/string/String>#__get
    i32.load offset=4
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value#toAddress
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.bytesToHex
    call $generated/schema/MintEvent#set:from
    local.get 1
    local.get 0
    i32.load offset=16
    i32.load offset=28
    call $~lib/@graphprotocol/graph-ts/common/collections/ByteArray#toI32
    call $generated/schema/MintEvent#set:blockNumber
    local.get 1
    local.get 0
    i32.load offset=16
    i32.load offset=40
    call $~lib/@graphprotocol/graph-ts/common/collections/ByteArray#toI32
    call $generated/schema/MintEvent#set:blockTime
    local.get 1
    local.get 5
    call $generated/schema/Market#get:symbol
    call $generated/schema/MintEvent#set:cTokenSymbol
    local.get 1
    i32.const 23200
    call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#get
    local.tee 0
    i32.eqz
    if  ;; label = @1
      i32.const 37888
      i32.const 25120
      i32.const 1343
      i32.const 5
      call $~lib/builtins/abort
      unreachable
    end
    local.get 0
    if  ;; label = @1
      local.get 0
      i32.load
      if  ;; label = @2
        i32.const 38180
        local.get 0
        call $~lib/@graphprotocol/graph-ts/common/value/Value#displayData
        i32.store
        i32.const 38188
        local.get 0
        call $~lib/@graphprotocol/graph-ts/common/value/Value#displayKind
        i32.store
        i32.const 38176
        i32.const 38172
        i32.load
        i32.const 2
        i32.shr_u
        i32.const 14480
        call $~lib/util/string/joinStringArray
        i32.const 25120
        i32.const 1345
        i32.const 7
        call $~lib/builtins/abort
        unreachable
      end
      i32.const 35344
      local.get 0
      call $~lib/@graphprotocol/graph-ts/common/value/Value#toString
      local.get 1
      call $~lib/@graphprotocol/graph-ts/index/store.set
    end)
  (func $tests/comptroller/utils/handleNewTransfers~anonymous|0 (type 4) (param i32 i32 i32)
    local.get 0
    call $src/ctoken/handleTransfer)
  (func $start:tests/comptroller/comptroller.test~anonymous|3~anonymous|2 (type 2)
    (local i32 i32 i32 i32 i32 i32 i32 i64)
    i32.const 35248
    call $~lib/@graphprotocol/graph-ts/common/numbers/bigInt.fromString
    local.set 4
    global.get $tests/comptroller/comptroller.test/movrMarketAddress
    local.set 3
    global.get $tests/comptroller/comptroller.test/testAccountAddress1
    local.set 0
    i32.const 14400
    i32.const 35312
    i32.const 64
    call $~lib/string/String#repeat
    call $~lib/string/String#concat
    local.set 6
    local.get 3
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.stringToH160
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value.fromAddress
    local.set 2
    i32.const 8
    i32.const 40
    call $~lib/rt/stub/__new
    local.tee 1
    i32.const 34192
    i32.store
    local.get 1
    local.get 2
    i32.store offset=4
    local.get 0
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.stringToH160
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value.fromAddress
    local.set 0
    i32.const 8
    i32.const 40
    call $~lib/rt/stub/__new
    local.tee 2
    i32.const 34160
    i32.store
    local.get 2
    local.get 0
    i32.store offset=4
    local.get 4
    i64.extend_i32_u
    local.set 7
    i32.const 16
    i32.const 21
    call $~lib/rt/stub/__new
    local.tee 0
    i32.const 4
    i32.store
    local.get 0
    local.get 7
    i64.store offset=8
    i32.const 8
    i32.const 40
    call $~lib/rt/stub/__new
    local.tee 5
    i32.const 34128
    i32.store
    local.get 5
    local.get 0
    i32.store offset=4
    i32.const 3
    i32.const 41
    i32.const 0
    call $~lib/rt/__newArray
    local.tee 0
    i32.load offset=4
    drop
    local.get 0
    i32.load offset=4
    local.get 1
    i32.store
    local.get 0
    i32.load offset=4
    local.get 2
    i32.store offset=4
    local.get 0
    i32.load offset=4
    local.get 5
    i32.store offset=8
    call $~lib/matchstick-as/assembly/defaults/newMockEvent
    local.tee 1
    local.get 0
    i32.store offset=24
    local.get 1
    local.get 3
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.stringToH160
    i32.store
    local.get 1
    i32.load offset=20
    local.get 6
    call $~lib/@graphprotocol/graph-ts/common/collections/ByteArray.fromHexString
    i32.store
    i32.const 0
    i32.const 35344
    call $~lib/matchstick-as/assembly/store/countEntities
    call $~lib/matchstick-as/assembly/assert/assert.i32Equals
    i32.const 1
    i32.const 65
    i32.const 0
    call $~lib/rt/__newArray
    local.tee 0
    i32.load offset=4
    drop
    local.get 0
    i32.load offset=4
    local.get 1
    i32.store
    i32.const 0
    local.set 1
    local.get 0
    i32.load offset=12
    local.set 3
    loop  ;; label = @1
      local.get 1
      local.get 3
      local.get 0
      i32.load offset=12
      local.tee 2
      local.get 2
      local.get 3
      i32.gt_s
      select
      i32.lt_s
      if  ;; label = @2
        local.get 0
        i32.load offset=4
        local.get 1
        i32.const 2
        i32.shl
        i32.add
        i32.load
        local.get 1
        local.get 0
        i32.const 38224
        i32.load
        call_indirect $0 (type 4)
        local.get 1
        i32.const 1
        i32.add
        local.set 1
        br 1 (;@1;)
      end
    end
    i32.const 1
    i32.const 35344
    call $~lib/matchstick-as/assembly/store/countEntities
    call $~lib/matchstick-as/assembly/assert/assert.i32Equals
    i32.const 35344
    i32.const 14400
    i32.const 35312
    i32.const 64
    call $~lib/string/String#repeat
    call $~lib/string/String#concat
    i32.const 2784
    call $~lib/string/String#concat
    i32.const 23200
    i32.const 14400
    i32.const 35312
    i32.const 64
    call $~lib/string/String#repeat
    call $~lib/string/String#concat
    i32.const 2784
    call $~lib/string/String#concat
    call $~lib/matchstick-as/assembly/assert/assert.fieldEquals
    i32.const 35344
    i32.const 14400
    i32.const 35312
    i32.const 64
    call $~lib/string/String#repeat
    call $~lib/string/String#concat
    i32.const 2784
    call $~lib/string/String#concat
    i32.const 34192
    global.get $tests/comptroller/comptroller.test/movrMarketAddress
    call $~lib/matchstick-as/assembly/assert/assert.fieldEquals
    i32.const 35344
    i32.const 14400
    i32.const 35312
    i32.const 64
    call $~lib/string/String#repeat
    call $~lib/string/String#concat
    i32.const 2784
    call $~lib/string/String#concat
    i32.const 34160
    global.get $tests/comptroller/comptroller.test/testAccountAddress1
    call $~lib/matchstick-as/assembly/assert/assert.fieldEquals
    i32.const 35344
    i32.const 14400
    i32.const 35312
    i32.const 64
    call $~lib/string/String#repeat
    call $~lib/string/String#concat
    i32.const 2784
    call $~lib/string/String#concat
    i32.const 34128
    local.get 4
    call $~lib/@graphprotocol/graph-ts/common/numbers/BigDecimal#constructor
    global.get $src/helpers/cTokenDecimalsBD
    call $~lib/@graphprotocol/graph-ts/common/numbers/BigDecimal#div
    call $~lib/@graphprotocol/graph-ts/common/numbers/bigDecimal.toString
    call $~lib/matchstick-as/assembly/assert/assert.fieldEquals)
  (func $start:tests/comptroller/comptroller.test~anonymous|3 (type 2)
    i32.const 33264
    i32.const 0
    i32.const 34784
    i32.load
    call $~lib/matchstick-as/assembly/index/_registerTest
    i32.const 34816
    i32.const 0
    i32.const 35136
    i32.load
    call $~lib/matchstick-as/assembly/index/_registerTest
    i32.const 35168
    i32.const 0
    i32.const 38256
    i32.load
    call $~lib/matchstick-as/assembly/index/_registerTest)
  (func $start:tests/comptroller/comptroller.test (type 2)
    (local i32 i32)
    i32.const 38412
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
    global.set $~lib/matchstick-as/assembly/defaults/defaultAddress
    global.get $~lib/matchstick-as/assembly/defaults/defaultAddress
    global.set $~lib/matchstick-as/assembly/defaults/defaultAddressBytes
    i32.const 1
    call $~lib/@graphprotocol/graph-ts/common/collections/ByteArray.fromI32
    global.set $~lib/matchstick-as/assembly/defaults/defaultBigInt
    i32.const 1
    call $~lib/@graphprotocol/graph-ts/common/collections/ByteArray.fromI32
    global.set $~lib/matchstick-as/assembly/defaults/defaultIntBytes
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
    i32.const 1
    i32.const 18
    i32.const 0
    call $~lib/rt/__newArray
    local.tee 1
    i32.load offset=4
    drop
    i32.const 12
    i32.const 17
    call $~lib/rt/stub/__new
    local.tee 0
    i32.const 2536028
    i32.store
    local.get 0
    i32.const 3344
    i32.store offset=4
    local.get 0
    i32.const 3680
    i32.store offset=8
    local.get 1
    i32.load offset=4
    local.get 0
    i32.store
    i32.const 32
    i32.const 16
    call $~lib/rt/stub/__new
    local.tee 0
    i32.const 3200
    i32.store
    local.get 0
    i32.const 3312
    i32.store offset=4
    local.get 0
    i32.const 3344
    i32.store offset=8
    local.get 0
    i32.const 3456
    i32.store offset=12
    local.get 0
    i32.const 1512356
    i32.store offset=16
    local.get 0
    i32.const 1
    i32.store offset=20
    local.get 0
    i32.const 3568
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
    drop
    i32.const 8
    call $src/helpers/exponentToBigDecimal
    global.set $src/helpers/cTokenDecimalsBD
    i32.const 0
    call $~lib/@graphprotocol/graph-ts/common/collections/ByteArray.fromI32
    call $~lib/@graphprotocol/graph-ts/common/numbers/BigDecimal#constructor
    global.set $src/helpers/zeroBD
    i32.const 0
    call $~lib/@graphprotocol/graph-ts/common/collections/ByteArray.fromI32
    global.set $src/helpers/zeroBI
    i32.const 3200
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.stringToH160
    global.set $tests/comptroller/comptroller.test/comptrollerAddress
    i32.const 4224
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.stringToH160
    global.set $tests/comptroller/comptroller.test/expectedPriceOracle
    i32.const 4336
    call $~lib/string/String#toLowerCase
    global.set $tests/comptroller/comptroller.test/expectedInterestRateModel
    i32.const 13712
    call $~lib/@graphprotocol/graph-ts/common/numbers/bigInt.fromString
    global.set $tests/comptroller/comptroller.test/expectedReserveFactorMantissa
    i32.const 13776
    call $~lib/string/String#toLowerCase
    global.set $tests/comptroller/comptroller.test/expectedMovrFeed
    i32.const 13888
    call $~lib/string/String#toLowerCase
    global.set $tests/comptroller/comptroller.test/expectedXcksmFeed
    i32.const 3680
    call $~lib/string/String#toLowerCase
    global.set $tests/comptroller/comptroller.test/expectedMovrAggregator
    i32.const 14000
    call $~lib/string/String#toLowerCase
    global.set $tests/comptroller/comptroller.test/expectedXcksmAggregator
    i32.const 3344
    call $~lib/string/String#toLowerCase
    global.set $tests/comptroller/comptroller.test/movrMarketAddress
    i32.const 14144
    call $~lib/string/String#toLowerCase
    global.set $tests/comptroller/comptroller.test/xcksmMarketAddress
    i32.const 14256
    call $~lib/string/String#toLowerCase
    global.set $tests/comptroller/comptroller.test/xcksmContractAddress
    i32.const 14400
    i32.const 2848
    i32.const 40
    call $~lib/string/String#repeat
    call $~lib/string/String#concat
    global.set $tests/comptroller/comptroller.test/testAccountAddress1
    i32.const 14400
    i32.const 2880
    i32.const 40
    call $~lib/string/String#repeat
    call $~lib/string/String#concat
    global.set $tests/comptroller/comptroller.test/testAccountAddress2
    i32.const 14512
    i32.const 1
    i32.const 14672
    i32.load
    call $~lib/matchstick-as/assembly/index/_registerTest
    i32.const 14704
    i32.const 22880
    i32.load
    call $~lib/matchstick-as/assembly/index/_registerDescribe
    i32.const 22912
    i32.const 33104
    i32.load
    call $~lib/matchstick-as/assembly/index/_registerDescribe
    i32.const 33136
    i32.const 38288
    i32.load
    call $~lib/matchstick-as/assembly/index/_registerDescribe)
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
                                                                                                                                                                                                                                                                                                                      i32.const 13
                                                                                                                                                                                                                                                                                                                      return
                                                                                                                                                                                                                                                                                                                    end
                                                                                                                                                                                                                                                                                                                    i32.const 75
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
                                                                                                                                                                                                                                                                                                          i32.const 80
                                                                                                                                                                                                                                                                                                          return
                                                                                                                                                                                                                                                                                                        end
                                                                                                                                                                                                                                                                                                        i32.const 82
                                                                                                                                                                                                                                                                                                        return
                                                                                                                                                                                                                                                                                                      end
                                                                                                                                                                                                                                                                                                      i32.const 83
                                                                                                                                                                                                                                                                                                      return
                                                                                                                                                                                                                                                                                                    end
                                                                                                                                                                                                                                                                                                    i32.const 85
                                                                                                                                                                                                                                                                                                    return
                                                                                                                                                                                                                                                                                                  end
                                                                                                                                                                                                                                                                                                  i32.const 87
                                                                                                                                                                                                                                                                                                  return
                                                                                                                                                                                                                                                                                                end
                                                                                                                                                                                                                                                                                                i32.const 89
                                                                                                                                                                                                                                                                                                return
                                                                                                                                                                                                                                                                                              end
                                                                                                                                                                                                                                                                                              i32.const 3
                                                                                                                                                                                                                                                                                              return
                                                                                                                                                                                                                                                                                            end
                                                                                                                                                                                                                                                                                            i32.const 91
                                                                                                                                                                                                                                                                                            return
                                                                                                                                                                                                                                                                                          end
                                                                                                                                                                                                                                                                                          i32.const 93
                                                                                                                                                                                                                                                                                          return
                                                                                                                                                                                                                                                                                        end
                                                                                                                                                                                                                                                                                        i32.const 98
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
                                                                                                                                                                                                                                                                              i32.const 90
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
                                                                                                                                                                                                                                                                      i32.const 84
                                                                                                                                                                                                                                                                      return
                                                                                                                                                                                                                                                                    end
                                                                                                                                                                                                                                                                    i32.const 86
                                                                                                                                                                                                                                                                    return
                                                                                                                                                                                                                                                                  end
                                                                                                                                                                                                                                                                  i32.const 88
                                                                                                                                                                                                                                                                  return
                                                                                                                                                                                                                                                                end
                                                                                                                                                                                                                                                                i32.const 109
                                                                                                                                                                                                                                                                return
                                                                                                                                                                                                                                                              end
                                                                                                                                                                                                                                                              i32.const 94
                                                                                                                                                                                                                                                              return
                                                                                                                                                                                                                                                            end
                                                                                                                                                                                                                                                            i32.const 114
                                                                                                                                                                                                                                                            return
                                                                                                                                                                                                                                                          end
                                                                                                                                                                                                                                                          i32.const 95
                                                                                                                                                                                                                                                          return
                                                                                                                                                                                                                                                        end
                                                                                                                                                                                                                                                        i32.const 114
                                                                                                                                                                                                                                                        return
                                                                                                                                                                                                                                                      end
                                                                                                                                                                                                                                                      i32.const 115
                                                                                                                                                                                                                                                      return
                                                                                                                                                                                                                                                    end
                                                                                                                                                                                                                                                    i32.const 118
                                                                                                                                                                                                                                                    return
                                                                                                                                                                                                                                                  end
                                                                                                                                                                                                                                                  i32.const 120
                                                                                                                                                                                                                                                  return
                                                                                                                                                                                                                                                end
                                                                                                                                                                                                                                                i32.const 121
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
                                                                                                                                                                                                                                      i32.const 126
                                                                                                                                                                                                                                      return
                                                                                                                                                                                                                                    end
                                                                                                                                                                                                                                    i32.const 19
                                                                                                                                                                                                                                    return
                                                                                                                                                                                                                                  end
                                                                                                                                                                                                                                  i32.const 127
                                                                                                                                                                                                                                  return
                                                                                                                                                                                                                                end
                                                                                                                                                                                                                                i32.const 128
                                                                                                                                                                                                                                return
                                                                                                                                                                                                                              end
                                                                                                                                                                                                                              i32.const 129
                                                                                                                                                                                                                              return
                                                                                                                                                                                                                            end
                                                                                                                                                                                                                            i32.const 130
                                                                                                                                                                                                                            return
                                                                                                                                                                                                                          end
                                                                                                                                                                                                                          i32.const 132
                                                                                                                                                                                                                          return
                                                                                                                                                                                                                        end
                                                                                                                                                                                                                        i32.const 112
                                                                                                                                                                                                                        return
                                                                                                                                                                                                                      end
                                                                                                                                                                                                                      i32.const 134
                                                                                                                                                                                                                      return
                                                                                                                                                                                                                    end
                                                                                                                                                                                                                    i32.const 135
                                                                                                                                                                                                                    return
                                                                                                                                                                                                                  end
                                                                                                                                                                                                                  i32.const 140
                                                                                                                                                                                                                  return
                                                                                                                                                                                                                end
                                                                                                                                                                                                                i32.const 142
                                                                                                                                                                                                                return
                                                                                                                                                                                                              end
                                                                                                                                                                                                              i32.const 144
                                                                                                                                                                                                              return
                                                                                                                                                                                                            end
                                                                                                                                                                                                            i32.const 146
                                                                                                                                                                                                            return
                                                                                                                                                                                                          end
                                                                                                                                                                                                          i32.const 147
                                                                                                                                                                                                          return
                                                                                                                                                                                                        end
                                                                                                                                                                                                        i32.const 133
                                                                                                                                                                                                        return
                                                                                                                                                                                                      end
                                                                                                                                                                                                      i32.const 139
                                                                                                                                                                                                      return
                                                                                                                                                                                                    end
                                                                                                                                                                                                    i32.const 143
                                                                                                                                                                                                    return
                                                                                                                                                                                                  end
                                                                                                                                                                                                  i32.const 148
                                                                                                                                                                                                  return
                                                                                                                                                                                                end
                                                                                                                                                                                                i32.const 149
                                                                                                                                                                                                return
                                                                                                                                                                                              end
                                                                                                                                                                                              i32.const 147
                                                                                                                                                                                              return
                                                                                                                                                                                            end
                                                                                                                                                                                            i32.const 131
                                                                                                                                                                                            return
                                                                                                                                                                                          end
                                                                                                                                                                                          i32.const 150
                                                                                                                                                                                          return
                                                                                                                                                                                        end
                                                                                                                                                                                        i32.const 151
                                                                                                                                                                                        return
                                                                                                                                                                                      end
                                                                                                                                                                                      i32.const 152
                                                                                                                                                                                      return
                                                                                                                                                                                    end
                                                                                                                                                                                    i32.const 153
                                                                                                                                                                                    return
                                                                                                                                                                                  end
                                                                                                                                                                                  i32.const 154
                                                                                                                                                                                  return
                                                                                                                                                                                end
                                                                                                                                                                                i32.const 155
                                                                                                                                                                                return
                                                                                                                                                                              end
                                                                                                                                                                              i32.const 157
                                                                                                                                                                              return
                                                                                                                                                                            end
                                                                                                                                                                            i32.const 158
                                                                                                                                                                            return
                                                                                                                                                                          end
                                                                                                                                                                          i32.const 159
                                                                                                                                                                          return
                                                                                                                                                                        end
                                                                                                                                                                        i32.const 160
                                                                                                                                                                        return
                                                                                                                                                                      end
                                                                                                                                                                      i32.const 136
                                                                                                                                                                      return
                                                                                                                                                                    end
                                                                                                                                                                    i32.const 161
                                                                                                                                                                    return
                                                                                                                                                                  end
                                                                                                                                                                  i32.const 141
                                                                                                                                                                  return
                                                                                                                                                                end
                                                                                                                                                                i32.const 162
                                                                                                                                                                return
                                                                                                                                                              end
                                                                                                                                                              i32.const 138
                                                                                                                                                              return
                                                                                                                                                            end
                                                                                                                                                            i32.const 145
                                                                                                                                                            return
                                                                                                                                                          end
                                                                                                                                                          i32.const 163
                                                                                                                                                          return
                                                                                                                                                        end
                                                                                                                                                        i32.const 164
                                                                                                                                                        return
                                                                                                                                                      end
                                                                                                                                                      i32.const 110
                                                                                                                                                      return
                                                                                                                                                    end
                                                                                                                                                    i32.const 111
                                                                                                                                                    return
                                                                                                                                                  end
                                                                                                                                                  i32.const 83
                                                                                                                                                  return
                                                                                                                                                end
                                                                                                                                                i32.const 113
                                                                                                                                                return
                                                                                                                                              end
                                                                                                                                              i32.const 165
                                                                                                                                              return
                                                                                                                                            end
                                                                                                                                            i32.const 166
                                                                                                                                            return
                                                                                                                                          end
                                                                                                                                          i32.const 112
                                                                                                                                          return
                                                                                                                                        end
                                                                                                                                        i32.const 168
                                                                                                                                        return
                                                                                                                                      end
                                                                                                                                      i32.const 171
                                                                                                                                      return
                                                                                                                                    end
                                                                                                                                    i32.const 175
                                                                                                                                    return
                                                                                                                                  end
                                                                                                                                  i32.const 174
                                                                                                                                  return
                                                                                                                                end
                                                                                                                                i32.const 191
                                                                                                                                return
                                                                                                                              end
                                                                                                                              i32.const 196
                                                                                                                              return
                                                                                                                            end
                                                                                                                            i32.const 198
                                                                                                                            return
                                                                                                                          end
                                                                                                                          i32.const 206
                                                                                                                          return
                                                                                                                        end
                                                                                                                        i32.const 190
                                                                                                                        return
                                                                                                                      end
                                                                                                                      i32.const 208
                                                                                                                      return
                                                                                                                    end
                                                                                                                    i32.const 202
                                                                                                                    return
                                                                                                                  end
                                                                                                                  i32.const 209
                                                                                                                  return
                                                                                                                end
                                                                                                                i32.const 179
                                                                                                                return
                                                                                                              end
                                                                                                              i32.const 19
                                                                                                              return
                                                                                                            end
                                                                                                            i32.const 214
                                                                                                            return
                                                                                                          end
                                                                                                          i32.const 167
                                                                                                          return
                                                                                                        end
                                                                                                        i32.const 186
                                                                                                        return
                                                                                                      end
                                                                                                      i32.const 169
                                                                                                      return
                                                                                                    end
                                                                                                    i32.const 195
                                                                                                    return
                                                                                                  end
                                                                                                  i32.const 185
                                                                                                  return
                                                                                                end
                                                                                                i32.const 213
                                                                                                return
                                                                                              end
                                                                                              i32.const 177
                                                                                              return
                                                                                            end
                                                                                            i32.const 216
                                                                                            return
                                                                                          end
                                                                                          i32.const 172
                                                                                          return
                                                                                        end
                                                                                        i32.const 173
                                                                                        return
                                                                                      end
                                                                                      i32.const 219
                                                                                      return
                                                                                    end
                                                                                    i32.const 178
                                                                                    return
                                                                                  end
                                                                                  i32.const 176
                                                                                  return
                                                                                end
                                                                                i32.const 210
                                                                                return
                                                                              end
                                                                              i32.const 215
                                                                              return
                                                                            end
                                                                            i32.const 203
                                                                            return
                                                                          end
                                                                          i32.const 184
                                                                          return
                                                                        end
                                                                        i32.const 220
                                                                        return
                                                                      end
                                                                      i32.const 182
                                                                      return
                                                                    end
                                                                    i32.const 181
                                                                    return
                                                                  end
                                                                  i32.const 192
                                                                  return
                                                                end
                                                                i32.const 194
                                                                return
                                                              end
                                                              i32.const 193
                                                              return
                                                            end
                                                            i32.const 180
                                                            return
                                                          end
                                                          i32.const 189
                                                          return
                                                        end
                                                        i32.const 211
                                                        return
                                                      end
                                                      i32.const 205
                                                      return
                                                    end
                                                    i32.const 212
                                                    return
                                                  end
                                                  i32.const 19
                                                  return
                                                end
                                                i32.const 183
                                                return
                                              end
                                              i32.const 19
                                              return
                                            end
                                            i32.const 197
                                            return
                                          end
                                          i32.const 170
                                          return
                                        end
                                        i32.const 204
                                        return
                                      end
                                      i32.const 221
                                      return
                                    end
                                    i32.const 200
                                    return
                                  end
                                  i32.const 201
                                  return
                                end
                                i32.const 199
                                return
                              end
                              i32.const 188
                              return
                            end
                            i32.const 217
                            return
                          end
                          i32.const 187
                          return
                        end
                        i32.const 222
                        return
                      end
                      i32.const 207
                      return
                    end
                    i32.const 218
                    return
                  end
                  i32.const 223
                  return
                end
                i32.const 226
                return
              end
              i32.const 224
              return
            end
            i32.const 225
            return
          end
          i32.const 227
          return
        end
        i32.const 228
        return
      end
      i32.const 229
      return
    end
    i32.const 0)
  (func $node_modules/@graphprotocol/graph-ts/global/global/allocate (type 0) (param i32) (result i32)
    local.get 0
    call $~lib/rt/stub/__alloc)
  (func $~start (type 2)
    global.get $~started
    if  ;; label = @1
      return
    end
    i32.const 1
    global.set $~started
    call $start:tests/comptroller/comptroller.test
    i32.const 0
    call $~lib/rt/stub/__alloc
    drop)
  (table $0 38 funcref)
  (memory (;0;) 1)
  (global $~lib/rt/stub/offset (mut i32) (i32.const 0))
  (global $~lib/matchstick-as/assembly/defaults/defaultAddress (mut i32) (i32.const 0))
  (global $~lib/matchstick-as/assembly/defaults/defaultAddressBytes (mut i32) (i32.const 0))
  (global $~lib/matchstick-as/assembly/defaults/defaultBigInt (mut i32) (i32.const 0))
  (global $~lib/matchstick-as/assembly/defaults/defaultIntBytes (mut i32) (i32.const 0))
  (global $config/config/config (mut i32) (i32.const 0))
  (global $src/helpers/cTokenDecimalsBD (mut i32) (i32.const 0))
  (global $src/helpers/zeroBD (mut i32) (i32.const 0))
  (global $src/helpers/zeroBI (mut i32) (i32.const 0))
  (global $tests/comptroller/comptroller.test/comptrollerAddress (mut i32) (i32.const 0))
  (global $tests/comptroller/comptroller.test/expectedPriceOracle (mut i32) (i32.const 0))
  (global $tests/comptroller/comptroller.test/expectedInterestRateModel (mut i32) (i32.const 0))
  (global $tests/comptroller/comptroller.test/expectedReserveFactorMantissa (mut i32) (i32.const 0))
  (global $tests/comptroller/comptroller.test/expectedMovrFeed (mut i32) (i32.const 0))
  (global $tests/comptroller/comptroller.test/expectedXcksmFeed (mut i32) (i32.const 0))
  (global $tests/comptroller/comptroller.test/expectedMovrAggregator (mut i32) (i32.const 0))
  (global $tests/comptroller/comptroller.test/expectedXcksmAggregator (mut i32) (i32.const 0))
  (global $tests/comptroller/comptroller.test/movrMarketAddress (mut i32) (i32.const 0))
  (global $tests/comptroller/comptroller.test/xcksmMarketAddress (mut i32) (i32.const 0))
  (global $tests/comptroller/comptroller.test/xcksmContractAddress (mut i32) (i32.const 0))
  (global $tests/comptroller/comptroller.test/testAccountAddress1 (mut i32) (i32.const 0))
  (global $tests/comptroller/comptroller.test/testAccountAddress2 (mut i32) (i32.const 0))
  (global $~lib/util/number/_frc_plus (mut i64) (i64.const 0))
  (global $~lib/util/number/_frc_minus (mut i64) (i64.const 0))
  (global $~lib/util/number/_exp (mut i32) (i32.const 0))
  (global $~lib/util/number/_K (mut i32) (i32.const 0))
  (global $~lib/util/number/_frc_pow (mut i64) (i64.const 0))
  (global $~lib/util/number/_exp_pow (mut i32) (i32.const 0))
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
  (export "TypeId.String" (global 28))
  (export "TypeId.ArrayBuffer" (global 29))
  (export "TypeId.Int8Array" (global 30))
  (export "TypeId.Int16Array" (global 31))
  (export "TypeId.Int32Array" (global 32))
  (export "TypeId.Int64Array" (global 33))
  (export "TypeId.Uint8Array" (global 34))
  (export "TypeId.Uint16Array" (global 35))
  (export "TypeId.Uint32Array" (global 36))
  (export "TypeId.Uint64Array" (global 37))
  (export "TypeId.Float32Array" (global 38))
  (export "TypeId.Float64Array" (global 39))
  (export "TypeId.BigDecimal" (global 40))
  (export "TypeId.ArrayBool" (global 41))
  (export "TypeId.ArrayUint8Array" (global 42))
  (export "TypeId.ArrayEthereumValue" (global 43))
  (export "TypeId.ArrayStoreValue" (global 44))
  (export "TypeId.ArrayJsonValue" (global 45))
  (export "TypeId.ArrayString" (global 46))
  (export "TypeId.ArrayEventParam" (global 47))
  (export "TypeId.ArrayTypedMapEntryStringJsonValue" (global 48))
  (export "TypeId.ArrayTypedMapEntryStringStoreValue" (global 49))
  (export "TypeId.SmartContractCall" (global 50))
  (export "TypeId.EventParam" (global 51))
  (export "TypeId.EthereumTransaction" (global 52))
  (export "TypeId.EthereumBlock" (global 53))
  (export "TypeId.EthereumCall" (global 54))
  (export "TypeId.WrappedTypedMapStringJsonValue" (global 55))
  (export "TypeId.WrappedBool" (global 56))
  (export "TypeId.WrappedJsonValue" (global 57))
  (export "TypeId.EthereumValue" (global 58))
  (export "TypeId.StoreValue" (global 59))
  (export "TypeId.JsonValue" (global 60))
  (export "TypeId.EthereumEvent" (global 61))
  (export "TypeId.TypedMapEntryStringStoreValue" (global 62))
  (export "TypeId.TypedMapEntryStringJsonValue" (global 63))
  (export "TypeId.TypedMapStringStoreValue" (global 64))
  (export "TypeId.TypedMapStringJsonValue" (global 65))
  (export "TypeId.TypedMapStringTypedMapStringJsonValue" (global 66))
  (export "TypeId.ResultTypedMapStringJsonValueBool" (global 67))
  (export "TypeId.ResultJsonValueBool" (global 68))
  (export "TypeId.ArrayU8" (global 69))
  (export "TypeId.ArrayU16" (global 70))
  (export "TypeId.ArrayU32" (global 71))
  (export "TypeId.ArrayU64" (global 72))
  (export "TypeId.ArrayI8" (global 73))
  (export "TypeId.ArrayI16" (global 74))
  (export "TypeId.ArrayI32" (global 75))
  (export "TypeId.ArrayI64" (global 76))
  (export "TypeId.ArrayF32" (global 77))
  (export "TypeId.ArrayF64" (global 78))
  (export "TypeId.ArrayBigDecimal" (global 79))
  (export "TypeId.NearArrayDataReceiver" (global 80))
  (export "TypeId.NearArrayCryptoHash" (global 81))
  (export "TypeId.NearArrayActionValue" (global 82))
  (export "TypeId.NearMerklePath" (global 83))
  (export "TypeId.NearArrayValidatorStake" (global 84))
  (export "TypeId.NearArraySlashedValidator" (global 85))
  (export "TypeId.NearArraySignature" (global 86))
  (export "TypeId.NearArrayChunkHeader" (global 87))
  (export "TypeId.NearAccessKeyPermissionValue" (global 88))
  (export "TypeId.NearActionValue" (global 89))
  (export "TypeId.NearDirection" (global 90))
  (export "TypeId.NearPublicKey" (global 91))
  (export "TypeId.NearSignature" (global 92))
  (export "TypeId.NearFunctionCallPermission" (global 93))
  (export "TypeId.NearFullAccessPermission" (global 94))
  (export "TypeId.NearAccessKey" (global 95))
  (export "TypeId.NearDataReceiver" (global 96))
  (export "TypeId.NearCreateAccountAction" (global 97))
  (export "TypeId.NearDeployContractAction" (global 98))
  (export "TypeId.NearFunctionCallAction" (global 99))
  (export "TypeId.NearTransferAction" (global 100))
  (export "TypeId.NearStakeAction" (global 101))
  (export "TypeId.NearAddKeyAction" (global 102))
  (export "TypeId.NearDeleteKeyAction" (global 103))
  (export "TypeId.NearDeleteAccountAction" (global 104))
  (export "TypeId.NearActionReceipt" (global 105))
  (export "TypeId.NearSuccessStatus" (global 106))
  (export "TypeId.NearMerklePathItem" (global 107))
  (export "TypeId.NearExecutionOutcome" (global 108))
  (export "TypeId.NearSlashedValidator" (global 109))
  (export "TypeId.NearBlockHeader" (global 110))
  (export "TypeId.NearValidatorStake" (global 111))
  (export "TypeId.NearChunkHeader" (global 112))
  (export "TypeId.NearBlock" (global 113))
  (export "TypeId.NearReceiptWithOutcome" (global 114))
  (export "TypeId.TransactionReceipt" (global 115))
  (export "TypeId.Log" (global 116))
  (export "TypeId.ArrayH256" (global 117))
  (export "TypeId.ArrayLog" (global 118))
  (export "TypeId.CosmosAny" (global 119))
  (export "TypeId.CosmosArrayAny" (global 120))
  (export "TypeId.CosmosArrayBytes" (global 121))
  (export "TypeId.CosmosArrayCoin" (global 122))
  (export "TypeId.CosmosArrayCommitSig" (global 123))
  (export "TypeId.CosmosArrayEvent" (global 124))
  (export "TypeId.CosmosArrayEventAttribute" (global 125))
  (export "TypeId.CosmosArrayEvidence" (global 126))
  (export "TypeId.CosmosArrayModeInfo" (global 127))
  (export "TypeId.CosmosArraySignerInfo" (global 128))
  (export "TypeId.CosmosArrayTxResult" (global 129))
  (export "TypeId.CosmosArrayValidator" (global 130))
  (export "TypeId.CosmosArrayValidatorUpdate" (global 131))
  (export "TypeId.CosmosAuthInfo" (global 132))
  (export "TypeId.CosmosBlock" (global 133))
  (export "TypeId.CosmosBlockID" (global 134))
  (export "TypeId.CosmosBlockIDFlagEnum" (global 135))
  (export "TypeId.CosmosBlockParams" (global 136))
  (export "TypeId.CosmosCoin" (global 137))
  (export "TypeId.CosmosCommit" (global 138))
  (export "TypeId.CosmosCommitSig" (global 139))
  (export "TypeId.CosmosCompactBitArray" (global 140))
  (export "TypeId.CosmosConsensus" (global 141))
  (export "TypeId.CosmosConsensusParams" (global 142))
  (export "TypeId.CosmosDuplicateVoteEvidence" (global 143))
  (export "TypeId.CosmosDuration" (global 144))
  (export "TypeId.CosmosEvent" (global 145))
  (export "TypeId.CosmosEventAttribute" (global 146))
  (export "TypeId.CosmosEventData" (global 147))
  (export "TypeId.CosmosEventVote" (global 148))
  (export "TypeId.CosmosEvidence" (global 149))
  (export "TypeId.CosmosEvidenceList" (global 150))
  (export "TypeId.CosmosEvidenceParams" (global 151))
  (export "TypeId.CosmosFee" (global 152))
  (export "TypeId.CosmosHeader" (global 153))
  (export "TypeId.CosmosHeaderOnlyBlock" (global 154))
  (export "TypeId.CosmosLightBlock" (global 155))
  (export "TypeId.CosmosLightClientAttackEvidence" (global 156))
  (export "TypeId.CosmosModeInfo" (global 157))
  (export "TypeId.CosmosModeInfoMulti" (global 158))
  (export "TypeId.CosmosModeInfoSingle" (global 159))
  (export "TypeId.CosmosPartSetHeader" (global 160))
  (export "TypeId.CosmosPublicKey" (global 161))
  (export "TypeId.CosmosResponseBeginBlock" (global 162))
  (export "TypeId.CosmosResponseDeliverTx" (global 163))
  (export "TypeId.CosmosResponseEndBlock" (global 164))
  (export "TypeId.CosmosSignModeEnum" (global 165))
  (export "TypeId.CosmosSignedHeader" (global 166))
  (export "TypeId.CosmosSignedMsgTypeEnum" (global 167))
  (export "TypeId.CosmosSignerInfo" (global 168))
  (export "TypeId.CosmosTimestamp" (global 169))
  (export "TypeId.CosmosTip" (global 170))
  (export "TypeId.CosmosTransactionData" (global 171))
  (export "TypeId.CosmosTx" (global 172))
  (export "TypeId.CosmosTxBody" (global 173))
  (export "TypeId.CosmosTxResult" (global 174))
  (export "TypeId.CosmosValidator" (global 175))
  (export "TypeId.CosmosValidatorParams" (global 176))
  (export "TypeId.CosmosValidatorSet" (global 177))
  (export "TypeId.CosmosValidatorSetUpdates" (global 178))
  (export "TypeId.CosmosValidatorUpdate" (global 179))
  (export "TypeId.CosmosVersionParams" (global 180))
  (export "TypeId.ArweaveBlock" (global 181))
  (export "TypeId.ArweaveProofOfAccess" (global 182))
  (export "TypeId.ArweaveTag" (global 183))
  (export "TypeId.ArweaveTagArray" (global 184))
  (export "TypeId.ArweaveTransaction" (global 185))
  (export "TypeId.ArweaveTransactionArray" (global 186))
  (export "TypeId.ArweaveTransactionWithBlockPtr" (global 187))
  (export "id_of_type" (func $node_modules/@graphprotocol/graph-ts/global/global/id_of_type))
  (export "allocate" (func $node_modules/@graphprotocol/graph-ts/global/global/allocate))
  (export "memory" (memory 0))
  (export "table" (table 0))
  (export "_start" (func $~start))
  (elem $0 (i32.const 1) func $start:tests/comptroller/comptroller.test~anonymous|0 $start:tests/comptroller/comptroller.test~anonymous|1~anonymous|0 $start:tests/comptroller/comptroller.test~anonymous|1~anonymous|1 $start:tests/comptroller/comptroller.test~anonymous|1~anonymous|2 $start:tests/comptroller/comptroller.test~anonymous|1~anonymous|3 $start:tests/comptroller/comptroller.test~anonymous|1~anonymous|4 $start:tests/comptroller/comptroller.test~anonymous|1~anonymous|5 $start:tests/comptroller/comptroller.test~anonymous|1~anonymous|6 $start:tests/comptroller/comptroller.test~anonymous|1~anonymous|7 $start:tests/comptroller/comptroller.test~anonymous|1~anonymous|8 $start:tests/comptroller/comptroller.test~anonymous|1~anonymous|9 $start:tests/comptroller/comptroller.test~anonymous|1~anonymous|10 $start:tests/comptroller/comptroller.test~anonymous|1~anonymous|11 $start:tests/comptroller/comptroller.test~anonymous|1~anonymous|12 $start:tests/comptroller/comptroller.test~anonymous|1~anonymous|13 $start:tests/comptroller/comptroller.test~anonymous|1~anonymous|14 $start:tests/comptroller/comptroller.test~anonymous|1~anonymous|15 $start:tests/comptroller/comptroller.test~anonymous|1~anonymous|16 $start:tests/comptroller/comptroller.test~anonymous|1~anonymous|17 $start:tests/comptroller/comptroller.test~anonymous|1~anonymous|18 $start:tests/comptroller/comptroller.test~anonymous|1~anonymous|19 $start:tests/comptroller/comptroller.test~anonymous|1 $start:tests/comptroller/comptroller.test~anonymous|1~anonymous|0 $~lib/@graphprotocol/graph-ts/common/value/Value#displayData~anonymous|0 $start:tests/comptroller/comptroller.test~anonymous|2~anonymous|1 $start:tests/comptroller/comptroller.test~anonymous|2~anonymous|2 $start:tests/comptroller/comptroller.test~anonymous|2~anonymous|3 $start:tests/comptroller/comptroller.test~anonymous|2~anonymous|4 $start:tests/comptroller/comptroller.test~anonymous|2~anonymous|5 $start:tests/comptroller/comptroller.test~anonymous|2~anonymous|6 $start:tests/comptroller/comptroller.test~anonymous|2 $tests/comptroller/utils/handleNewMints~anonymous|0 $start:tests/comptroller/comptroller.test~anonymous|3~anonymous|0 $start:tests/comptroller/comptroller.test~anonymous|3~anonymous|1 $tests/comptroller/utils/handleNewTransfers~anonymous|0 $start:tests/comptroller/comptroller.test~anonymous|3~anonymous|2 $start:tests/comptroller/comptroller.test~anonymous|3)
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
  (data (;238;) (i32.const 14504) "\01\00\00\00*\00\00\00S\00h\00o\00u\00l\00d\00 \00t\00h\00r\00o\00w\00 \00a\00n\00 \00e\00r\00r\00o\00r")
  (data (;239;) (i32.const 14556) "\5c")
  (data (;240;) (i32.const 14568) "\01\00\00\00J\00\00\00t\00e\00s\00t\00s\00/\00c\00o\00m\00p\00t\00r\00o\00l\00l\00e\00r\00/\00c\00o\00m\00p\00t\00r\00o\00l\00l\00e\00r\00.\00t\00e\00s\00t\00.\00t\00s")
  (data (;241;) (i32.const 14652) "\1c")
  (data (;242;) (i32.const 14664) "\14\00\00\00\08\00\00\00\01")
  (data (;243;) (i32.const 14684) "L")
  (data (;244;) (i32.const 14696) "\01\00\00\00.\00\00\00M\00o\00c\00k\00 \00c\00o\00n\00t\00r\00a\00c\00t\00 \00f\00u\00n\00c\00t\00i\00o\00n\00s")
  (data (;245;) (i32.const 14764) "\1c")
  (data (;246;) (i32.const 14776) "\14\00\00\00\08\00\00\00\02")
  (data (;247;) (i32.const 14796) ",")
  (data (;248;) (i32.const 14808) "\01\00\00\00\12\00\00\00b\00e\00f\00o\00r\00e\00A\00l\00l")
  (data (;249;) (i32.const 14844) "\8c")
  (data (;250;) (i32.const 14856) "\01\00\00\00p\00\00\00C\00a\00n\00 \00m\00o\00c\00k\00 \00a\00n\00d\00 \00c\00a\00l\00l\00 \00f\00u\00n\00c\00t\00i\00o\00n\00 \00w\00i\00t\00h\00 \00d\00i\00f\00f\00e\00r\00e\00n\00t\00 \00a\00r\00g\00u\00m\00e\00n\00t\00 \00t\00y\00p\00e\00s")
  (data (;251;) (i32.const 14988) "<")
  (data (;252;) (i32.const 15000) "\01\00\00\00(\00\00\00e\00x\00a\00m\00p\00l\00e\00 \00s\00t\00r\00i\00n\00g\00 \00v\00a\00l\00u\00e")
  (data (;253;) (i32.const 15052) "\1c")
  (data (;254;) (i32.const 15068) "\08\00\00\00\fac\02\00\14\e2\01")
  (data (;255;) (i32.const 15084) "l")
  (data (;256;) (i32.const 15096) "\01\00\00\00T\00\00\000\00x\008\009\002\000\005\00A\003\00A\003\00b\002\00A\006\009\00D\00e\006\00D\00b\00f\007\00f\000\001\00E\00D\001\003\00B\002\001\000\008\00B\002\00c\004\003\00e\007")
  (data (;257;) (i32.const 15196) "\5c")
  (data (;258;) (i32.const 15208) "\01\00\00\00J\00\00\00A\00d\00d\00r\00e\00s\00s\00 \00m\00u\00s\00t\00 \00c\00o\00n\00t\00a\00i\00n\00 \00e\00x\00a\00c\00t\00l\00y\00 \002\000\00 \00b\00y\00t\00e\00s")
  (data (;259;) (i32.const 15292) "l")
  (data (;260;) (i32.const 15304) "\01\00\00\00\5c\00\00\00~\00l\00i\00b\00/\00@\00g\00r\00a\00p\00h\00p\00r\00o\00t\00o\00c\00o\00l\00/\00g\00r\00a\00p\00h\00-\00t\00s\00/\00c\00h\00a\00i\00n\00/\00e\00t\00h\00e\00r\00e\00u\00m\00.\00t\00s")
  (data (;261;) (i32.const 15404) ",")
  (data (;262;) (i32.const 15416) "\01\00\00\00\18\00\00\00s\00t\00r\00i\00n\00g\00 \00v\00a\00l\00u\00e")
  (data (;263;) (i32.const 15452) "l")
  (data (;264;) (i32.const 15464) "\01\00\00\00T\00\00\000\00x\009\000\00c\00B\00a\002\00B\00b\00b\001\009\00e\00c\00c\002\009\001\00A\001\002\000\006\006\00F\00d\008\003\002\009\00D\006\005\00F\00A\001\00f\001\009\004\007")
  (data (;265;) (i32.const 15564) ",")
  (data (;266;) (i32.const 15576) "\01\00\00\00\10\00\00\00f\00u\00n\00c\00N\00a\00m\00e")
  (data (;267;) (i32.const 15612) "\ac")
  (data (;268;) (i32.const 15624) "\01\00\00\00\8e\00\00\00f\00u\00n\00c\00N\00a\00m\00e\00(\00i\00n\00t\003\002\00,\00 \00s\00t\00r\00i\00n\00g\00,\00 \00i\00n\00t\003\002\00[\00]\00,\00 \00b\00o\00o\00l\00,\00 \00a\00d\00d\00r\00e\00s\00s\00,\00 \00(\00i\00n\00t\003\002\00,\00 \00s\00t\00r\00i\00n\00g\00)\00)\00:\00(\00v\00o\00i\00d\00)")
  (data (;269;) (i32.const 15788) "\1c")
  (data (;270;) (i32.const 15820) "\1c")
  (data (;271;) (i32.const 15852) "\5c")
  (data (;272;) (i32.const 15864) "\01\00\00\00J\00\00\00T\00o\00o\00 \00f\00e\00w\00 \00a\00r\00g\00u\00m\00e\00n\00t\00s\00 \00f\00o\00r\00 \00f\00o\00r\00m\00a\00t\00 \00s\00t\00r\00i\00n\00g\00:\00 ")
  (data (;273;) (i32.const 15948) "\5c")
  (data (;274;) (i32.const 15960) "\01\00\00\00D\00\00\00~\00l\00i\00b\00/\00m\00a\00t\00c\00h\00s\00t\00i\00c\00k\00-\00a\00s\00/\00a\00s\00s\00e\00m\00b\00l\00y\00/\00l\00o\00g\00.\00t\00s")
  (data (;275;) (i32.const 16044) "|")
  (data (;276;) (i32.const 16056) "\01\00\00\00^\00\00\00E\00l\00e\00m\00e\00n\00t\00 \00t\00y\00p\00e\00 \00m\00u\00s\00t\00 \00b\00e\00 \00n\00u\00l\00l\00a\00b\00l\00e\00 \00i\00f\00 \00a\00r\00r\00a\00y\00 \00i\00s\00 \00h\00o\00l\00e\00y")
  (data (;277;) (i32.const 16172) "\1c")
  (data (;278;) (i32.const 16184) "\01\00\00\00\0c\00\00\00r\00e\00s\00u\00l\00t")
  (data (;279;) (i32.const 16204) "\1c")
  (data (;280;) (i32.const 16236) ",")
  (data (;281;) (i32.const 16248) "\01\00\00\00\0e\00\00\00c\00o\00n\00N\00a\00m\00e")
  (data (;282;) (i32.const 16284) "<")
  (data (;283;) (i32.const 16296) "\01\00\00\00\1e\00\00\00u\00n\00e\00x\00p\00e\00c\00t\00e\00d\00 \00n\00u\00l\00l")
  (data (;284;) (i32.const 16348) "<")
  (data (;285;) (i32.const 16360) "\01\00\00\00\1e\00\00\00A\00s\00s\00e\00r\00t\00i\00o\00n\00 \00E\00r\00r\00o\00r")
  (data (;286;) (i32.const 16412) "\5c")
  (data (;287;) (i32.const 16424) "\01\00\00\00J\00\00\00~\00l\00i\00b\00/\00m\00a\00t\00c\00h\00s\00t\00i\00c\00k\00-\00a\00s\00/\00a\00s\00s\00e\00m\00b\00l\00y\00/\00a\00s\00s\00e\00r\00t\00.\00t\00s")
  (data (;288;) (i32.const 16508) "\1c")
  (data (;289;) (i32.const 16520) "\14\00\00\00\08\00\00\00\03")
  (data (;290;) (i32.const 16540) "\5c")
  (data (;291;) (i32.const 16552) "\01\00\00\00F\00\00\00C\00a\00n\00 \00t\00e\00s\00t\00 \00i\00f\00 \00m\00o\00c\00k\00e\00d\00 \00f\00u\00n\00c\00t\00i\00o\00n\00 \00r\00e\00v\00e\00r\00t\00s")
  (data (;292;) (i32.const 16636) "<")
  (data (;293;) (i32.const 16648) "\01\00\00\00 \00\00\00r\00e\00v\00e\00r\00t\00e\00d\00F\00u\00n\00c\00t\00i\00o\00n")
  (data (;294;) (i32.const 16700) "L")
  (data (;295;) (i32.const 16712) "\01\00\00\002\00\00\00r\00e\00v\00e\00r\00t\00e\00d\00F\00u\00n\00c\00t\00i\00o\00n\00(\00)\00:\00(\00v\00o\00i\00d\00)")
  (data (;296;) (i32.const 16780) "\1c")
  (data (;297;) (i32.const 16812) "\1c")
  (data (;298;) (i32.const 16844) "\1c")
  (data (;299;) (i32.const 16876) "\1c")
  (data (;300;) (i32.const 16888) "\14\00\00\00\08\00\00\00\04")
  (data (;301;) (i32.const 16908) "\5c")
  (data (;302;) (i32.const 16920) "\01\00\00\00L\00\00\00C\00a\00n\00 \00m\00o\00c\00k\00 \00t\00h\00e\00 \00o\00r\00a\00c\00l\00e\00 \00f\00u\00n\00c\00t\00i\00o\00n\00 \00c\00o\00r\00r\00e\00c\00t\00l\00y")
  (data (;303;) (i32.const 17004) "\1c")
  (data (;304;) (i32.const 17016) "\01\00\00\00\0c\00\00\00o\00r\00a\00c\00l\00e")
  (data (;305;) (i32.const 17036) "<")
  (data (;306;) (i32.const 17048) "\01\00\00\00$\00\00\00o\00r\00a\00c\00l\00e\00(\00)\00:\00(\00a\00d\00d\00r\00e\00s\00s\00)")
  (data (;307;) (i32.const 17100) ",")
  (data (;308;) (i32.const 17112) "\01\00\00\00\16\00\00\00C\00o\00m\00p\00t\00r\00o\00l\00l\00e\00r")
  (data (;309;) (i32.const 17148) "\1c")
  (data (;310;) (i32.const 17180) "\bc")
  (data (;311;) (i32.const 17192) "\01\00\00\00\a2\00\00\00C\00a\00l\00l\00 \00r\00e\00v\00e\00r\00t\00e\00d\00,\00 \00p\00r\00o\00b\00a\00b\00l\00y\00 \00b\00e\00c\00a\00u\00s\00e\00 \00a\00n\00 \00`\00a\00s\00s\00e\00r\00t\00`\00 \00o\00r\00 \00`\00r\00e\00q\00u\00i\00r\00e\00`\00 \00i\00n\00 \00t\00h\00e\00 \00c\00o\00n\00t\00r\00a\00c\00t\00 \00f\00a\00i\00l\00e\00d\00,\00 ")
  (data (;312;) (i32.const 17372) "<")
  (data (;313;) (i32.const 17384) "\01\00\00\00(\00\00\00c\00o\00n\00s\00i\00d\00e\00r\00 \00u\00s\00i\00n\00g\00 \00`\00t\00r\00y\00_")
  (data (;314;) (i32.const 17436) "\5c")
  (data (;315;) (i32.const 17448) "\01\00\00\00@\00\00\00`\00 \00t\00o\00 \00h\00a\00n\00d\00l\00e\00 \00t\00h\00i\00s\00 \00i\00n\00 \00t\00h\00e\00 \00m\00a\00p\00p\00i\00n\00g\00.")
  (data (;316;) (i32.const 17532) "\5c")
  (data (;317;) (i32.const 17544) "\01\00\00\00@\00\00\00E\00t\00h\00e\00r\00e\00u\00m\00 \00v\00a\00l\00u\00e\00 \00i\00s\00 \00n\00o\00t\00 \00a\00n\00 \00a\00d\00d\00r\00e\00s\00s")
  (data (;318;) (i32.const 17628) "\1c")
  (data (;319;) (i32.const 17640) "\14\00\00\00\08\00\00\00\05")
  (data (;320;) (i32.const 17660) "\8c")
  (data (;321;) (i32.const 17672) "\01\00\00\00x\00\00\00C\00a\00n\00 \00m\00o\00c\00k\00 \00t\00h\00e\00 \00l\00i\00q\00u\00i\00d\00a\00t\00i\00o\00n\00I\00n\00c\00e\00n\00t\00i\00v\00e\00M\00a\00n\00t\00i\00s\00s\00a\00 \00f\00u\00n\00c\00t\00i\00o\00n\00 \00c\00o\00r\00r\00e\00c\00t\00l\00y")
  (data (;322;) (i32.const 17804) "<")
  (data (;323;) (i32.const 17816) "\01\00\00\00&\00\00\001\001\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000")
  (data (;324;) (i32.const 17868) "L")
  (data (;325;) (i32.const 17880) "\01\00\00\008\00\00\00l\00i\00q\00u\00i\00d\00a\00t\00i\00o\00n\00I\00n\00c\00e\00n\00t\00i\00v\00e\00M\00a\00n\00t\00i\00s\00s\00a")
  (data (;326;) (i32.const 17948) "l")
  (data (;327;) (i32.const 17960) "\01\00\00\00P\00\00\00l\00i\00q\00u\00i\00d\00a\00t\00i\00o\00n\00I\00n\00c\00e\00n\00t\00i\00v\00e\00M\00a\00n\00t\00i\00s\00s\00a\00(\00)\00:\00(\00u\00i\00n\00t\002\005\006\00)")
  (data (;328;) (i32.const 18060) "\1c")
  (data (;329;) (i32.const 18092) "\5c")
  (data (;330;) (i32.const 18104) "\01\00\00\00J\00\00\00E\00t\00h\00e\00r\00e\00u\00m\00 \00v\00a\00l\00u\00e\00 \00i\00s\00 \00n\00o\00t\00 \00a\00n\00 \00i\00n\00t\00 \00o\00r\00 \00u\00i\00n\00t\00.")
  (data (;331;) (i32.const 18188) "\1c")
  (data (;332;) (i32.const 18200) "\14\00\00\00\08\00\00\00\06")
  (data (;333;) (i32.const 18220) "|")
  (data (;334;) (i32.const 18232) "\01\00\00\00f\00\00\00C\00a\00n\00 \00m\00o\00c\00k\00 \00t\00h\00e\00 \00c\00l\00o\00s\00e\00F\00a\00c\00t\00o\00r\00M\00a\00n\00t\00i\00s\00s\00a\00 \00f\00u\00n\00c\00t\00i\00o\00n\00 \00c\00o\00r\00r\00e\00c\00t\00l\00y")
  (data (;335;) (i32.const 18348) "<")
  (data (;336;) (i32.const 18360) "\01\00\00\00$\00\00\005\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000")
  (data (;337;) (i32.const 18412) "<")
  (data (;338;) (i32.const 18424) "\01\00\00\00&\00\00\00c\00l\00o\00s\00e\00F\00a\00c\00t\00o\00r\00M\00a\00n\00t\00i\00s\00s\00a")
  (data (;339;) (i32.const 18476) "\5c")
  (data (;340;) (i32.const 18488) "\01\00\00\00>\00\00\00c\00l\00o\00s\00e\00F\00a\00c\00t\00o\00r\00M\00a\00n\00t\00i\00s\00s\00a\00(\00)\00:\00(\00u\00i\00n\00t\002\005\006\00)")
  (data (;341;) (i32.const 18572) "\1c")
  (data (;342;) (i32.const 18604) "\1c")
  (data (;343;) (i32.const 18616) "\14\00\00\00\08\00\00\00\07")
  (data (;344;) (i32.const 18636) "\8c")
  (data (;345;) (i32.const 18648) "\01\00\00\00n\00\00\00C\00a\00n\00 \00m\00o\00c\00k\00 \00t\00h\00e\00 \00m\00M\00O\00V\00R\00 \00i\00n\00t\00e\00r\00e\00s\00t\00R\00a\00t\00e\00M\00o\00d\00e\00l\00 \00f\00u\00n\00c\00t\00i\00o\00n\00 \00c\00o\00r\00r\00e\00c\00t\00l\00y")
  (data (;346;) (i32.const 18780) "<")
  (data (;347;) (i32.const 18792) "\01\00\00\00\22\00\00\00i\00n\00t\00e\00r\00e\00s\00t\00R\00a\00t\00e\00M\00o\00d\00e\00l")
  (data (;348;) (i32.const 18844) "L")
  (data (;349;) (i32.const 18856) "\01\00\00\00:\00\00\00i\00n\00t\00e\00r\00e\00s\00t\00R\00a\00t\00e\00M\00o\00d\00e\00l\00(\00)\00:\00(\00a\00d\00d\00r\00e\00s\00s\00)")
  (data (;350;) (i32.const 18924) "\1c")
  (data (;351;) (i32.const 18936) "\01\00\00\00\0c\00\00\00C\00T\00o\00k\00e\00n")
  (data (;352;) (i32.const 18956) "\1c")
  (data (;353;) (i32.const 18988) "\1c")
  (data (;354;) (i32.const 19000) "\14\00\00\00\08\00\00\00\08")
  (data (;355;) (i32.const 19020) "\8c")
  (data (;356;) (i32.const 19032) "\01\00\00\00v\00\00\00C\00a\00n\00 \00m\00o\00c\00k\00 \00t\00h\00e\00 \00m\00M\00O\00V\00R\00 \00r\00e\00s\00e\00r\00v\00e\00F\00a\00c\00t\00o\00r\00M\00a\00n\00t\00i\00s\00s\00a\00 \00f\00u\00n\00c\00t\00i\00o\00n\00 \00c\00o\00r\00r\00e\00c\00t\00l\00y")
  (data (;357;) (i32.const 19164) "<")
  (data (;358;) (i32.const 19176) "\01\00\00\00*\00\00\00r\00e\00s\00e\00r\00v\00e\00F\00a\00c\00t\00o\00r\00M\00a\00n\00t\00i\00s\00s\00a")
  (data (;359;) (i32.const 19228) "\5c")
  (data (;360;) (i32.const 19240) "\01\00\00\00B\00\00\00r\00e\00s\00e\00r\00v\00e\00F\00a\00c\00t\00o\00r\00M\00a\00n\00t\00i\00s\00s\00a\00(\00)\00:\00(\00u\00i\00n\00t\002\005\006\00)")
  (data (;361;) (i32.const 19324) "\1c")
  (data (;362;) (i32.const 19356) "\1c")
  (data (;363;) (i32.const 19368) "\14\00\00\00\08\00\00\00\09")
  (data (;364;) (i32.const 19388) "l")
  (data (;365;) (i32.const 19400) "\01\00\00\00T\00\00\00C\00a\00n\00 \00m\00o\00c\00k\00 \00t\00h\00e\00 \00m\00M\00O\00V\00R\00 \00n\00a\00m\00e\00 \00f\00u\00n\00c\00t\00i\00o\00n\00 \00c\00o\00r\00r\00e\00c\00t\00l\00y")
  (data (;366;) (i32.const 19500) ",")
  (data (;367;) (i32.const 19512) "\01\00\00\00\1a\00\00\00M\00o\00o\00n\00w\00e\00l\00l\00 \00M\00O\00V\00R")
  (data (;368;) (i32.const 19548) "\1c")
  (data (;369;) (i32.const 19560) "\01\00\00\00\08\00\00\00n\00a\00m\00e")
  (data (;370;) (i32.const 19580) "<")
  (data (;371;) (i32.const 19592) "\01\00\00\00\1e\00\00\00n\00a\00m\00e\00(\00)\00:\00(\00s\00t\00r\00i\00n\00g\00)")
  (data (;372;) (i32.const 19644) "\1c")
  (data (;373;) (i32.const 19676) "\5c")
  (data (;374;) (i32.const 19688) "\01\00\00\00>\00\00\00E\00t\00h\00e\00r\00e\00u\00m\00 \00v\00a\00l\00u\00e\00 \00i\00s\00 \00n\00o\00t\00 \00a\00 \00s\00t\00r\00i\00n\00g\00.")
  (data (;375;) (i32.const 19772) "\1c")
  (data (;376;) (i32.const 19784) "\14\00\00\00\08\00\00\00\0a")
  (data (;377;) (i32.const 19804) "l")
  (data (;378;) (i32.const 19816) "\01\00\00\00X\00\00\00C\00a\00n\00 \00m\00o\00c\00k\00 \00t\00h\00e\00 \00m\00M\00O\00V\00R\00 \00s\00y\00m\00b\00o\00l\00 \00f\00u\00n\00c\00t\00i\00o\00n\00 \00c\00o\00r\00r\00e\00c\00t\00l\00y")
  (data (;379;) (i32.const 19916) "\1c")
  (data (;380;) (i32.const 19928) "\01\00\00\00\0c\00\00\00s\00y\00m\00b\00o\00l")
  (data (;381;) (i32.const 19948) "<")
  (data (;382;) (i32.const 19960) "\01\00\00\00\22\00\00\00s\00y\00m\00b\00o\00l\00(\00)\00:\00(\00s\00t\00r\00i\00n\00g\00)")
  (data (;383;) (i32.const 20012) "\1c")
  (data (;384;) (i32.const 20044) "\1c")
  (data (;385;) (i32.const 20056) "\14\00\00\00\08\00\00\00\0b")
  (data (;386;) (i32.const 20076) "\ac")
  (data (;387;) (i32.const 20088) "\01\00\00\00\92\00\00\00C\00a\00n\00 \00m\00o\00c\00k\00 \00t\00h\00e\00 \00P\00r\00i\00c\00e\00O\00r\00a\00c\00l\00e\00 \00g\00e\00t\00F\00e\00e\00d\00 \00f\00u\00n\00c\00t\00i\00o\00n\00s\00 \00f\00o\00r\00 \00m\00M\00O\00V\00R\00 \00a\00n\00d\00 \00m\00x\00c\00K\00S\00M\00 \00c\00o\00r\00r\00e\00c\00t\00l\00y")
  (data (;388;) (i32.const 20252) ",")
  (data (;389;) (i32.const 20264) "\01\00\00\00\0e\00\00\00g\00e\00t\00F\00e\00e\00d")
  (data (;390;) (i32.const 20300) "L")
  (data (;391;) (i32.const 20312) "\01\00\00\002\00\00\00g\00e\00t\00F\00e\00e\00d\00(\00s\00t\00r\00i\00n\00g\00)\00:\00(\00a\00d\00d\00r\00e\00s\00s\00)")
  (data (;392;) (i32.const 20380) "\1c")
  (data (;393;) (i32.const 20392) "\01\00\00\00\0a\00\00\00x\00c\00K\00S\00M")
  (data (;394;) (i32.const 20412) ",")
  (data (;395;) (i32.const 20424) "\01\00\00\00\16\00\00\00P\00r\00i\00c\00e\00O\00r\00a\00c\00l\00e")
  (data (;396;) (i32.const 20460) "\1c")
  (data (;397;) (i32.const 20472) "\14\00\00\00\08\00\00\00\0c")
  (data (;398;) (i32.const 20492) "\ac")
  (data (;399;) (i32.const 20504) "\01\00\00\00\90\00\00\00C\00a\00n\00 \00m\00o\00c\00k\00 \00t\00h\00e\00 \00M\00O\00V\00R\00 \00a\00n\00d\00 \00x\00c\00K\00S\00M\00 \00C\00h\00a\00i\00n\00l\00i\00n\00k\00 \00f\00e\00e\00d\00 \00a\00g\00g\00r\00e\00g\00a\00t\00o\00r\00 \00f\00u\00n\00c\00t\00i\00o\00n\00 \00c\00o\00r\00r\00e\00c\00t\00l\00y")
  (data (;400;) (i32.const 20668) ",")
  (data (;401;) (i32.const 20680) "\01\00\00\00\14\00\00\00a\00g\00g\00r\00e\00g\00a\00t\00o\00r")
  (data (;402;) (i32.const 20716) "<")
  (data (;403;) (i32.const 20728) "\01\00\00\00,\00\00\00a\00g\00g\00r\00e\00g\00a\00t\00o\00r\00(\00)\00:\00(\00a\00d\00d\00r\00e\00s\00s\00)")
  (data (;404;) (i32.const 20780) ",")
  (data (;405;) (i32.const 20792) "\01\00\00\00\12\00\00\00F\00e\00e\00d\00P\00r\00o\00x\00y")
  (data (;406;) (i32.const 20828) "\1c")
  (data (;407;) (i32.const 20860) "\1c")
  (data (;408;) (i32.const 20872) "\14\00\00\00\08\00\00\00\0d")
  (data (;409;) (i32.const 20892) "\8c")
  (data (;410;) (i32.const 20904) "\01\00\00\00p\00\00\00C\00a\00n\00 \00m\00o\00c\00k\00 \00t\00h\00e\00 \00m\00x\00c\00K\00S\00M\00 \00i\00n\00t\00e\00r\00e\00s\00t\00R\00a\00t\00e\00M\00o\00d\00e\00l\00 \00f\00u\00n\00c\00t\00i\00o\00n\00 \00c\00o\00r\00r\00e\00c\00t\00l\00y")
  (data (;411;) (i32.const 21036) "\1c")
  (data (;412;) (i32.const 21048) "\14\00\00\00\08\00\00\00\0e")
  (data (;413;) (i32.const 21068) "\8c")
  (data (;414;) (i32.const 21080) "\01\00\00\00x\00\00\00C\00a\00n\00 \00m\00o\00c\00k\00 \00t\00h\00e\00 \00m\00x\00c\00K\00S\00M\00 \00r\00e\00s\00e\00r\00v\00e\00F\00a\00c\00t\00o\00r\00M\00a\00n\00t\00i\00s\00s\00a\00 \00f\00u\00n\00c\00t\00i\00o\00n\00 \00c\00o\00r\00r\00e\00c\00t\00l\00y")
  (data (;415;) (i32.const 21212) "\1c")
  (data (;416;) (i32.const 21224) "\14\00\00\00\08\00\00\00\0f")
  (data (;417;) (i32.const 21244) "l")
  (data (;418;) (i32.const 21256) "\01\00\00\00V\00\00\00C\00a\00n\00 \00m\00o\00c\00k\00 \00t\00h\00e\00 \00m\00x\00c\00K\00S\00M\00 \00n\00a\00m\00e\00 \00f\00u\00n\00c\00t\00i\00o\00n\00 \00c\00o\00r\00r\00e\00c\00t\00l\00y")
  (data (;419;) (i32.const 21356) "<")
  (data (;420;) (i32.const 21368) "\01\00\00\00\1e\00\00\00M\00o\00o\00n\00w\00e\00l\00l\00 \00K\00u\00s\00a\00m\00a")
  (data (;421;) (i32.const 21420) "\1c")
  (data (;422;) (i32.const 21432) "\14\00\00\00\08\00\00\00\10")
  (data (;423;) (i32.const 21452) "l")
  (data (;424;) (i32.const 21464) "\01\00\00\00Z\00\00\00C\00a\00n\00 \00m\00o\00c\00k\00 \00t\00h\00e\00 \00m\00x\00c\00K\00S\00M\00 \00s\00y\00m\00b\00o\00l\00 \00f\00u\00n\00c\00t\00i\00o\00n\00 \00c\00o\00r\00r\00e\00c\00t\00l\00y")
  (data (;425;) (i32.const 21564) "\1c")
  (data (;426;) (i32.const 21576) "\14\00\00\00\08\00\00\00\11")
  (data (;427;) (i32.const 21596) "|")
  (data (;428;) (i32.const 21608) "\01\00\00\00b\00\00\00C\00a\00n\00 \00m\00o\00c\00k\00 \00t\00h\00e\00 \00m\00x\00c\00K\00S\00M\00 \00u\00n\00d\00e\00r\00l\00y\00i\00n\00g\00 \00f\00u\00n\00c\00t\00i\00o\00n\00 \00c\00o\00r\00r\00e\00c\00t\00l\00y")
  (data (;429;) (i32.const 21724) ",")
  (data (;430;) (i32.const 21736) "\01\00\00\00\14\00\00\00u\00n\00d\00e\00r\00l\00y\00i\00n\00g")
  (data (;431;) (i32.const 21772) "<")
  (data (;432;) (i32.const 21784) "\01\00\00\00,\00\00\00u\00n\00d\00e\00r\00l\00y\00i\00n\00g\00(\00)\00:\00(\00a\00d\00d\00r\00e\00s\00s\00)")
  (data (;433;) (i32.const 21836) "\1c")
  (data (;434;) (i32.const 21868) "\1c")
  (data (;435;) (i32.const 21880) "\14\00\00\00\08\00\00\00\12")
  (data (;436;) (i32.const 21900) "|")
  (data (;437;) (i32.const 21912) "\01\00\00\00h\00\00\00C\00a\00n\00 \00m\00o\00c\00k\00 \00t\00h\00e\00 \00x\00c\00K\00S\00M\00 \00E\00R\00C\002\000\00 \00d\00e\00c\00i\00m\00a\00l\00s\00 \00f\00u\00n\00c\00t\00i\00o\00n\00 \00c\00o\00r\00r\00e\00c\00t\00l\00y")
  (data (;438;) (i32.const 22028) ",")
  (data (;439;) (i32.const 22040) "\01\00\00\00\10\00\00\00d\00e\00c\00i\00m\00a\00l\00s")
  (data (;440;) (i32.const 22076) "<")
  (data (;441;) (i32.const 22088) "\01\00\00\00$\00\00\00d\00e\00c\00i\00m\00a\00l\00s\00(\00)\00:\00(\00u\00i\00n\00t\008\00)")
  (data (;442;) (i32.const 22140) "\1c")
  (data (;443;) (i32.const 22152) "\01\00\00\00\0a\00\00\00E\00R\00C\002\000")
  (data (;444;) (i32.const 22172) "\1c")
  (data (;445;) (i32.const 22204) "<")
  (data (;446;) (i32.const 22216) "\01\00\00\00(\00\00\00o\00v\00e\00r\00f\00l\00o\00w\00 \00c\00o\00n\00v\00e\00r\00t\00i\00n\00g\00 ")
  (data (;447;) (i32.const 22268) ",")
  (data (;448;) (i32.const 22280) "\01\00\00\00\0e\00\00\00 \00t\00o\00 \00i\003\002")
  (data (;449;) (i32.const 22316) "|")
  (data (;450;) (i32.const 22328) "\01\00\00\00d\00\00\00~\00l\00i\00b\00/\00@\00g\00r\00a\00p\00h\00p\00r\00o\00t\00o\00c\00o\00l\00/\00g\00r\00a\00p\00h\00-\00t\00s\00/\00c\00o\00m\00m\00o\00n\00/\00c\00o\00l\00l\00e\00c\00t\00i\00o\00n\00s\00.\00t\00s")
  (data (;451;) (i32.const 22444) "\1c")
  (data (;452;) (i32.const 22456) "\14\00\00\00\08\00\00\00\13")
  (data (;453;) (i32.const 22476) "|")
  (data (;454;) (i32.const 22488) "\01\00\00\00`\00\00\00C\00a\00n\00 \00m\00o\00c\00k\00 \00t\00h\00e\00 \00x\00c\00K\00S\00M\00 \00E\00R\00C\002\000\00 \00n\00a\00m\00e\00 \00f\00u\00n\00c\00t\00i\00o\00n\00 \00c\00o\00r\00r\00e\00c\00t\00l\00y")
  (data (;455;) (i32.const 22604) "\1c")
  (data (;456;) (i32.const 22636) "\1c")
  (data (;457;) (i32.const 22648) "\14\00\00\00\08\00\00\00\14")
  (data (;458;) (i32.const 22668) "|")
  (data (;459;) (i32.const 22680) "\01\00\00\00d\00\00\00C\00a\00n\00 \00m\00o\00c\00k\00 \00t\00h\00e\00 \00x\00c\00K\00S\00M\00 \00E\00R\00C\002\000\00 \00s\00y\00m\00b\00o\00l\00 \00f\00u\00n\00c\00t\00i\00o\00n\00 \00c\00o\00r\00r\00e\00c\00t\00l\00y")
  (data (;460;) (i32.const 22796) "\1c")
  (data (;461;) (i32.const 22828) "\1c")
  (data (;462;) (i32.const 22840) "\14\00\00\00\08\00\00\00\15")
  (data (;463;) (i32.const 22860) "\1c")
  (data (;464;) (i32.const 22872) "\14\00\00\00\08\00\00\00\16")
  (data (;465;) (i32.const 22892) "\ac")
  (data (;466;) (i32.const 22904) "\01\00\00\00\9a\00\00\00C\00r\00e\00a\00t\00e\00 \00C\00o\00m\00p\00t\00r\00o\00l\00l\00e\00r\00,\00 \00M\00O\00V\00R\00 \00+\00 \00x\00c\00K\00S\00M\00 \00m\00a\00r\00k\00e\00t\00s\00,\00 \00a\00n\00d\00 \00a\00c\00c\00o\00u\00n\00t\00s\00 \00w\00i\00t\00h\00 \00m\00o\00c\00k\00 \00e\00v\00e\00n\00t\00s\00 \00t\00e\00s\00t\00s")
  (data (;467;) (i32.const 23068) "\1c")
  (data (;468;) (i32.const 23080) "\14\00\00\00\08\00\00\00\17")
  (data (;469;) (i32.const 23100) "L")
  (data (;470;) (i32.const 23112) "\01\00\00\006\00\00\00S\00h\00o\00u\00l\00d\00 \00c\00r\00e\00a\00t\00e\00 \00a\00 \00C\00o\00m\00p\00t\00r\00o\00l\00l\00e\00r")
  (data (;471;) (i32.const 23180) "\1c")
  (data (;472;) (i32.const 23192) "\01\00\00\00\04\00\00\00i\00d")
  (data (;473;) (i32.const 23212) ",")
  (data (;474;) (i32.const 23224) "\01\00\00\00\16\00\00\00p\00r\00i\00c\00e\00O\00r\00a\00c\00l\00e")
  (data (;475;) (i32.const 23260) "\1c")
  (data (;476;) (i32.const 23272) "\01\00\00\00\06\00\00\000\00.\000")
  (data (;477;) (i32.const 23292) "\1c")
  (data (;478;) (i32.const 23304) "\01\00\00\00\06\00\00\00N\00a\00N")
  (data (;479;) (i32.const 23324) ",")
  (data (;480;) (i32.const 23336) "\01\00\00\00\12\00\00\00-\00I\00n\00f\00i\00n\00i\00t\00y")
  (data (;481;) (i32.const 23372) ",")
  (data (;482;) (i32.const 23384) "\01\00\00\00\10\00\00\00I\00n\00f\00i\00n\00i\00t\00y")
  (data (;483;) (i32.const 23480) "\88\02\1c\08\a0\d5\8f\fav\bf>\a2\7f\e1\ae\bav\acU0 \fb\16\8b\ea5\ce]J\89B\cf-;eU\aa\b0k\9a\dfE\1a=\03\cf\1a\e6\ca\c6\9a\c7\17\fep\abO\dc\bc\be\fc\b1w\ff\0c\d6kA\ef\91V\be<\fc\7f\90\ad\1f\d0\8d\83\9aU1(\5cQ\d3\b5\c9\a6\ad\8f\acq\9d\cb\8b\ee#w\22\9c\eamSx@\91I\cc\aeW\ce\b6]y\12<\827V\fbM6\94\10\c2O\98H8o\ea\96\90\c7:\82%\cb\85t\d7\f4\97\bf\97\cd\cf\86\a0\e5\ac*\17\98\0a4\ef\8e\b25*\fbg8\b2;?\c6\d2\df\d4\c8\84\ba\cd\d3\1a'D\dd\c5\96\c9%\bb\ce\9fk\93\84\a5b}$l\ac\db\f6\da_\0dXf\ab\a3&\f1\c3\de\93\f8\e2\f3\b8\80\ff\aa\a8\ad\b5\b5\8bJ|l\05_b\87S0\c14`\ff\bc\c9U&\ba\91\8c\85N\96\bd~)p$w\f9\df\8f\b8\e5\b8\9f\bd\df\a6\94}t\88\cf_\a9\f8\cf\9b\a8\8f\93pD\b9k\15\0f\bf\f8\f0\08\8a\b611eU%\b0\cd\ac\7f{\d0\c6\e2?\99\06;+*\c4\10\5c\e4\d3\92si\99$$\aa\0e\ca\00\83\f2\b5\87\fd\eb\1a\11\92d\08\e5\bc\cc\88Po\09\cc\bc\8c,e\19\e2X\17\b7\d1\00\00\00\00\00\00@\9c\00\00\00\00\10\a5\d4\e8\00\00b\ac\c5\ebx\ad\84\09\94\f8x9?\81\b3\15\07\c9{\ce\97\c0p\5c\ea{\ce2~\8fh\80\e9\ab\a48\d2\d5E\22\9a\17&'O\9f'\fb\c4\d41\a2c\ed\a8\ad\c8\8c8e\de\b0\dbe\ab\1a\8e\08\c7\83\9a\1dqB\f9\1d]\c4X\e7\1b\a6,iM\92\ea\8dp\1ad\ee\01\daJw\ef\9a\99\a3m\a2\85k}\b4{x\09\f2w\18\ddy\a1\e4T\b4\c2\c5\9b[\92\86[\86=]\96\c8\c5S5\c8\b3\a0\97\fa\5c\b4*\95\e3_\a0\99\bd\9fF\de%\8c9\db4\c2\9b\a5\5c\9f\98\a3r\9a\c6\f6\ce\be\e9TS\bf\dc\b7\e2A\22\f2\17\f3\fc\88\a5x\5c\d3\9b\ce \cc\dfS!{\f3Z\16\98:0\1f\97\dc\b5\a0\e2\96\b3\e3\5cS\d1\d9\a8<D\a7\a4\d9|\9b\fb\10D\a4\a7LLv\bb\1a\9c@\b6\ef\8e\ab\8b,\84W\a6\10\ef\1f\d0)1\91\e9\e5\a4\10\9b\9d\0c\9c\a1\fb\9b\10\e7)\f4;b\d9 (\ac\85\cf\a7z^KD\80-\dd\ac\03@\e4!\bf\8f\ffD^/\9cg\8eA\b8\8c\9c\9d\173\d4\a9\1b\e3\b4\92\db\19\9e\d9w\df\ban\bf\96\ebk\ee\f0\9b;\02\87\af")
  (data (;484;) (i32.const 24176) "<\fbW\fbr\fb\8c\fb\a7\fb\c1\fb\dc\fb\f6\fb\11\fc,\fcF\fca\fc{\fc\96\fc\b1\fc\cb\fc\e6\fc\00\fd\1b\fd5\fdP\fdk\fd\85\fd\a0\fd\ba\fd\d5\fd\ef\fd\0a\fe%\fe?\feZ\fet\fe\8f\fe\a9\fe\c4\fe\df\fe\f9\fe\14\ff.\ffI\ffc\ff~\ff\99\ff\b3\ff\ce\ff\e8\ff\03\00\1e\008\00S\00m\00\88\00\a2\00\bd\00\d8\00\f2\00\0d\01'\01B\01\5c\01w\01\92\01\ac\01\c7\01\e1\01\fc\01\16\021\02L\02f\02\81\02\9b\02\b6\02\d0\02\eb\02\06\03 \03;\03U\03p\03\8b\03\a5\03\c0\03\da\03\f5\03\0f\04*\04")
  (data (;485;) (i32.const 24352) "\01\00\00\00\0a\00\00\00d\00\00\00\e8\03\00\00\10'\00\00\a0\86\01\00@B\0f\00\80\96\98\00\00\e1\f5\05\00\ca\9a;")
  (data (;486;) (i32.const 24392) "0\000\000\001\000\002\000\003\000\004\000\005\000\006\000\007\000\008\000\009\001\000\001\001\001\002\001\003\001\004\001\005\001\006\001\007\001\008\001\009\002\000\002\001\002\002\002\003\002\004\002\005\002\006\002\007\002\008\002\009\003\000\003\001\003\002\003\003\003\004\003\005\003\006\003\007\003\008\003\009\004\000\004\001\004\002\004\003\004\004\004\005\004\006\004\007\004\008\004\009\005\000\005\001\005\002\005\003\005\004\005\005\005\006\005\007\005\008\005\009\006\000\006\001\006\002\006\003\006\004\006\005\006\006\006\007\006\008\006\009\007\000\007\001\007\002\007\003\007\004\007\005\007\006\007\007\007\008\007\009\008\000\008\001\008\002\008\003\008\004\008\005\008\006\008\007\008\008\008\009\009\000\009\001\009\002\009\003\009\004\009\005\009\006\009\007\009\008\009\009")
  (data (;487;) (i32.const 24796) "<")
  (data (;488;) (i32.const 24808) "\01\00\00\00(\00\00\00l\00i\00q\00u\00i\00d\00a\00t\00i\00o\00n\00I\00n\00c\00e\00n\00t\00i\00v\00e")
  (data (;489;) (i32.const 24860) ",")
  (data (;490;) (i32.const 24872) "\01\00\00\00\16\00\00\00c\00l\00o\00s\00e\00F\00a\00c\00t\00o\00r")
  (data (;491;) (i32.const 24908) "\1c")
  (data (;492;) (i32.const 24940) ",")
  (data (;493;) (i32.const 24952) "\01\00\00\00\10\00\00\00_\00m\00a\00r\00k\00e\00t\00s")
  (data (;494;) (i32.const 24988) "l")
  (data (;495;) (i32.const 25000) "\01\00\00\00X\00\00\00C\00a\00n\00n\00o\00t\00 \00s\00a\00v\00e\00 \00C\00o\00m\00p\00t\00r\00o\00l\00l\00e\00r\00 \00e\00n\00t\00i\00t\00y\00 \00w\00i\00t\00h\00o\00u\00t\00 \00a\00n\00 \00I\00D")
  (data (;496;) (i32.const 25100) "<")
  (data (;497;) (i32.const 25112) "\01\00\00\00&\00\00\00g\00e\00n\00e\00r\00a\00t\00e\00d\00/\00s\00c\00h\00e\00m\00a\00.\00t\00s")
  (data (;498;) (i32.const 25164) "\ac")
  (data (;499;) (i32.const 25176) "\01\00\00\00\90\00\00\00E\00n\00t\00i\00t\00i\00e\00s\00 \00o\00f\00 \00t\00y\00p\00e\00 \00C\00o\00m\00p\00t\00r\00o\00l\00l\00e\00r\00 \00m\00u\00s\00t\00 \00h\00a\00v\00e\00 \00a\00n\00 \00I\00D\00 \00o\00f\00 \00t\00y\00p\00e\00 \00S\00t\00r\00i\00n\00g\00 \00b\00u\00t\00 \00t\00h\00e\00 \00i\00d\00 \00'")
  (data (;500;) (i32.const 25340) ",")
  (data (;501;) (i32.const 25352) "\01\00\00\00\1a\00\00\00'\00 \00i\00s\00 \00o\00f\00 \00t\00y\00p\00e\00 ")
  (data (;502;) (i32.const 25388) ",")
  (data (;503;) (i32.const 25400) "\22\00\00\00\14\00\00\00`b\00\00\00\00\00\00\10c\00\00\00\00\00\00\908")
  (data (;504;) (i32.const 25436) "<")
  (data (;505;) (i32.const 25448) "\01\00\00\00,\00\00\00V\00a\00l\00u\00e\00 \00i\00s\00 \00n\00o\00t\00 \00a\00 \00s\00t\00r\00i\00n\00g\00.")
  (data (;506;) (i32.const 25500) "l")
  (data (;507;) (i32.const 25512) "\01\00\00\00X\00\00\00~\00l\00i\00b\00/\00@\00g\00r\00a\00p\00h\00p\00r\00o\00t\00o\00c\00o\00l\00/\00g\00r\00a\00p\00h\00-\00t\00s\00/\00c\00o\00m\00m\00o\00n\00/\00v\00a\00l\00u\00e\00.\00t\00s")
  (data (;508;) (i32.const 25612) "<")
  (data (;509;) (i32.const 25624) "\01\00\00\00(\00\00\00V\00a\00l\00u\00e\00 \00i\00s\00 \00n\00o\00t\00 \00a\00n\00 \00i\003\002\00.")
  (data (;510;) (i32.const 25676) "|")
  (data (;511;) (i32.const 25688) "\01\00\00\00d\00\00\00t\00o\00S\00t\00r\00i\00n\00g\00(\00)\00 \00r\00a\00d\00i\00x\00 \00a\00r\00g\00u\00m\00e\00n\00t\00 \00m\00u\00s\00t\00 \00b\00e\00 \00b\00e\00t\00w\00e\00e\00n\00 \002\00 \00a\00n\00d\00 \003\006")
  (data (;512;) (i32.const 25804) "<")
  (data (;513;) (i32.const 25816) "\01\00\00\00&\00\00\00~\00l\00i\00b\00/\00u\00t\00i\00l\00/\00n\00u\00m\00b\00e\00r\00.\00t\00s")
  (data (;514;) (i32.const 25868) "\1c\04")
  (data (;515;) (i32.const 25880) "\01\00\00\00\00\04\00\000\000\000\001\000\002\000\003\000\004\000\005\000\006\000\007\000\008\000\009\000\00a\000\00b\000\00c\000\00d\000\00e\000\00f\001\000\001\001\001\002\001\003\001\004\001\005\001\006\001\007\001\008\001\009\001\00a\001\00b\001\00c\001\00d\001\00e\001\00f\002\000\002\001\002\002\002\003\002\004\002\005\002\006\002\007\002\008\002\009\002\00a\002\00b\002\00c\002\00d\002\00e\002\00f\003\000\003\001\003\002\003\003\003\004\003\005\003\006\003\007\003\008\003\009\003\00a\003\00b\003\00c\003\00d\003\00e\003\00f\004\000\004\001\004\002\004\003\004\004\004\005\004\006\004\007\004\008\004\009\004\00a\004\00b\004\00c\004\00d\004\00e\004\00f\005\000\005\001\005\002\005\003\005\004\005\005\005\006\005\007\005\008\005\009\005\00a\005\00b\005\00c\005\00d\005\00e\005\00f\006\000\006\001\006\002\006\003\006\004\006\005\006\006\006\007\006\008\006\009\006\00a\006\00b\006\00c\006\00d\006\00e\006\00f\007\000\007\001\007\002\007\003\007\004\007\005\007\006\007\007\007\008\007\009\007\00a\007\00b\007\00c\007\00d\007\00e\007\00f\008\000\008\001\008\002\008\003\008\004\008\005\008\006\008\007\008\008\008\009\008\00a\008\00b\008\00c\008\00d\008\00e\008\00f\009\000\009\001\009\002\009\003\009\004\009\005\009\006\009\007\009\008\009\009\009\00a\009\00b\009\00c\009\00d\009\00e\009\00f\00a\000\00a\001\00a\002\00a\003\00a\004\00a\005\00a\006\00a\007\00a\008\00a\009\00a\00a\00a\00b\00a\00c\00a\00d\00a\00e\00a\00f\00b\000\00b\001\00b\002\00b\003\00b\004\00b\005\00b\006\00b\007\00b\008\00b\009\00b\00a\00b\00b\00b\00c\00b\00d\00b\00e\00b\00f\00c\000\00c\001\00c\002\00c\003\00c\004\00c\005\00c\006\00c\007\00c\008\00c\009\00c\00a\00c\00b\00c\00c\00c\00d\00c\00e\00c\00f\00d\000\00d\001\00d\002\00d\003\00d\004\00d\005\00d\006\00d\007\00d\008\00d\009\00d\00a\00d\00b\00d\00c\00d\00d\00d\00e\00d\00f\00e\000\00e\001\00e\002\00e\003\00e\004\00e\005\00e\006\00e\007\00e\008\00e\009\00e\00a\00e\00b\00e\00c\00e\00d\00e\00e\00e\00f\00f\000\00f\001\00f\002\00f\003\00f\004\00f\005\00f\006\00f\007\00f\008\00f\009\00f\00a\00f\00b\00f\00c\00f\00d\00f\00e\00f\00f")
  (data (;516;) (i32.const 26924) "\5c")
  (data (;517;) (i32.const 26936) "\01\00\00\00H\00\00\000\001\002\003\004\005\006\007\008\009\00a\00b\00c\00d\00e\00f\00g\00h\00i\00j\00k\00l\00m\00n\00o\00p\00q\00r\00s\00t\00u\00v\00w\00x\00y\00z")
  (data (;518;) (i32.const 27020) "L")
  (data (;519;) (i32.const 27032) "\01\00\00\004\00\00\00V\00a\00l\00u\00e\00 \00i\00s\00 \00n\00o\00t\00 \00a\00 \00B\00i\00g\00D\00e\00c\00i\00m\00a\00l\00.")
  (data (;520;) (i32.const 27100) "L")
  (data (;521;) (i32.const 27112) "\01\00\00\00.\00\00\00V\00a\00l\00u\00e\00 \00i\00s\00 \00n\00o\00t\00 \00a\00 \00b\00o\00o\00l\00e\00a\00n\00.")
  (data (;522;) (i32.const 27180) "\1c")
  (data (;523;) (i32.const 27192) "\01\00\00\00\08\00\00\00t\00r\00u\00e")
  (data (;524;) (i32.const 27212) "\1c")
  (data (;525;) (i32.const 27224) "\01\00\00\00\0a\00\00\00f\00a\00l\00s\00e")
  (data (;526;) (i32.const 27244) "<")
  (data (;527;) (i32.const 27256) "\01\00\00\00,\00\00\00V\00a\00l\00u\00e\00 \00i\00s\00 \00n\00o\00t\00 \00a\00n\00 \00a\00r\00r\00a\00y\00.")
  (data (;528;) (i32.const 27308) "\1c")
  (data (;529;) (i32.const 27320) "\01\00\00\00\02\00\00\00[")
  (data (;530;) (i32.const 27340) "\1c")
  (data (;531;) (i32.const 27352) "#\00\00\00\08\00\00\00\18")
  (data (;532;) (i32.const 27372) "\1c")
  (data (;533;) (i32.const 27384) "\01\00\00\00\04\00\00\00,\00 ")
  (data (;534;) (i32.const 27404) "\1c")
  (data (;535;) (i32.const 27416) "\01\00\00\00\02\00\00\00]")
  (data (;536;) (i32.const 27436) "L")
  (data (;537;) (i32.const 27448) "\01\00\00\004\00\00\00V\00a\00l\00u\00e\00 \00i\00s\00 \00n\00o\00t\00 \00a\00 \00b\00y\00t\00e\00 \00a\00r\00r\00a\00y\00.")
  (data (;538;) (i32.const 27516) "<")
  (data (;539;) (i32.const 27528) "\01\00\00\00,\00\00\00V\00a\00l\00u\00e\00 \00i\00s\00 \00n\00o\00t\00 \00a\00 \00B\00i\00g\00I\00n\00t\00.")
  (data (;540;) (i32.const 27580) "<")
  (data (;541;) (i32.const 27592) "\01\00\00\00*\00\00\00U\00n\00k\00n\00o\00w\00n\00 \00d\00a\00t\00a\00 \00(\00k\00i\00n\00d\00 \00=\00 ")
  (data (;542;) (i32.const 27644) "\1c")
  (data (;543;) (i32.const 27656) "\01\00\00\00\02\00\00\00)")
  (data (;544;) (i32.const 27676) "\1c")
  (data (;545;) (i32.const 27688) "\22\00\00\00\0c\00\00\00\d0k\00\00\00\00\00\00\10l")
  (data (;546;) (i32.const 27708) ",")
  (data (;547;) (i32.const 27720) "\01\00\00\00\12\00\00\00U\00n\00k\00n\00o\00w\00n\00 \00(")
  (data (;548;) (i32.const 27756) "\1c")
  (data (;549;) (i32.const 27768) "\22\00\00\00\0c\00\00\00Pl\00\00\00\00\00\00\10l")
  (data (;550;) (i32.const 27788) "\1c")
  (data (;551;) (i32.const 27800) "\14\00\00\00\08\00\00\00\19")
  (data (;552;) (i32.const 27820) "L")
  (data (;553;) (i32.const 27832) "\01\00\00\00:\00\00\00S\00h\00o\00u\00l\00d\00 \00c\00r\00e\00a\00t\00e\00 \00t\00h\00e\00 \00M\00O\00V\00R\00 \00M\00a\00r\00k\00e\00t")
  (data (;554;) (i32.const 27900) "\1c")
  (data (;555;) (i32.const 27912) "\01\00\00\00\0c\00\00\00M\00a\00r\00k\00e\00t")
  (data (;556;) (i32.const 27932) "\1c")
  (data (;557;) (i32.const 27964) "\1c")
  (data (;558;) (i32.const 27976) "\01\00\00\00\0c\00\00\00m\00T\00o\00k\00e\00n")
  (data (;559;) (i32.const 27996) "<")
  (data (;560;) (i32.const 28008) "\01\00\00\00\22\00\00\00u\00n\00d\00e\00r\00l\00y\00i\00n\00g\00A\00d\00d\00r\00e\00s\00s")
  (data (;561;) (i32.const 28060) "<")
  (data (;562;) (i32.const 28072) "\01\00\00\00$\00\00\00u\00n\00d\00e\00r\00l\00y\00i\00n\00g\00D\00e\00c\00i\00m\00a\00l\00s")
  (data (;563;) (i32.const 28124) "<")
  (data (;564;) (i32.const 28136) "\01\00\00\00\1e\00\00\00u\00n\00d\00e\00r\00l\00y\00i\00n\00g\00P\00r\00i\00c\00e")
  (data (;565;) (i32.const 28188) ",")
  (data (;566;) (i32.const 28200) "\01\00\00\00\1c\00\00\00u\00n\00d\00e\00r\00l\00y\00i\00n\00g\00N\00a\00m\00e")
  (data (;567;) (i32.const 28236) "<")
  (data (;568;) (i32.const 28248) "\01\00\00\00 \00\00\00u\00n\00d\00e\00r\00l\00y\00i\00n\00g\00S\00y\00m\00b\00o\00l")
  (data (;569;) (i32.const 28300) "<")
  (data (;570;) (i32.const 28312) "\01\00\00\00$\00\00\00u\00n\00d\00e\00r\00l\00y\00i\00n\00g\00P\00r\00i\00c\00e\00U\00S\00D")
  (data (;571;) (i32.const 28364) "\1c")
  (data (;572;) (i32.const 28396) "\5c")
  (data (;573;) (i32.const 28408) "\01\00\00\00F\00\00\00a\00c\00c\00e\00s\00s\00e\00d\00 \00v\00a\00l\00u\00e\00 \00o\00f\00 \00a\00 \00r\00e\00v\00e\00r\00t\00e\00d\00 \00c\00a\00l\00l\00,\00 ")
  (data (;574;) (i32.const 28492) "\9c")
  (data (;575;) (i32.const 28504) "\01\00\00\00\88\00\00\00p\00l\00e\00a\00s\00e\00 \00c\00h\00e\00c\00k\00 \00t\00h\00e\00 \00`\00r\00e\00v\00e\00r\00t\00e\00d\00`\00 \00f\00i\00e\00l\00d\00 \00b\00e\00f\00o\00r\00e\00 \00a\00c\00c\00e\00s\00s\00i\00n\00g\00 \00t\00h\00e\00 \00`\00v\00a\00l\00u\00e\00`\00 \00f\00i\00e\00l\00d")
  (data (;576;) (i32.const 28652) "l")
  (data (;577;) (i32.const 28664) "\01\00\00\00X\00\00\00[\00c\00r\00e\00a\00t\00e\00M\00a\00r\00k\00e\00t\00]\00 \00t\00r\00y\00_\00u\00n\00d\00e\00r\00l\00y\00i\00n\00g\00 \00o\00n\00 \00{\00}\00 \00r\00e\00v\00e\00r\00t\00e\00d")
  (data (;578;) (i32.const 28764) "\5c")
  (data (;579;) (i32.const 28776) "\01\00\00\00J\00\00\00~\00l\00i\00b\00/\00@\00g\00r\00a\00p\00h\00p\00r\00o\00t\00o\00c\00o\00l\00/\00g\00r\00a\00p\00h\00-\00t\00s\00/\00i\00n\00d\00e\00x\00.\00t\00s")
  (data (;580;) (i32.const 28860) "\1c")
  (data (;581;) (i32.const 28892) "\1c")
  (data (;582;) (i32.const 28924) "\1c")
  (data (;583;) (i32.const 28956) "\1c")
  (data (;584;) (i32.const 28988) "\1c")
  (data (;585;) (i32.const 29020) ",")
  (data (;586;) (i32.const 29032) "\01\00\00\00\14\00\00\00b\00o\00r\00r\00o\00w\00R\00a\00t\00e")
  (data (;587;) (i32.const 29068) "\1c")
  (data (;588;) (i32.const 29080) "\01\00\00\00\08\00\00\00c\00a\00s\00h")
  (data (;589;) (i32.const 29100) "<")
  (data (;590;) (i32.const 29112) "\01\00\00\00 \00\00\00c\00o\00l\00l\00a\00t\00e\00r\00a\00l\00F\00a\00c\00t\00o\00r")
  (data (;591;) (i32.const 29164) ",")
  (data (;592;) (i32.const 29176) "\01\00\00\00\18\00\00\00e\00x\00c\00h\00a\00n\00g\00e\00R\00a\00t\00e")
  (data (;593;) (i32.const 29212) "L")
  (data (;594;) (i32.const 29224) "\01\00\00\000\00\00\00i\00n\00t\00e\00r\00e\00s\00t\00R\00a\00t\00e\00M\00o\00d\00e\00l\00A\00d\00d\00r\00e\00s\00s")
  (data (;595;) (i32.const 29292) "\1c")
  (data (;596;) (i32.const 29324) ",")
  (data (;597;) (i32.const 29336) "\01\00\00\00\10\00\00\00r\00e\00s\00e\00r\00v\00e\00s")
  (data (;598;) (i32.const 29372) ",")
  (data (;599;) (i32.const 29384) "\01\00\00\00\14\00\00\00s\00u\00p\00p\00l\00y\00R\00a\00t\00e")
  (data (;600;) (i32.const 29420) "\1c")
  (data (;601;) (i32.const 29452) ",")
  (data (;602;) (i32.const 29464) "\01\00\00\00\18\00\00\00t\00o\00t\00a\00l\00B\00o\00r\00r\00o\00w\00s")
  (data (;603;) (i32.const 29500) ",")
  (data (;604;) (i32.const 29512) "\01\00\00\00\16\00\00\00t\00o\00t\00a\00l\00S\00u\00p\00p\00l\00y")
  (data (;605;) (i32.const 29548) ",")
  (data (;606;) (i32.const 29560) "\01\00\00\00\1a\00\00\00b\00o\00r\00r\00o\00w\00e\00r\00C\00o\00u\00n\00t")
  (data (;607;) (i32.const 29596) ",")
  (data (;608;) (i32.const 29608) "\01\00\00\00\1a\00\00\00s\00u\00p\00p\00l\00i\00e\00r\00C\00o\00u\00n\00t")
  (data (;609;) (i32.const 29644) ",")
  (data (;610;) (i32.const 29656) "\01\00\00\00\12\00\00\00b\00o\00r\00r\00o\00w\00C\00a\00p")
  (data (;611;) (i32.const 29692) ",")
  (data (;612;) (i32.const 29704) "\01\00\00\00\16\00\00\00b\00o\00r\00r\00o\00w\00I\00n\00d\00e\00x")
  (data (;613;) (i32.const 29740) "L")
  (data (;614;) (i32.const 29752) "\01\00\00\00.\00\00\00b\00o\00r\00r\00o\00w\00R\00e\00w\00a\00r\00d\00S\00p\00e\00e\00d\00N\00a\00t\00i\00v\00e")
  (data (;615;) (i32.const 29820) "L")
  (data (;616;) (i32.const 29832) "\01\00\00\002\00\00\00b\00o\00r\00r\00o\00w\00R\00e\00w\00a\00r\00d\00S\00p\00e\00e\00d\00P\00r\00o\00t\00o\00c\00o\00l")
  (data (;617;) (i32.const 29900) "L")
  (data (;618;) (i32.const 29912) "\01\00\00\00.\00\00\00s\00u\00p\00p\00l\00y\00R\00e\00w\00a\00r\00d\00S\00p\00e\00e\00d\00N\00a\00t\00i\00v\00e")
  (data (;619;) (i32.const 29980) "L")
  (data (;620;) (i32.const 29992) "\01\00\00\002\00\00\00s\00u\00p\00p\00l\00y\00R\00e\00w\00a\00r\00d\00S\00p\00e\00e\00d\00P\00r\00o\00t\00o\00c\00o\00l")
  (data (;621;) (i32.const 30060) ",")
  (data (;622;) (i32.const 30072) "\01\00\00\00\1a\00\00\00r\00e\00s\00e\00r\00v\00e\00F\00a\00c\00t\00o\00r")
  (data (;623;) (i32.const 30108) "<")
  (data (;624;) (i32.const 30120) "\01\00\00\00$\00\00\00b\00o\00r\00r\00o\00w\00R\00e\00w\00a\00r\00d\00N\00a\00t\00i\00v\00e")
  (data (;625;) (i32.const 30172) "<")
  (data (;626;) (i32.const 30184) "\01\00\00\00(\00\00\00b\00o\00r\00r\00o\00w\00R\00e\00w\00a\00r\00d\00P\00r\00o\00t\00o\00c\00o\00l")
  (data (;627;) (i32.const 30236) "<")
  (data (;628;) (i32.const 30248) "\01\00\00\00$\00\00\00s\00u\00p\00p\00l\00y\00R\00e\00w\00a\00r\00d\00N\00a\00t\00i\00v\00e")
  (data (;629;) (i32.const 30300) "<")
  (data (;630;) (i32.const 30312) "\01\00\00\00(\00\00\00s\00u\00p\00p\00l\00y\00R\00e\00w\00a\00r\00d\00P\00r\00o\00t\00o\00c\00o\00l")
  (data (;631;) (i32.const 30364) "L")
  (data (;632;) (i32.const 30376) "\01\00\00\008\00\00\00b\00o\00r\00r\00o\00w\00R\00e\00w\00a\00r\00d\00S\00t\00a\00t\00e\00N\00a\00t\00i\00v\00e\00I\00n\00d\00e\00x")
  (data (;633;) (i32.const 30444) "\5c")
  (data (;634;) (i32.const 30456) "\01\00\00\00@\00\00\00b\00o\00r\00r\00o\00w\00R\00e\00w\00a\00r\00d\00S\00t\00a\00t\00e\00N\00a\00t\00i\00v\00e\00T\00i\00m\00e\00s\00t\00a\00m\00p")
  (data (;635;) (i32.const 30540) "L")
  (data (;636;) (i32.const 30552) "\01\00\00\00<\00\00\00b\00o\00r\00r\00o\00w\00R\00e\00w\00a\00r\00d\00S\00t\00a\00t\00e\00P\00r\00o\00t\00o\00c\00o\00l\00I\00n\00d\00e\00x")
  (data (;637;) (i32.const 30620) "\5c")
  (data (;638;) (i32.const 30632) "\01\00\00\00D\00\00\00b\00o\00r\00r\00o\00w\00R\00e\00w\00a\00r\00d\00S\00t\00a\00t\00e\00P\00r\00o\00t\00o\00c\00o\00l\00T\00i\00m\00e\00s\00t\00a\00m\00p")
  (data (;639;) (i32.const 30716) "L")
  (data (;640;) (i32.const 30728) "\01\00\00\008\00\00\00s\00u\00p\00p\00l\00y\00R\00e\00w\00a\00r\00d\00S\00t\00a\00t\00e\00N\00a\00t\00i\00v\00e\00I\00n\00d\00e\00x")
  (data (;641;) (i32.const 30796) "\5c")
  (data (;642;) (i32.const 30808) "\01\00\00\00@\00\00\00s\00u\00p\00p\00l\00y\00R\00e\00w\00a\00r\00d\00S\00t\00a\00t\00e\00N\00a\00t\00i\00v\00e\00T\00i\00m\00e\00s\00t\00a\00m\00p")
  (data (;643;) (i32.const 30892) "L")
  (data (;644;) (i32.const 30904) "\01\00\00\00<\00\00\00s\00u\00p\00p\00l\00y\00R\00e\00w\00a\00r\00d\00S\00t\00a\00t\00e\00P\00r\00o\00t\00o\00c\00o\00l\00I\00n\00d\00e\00x")
  (data (;645;) (i32.const 30972) "\5c")
  (data (;646;) (i32.const 30984) "\01\00\00\00D\00\00\00s\00u\00p\00p\00l\00y\00R\00e\00w\00a\00r\00d\00S\00t\00a\00t\00e\00P\00r\00o\00t\00o\00c\00o\00l\00T\00i\00m\00e\00s\00t\00a\00m\00p")
  (data (;647;) (i32.const 31068) "<")
  (data (;648;) (i32.const 31080) "\01\00\00\00*\00\00\00a\00c\00c\00r\00u\00a\00l\00B\00l\00o\00c\00k\00T\00i\00m\00e\00s\00t\00a\00m\00p")
  (data (;649;) (i32.const 31132) ",")
  (data (;650;) (i32.const 31144) "\01\00\00\00\1c\00\00\00b\00l\00o\00c\00k\00T\00i\00m\00e\00s\00t\00a\00m\00p")
  (data (;651;) (i32.const 31180) ",")
  (data (;652;) (i32.const 31192) "\01\00\00\00\14\00\00\00m\00i\00n\00t\00P\00a\00u\00s\00e\00d")
  (data (;653;) (i32.const 31228) ",")
  (data (;654;) (i32.const 31240) "\01\00\00\00\18\00\00\00b\00o\00r\00r\00o\00w\00P\00a\00u\00s\00e\00d")
  (data (;655;) (i32.const 31276) ",")
  (data (;656;) (i32.const 31288) "\01\00\00\00\1c\00\00\00s\00r\00c\00/\00m\00a\00r\00k\00e\00t\00s\00.\00t\00s")
  (data (;657;) (i32.const 31324) "\1c")
  (data (;658;) (i32.const 31336) "\01\00\00\00\0a\00\00\00m\00b\00a\00s\00e")
  (data (;659;) (i32.const 31356) "\1c")
  (data (;660;) (i32.const 31368) "\01\00\00\00\0a\00\00\00_\00f\00e\00e\00d")
  (data (;661;) (i32.const 31388) "l")
  (data (;662;) (i32.const 31400) "\01\00\00\00\5c\00\00\00[\00h\00a\00n\00d\00l\00e\00M\00a\00r\00k\00e\00t\00L\00i\00s\00t\00e\00d\00]\00 \00m\00a\00r\00k\00e\00t\00 \00{\00}\00 \00f\00a\00i\00l\00s\00 \00t\00o\00 \00c\00r\00e\00a\00t\00e")
  (data (;663;) (i32.const 31500) "l")
  (data (;664;) (i32.const 31512) "\01\00\00\00N\00\00\00C\00a\00n\00n\00o\00t\00 \00s\00a\00v\00e\00 \00M\00a\00r\00k\00e\00t\00 \00e\00n\00t\00i\00t\00y\00 \00w\00i\00t\00h\00o\00u\00t\00 \00a\00n\00 \00I\00D")
  (data (;665;) (i32.const 31612) "\9c")
  (data (;666;) (i32.const 31624) "\01\00\00\00\86\00\00\00E\00n\00t\00i\00t\00i\00e\00s\00 \00o\00f\00 \00t\00y\00p\00e\00 \00M\00a\00r\00k\00e\00t\00 \00m\00u\00s\00t\00 \00h\00a\00v\00e\00 \00a\00n\00 \00I\00D\00 \00o\00f\00 \00t\00y\00p\00e\00 \00S\00t\00r\00i\00n\00g\00 \00b\00u\00t\00 \00t\00h\00e\00 \00i\00d\00 \00'")
  (data (;667;) (i32.const 31772) ",")
  (data (;668;) (i32.const 31784) "\22\00\00\00\14\00\00\00\90{\00\00\00\00\00\00\10c\00\00\00\00\00\00\908")
  (data (;669;) (i32.const 31820) "<")
  (data (;670;) (i32.const 31832) "\01\00\00\00$\00\00\00s\00r\00c\00/\00c\00o\00m\00p\00t\00r\00o\00l\00l\00e\00r\00.\00t\00s")
  (data (;671;) (i32.const 31884) "\1c")
  (data (;672;) (i32.const 31896) "\01\00\00\00\08\00\00\00F\00e\00e\00d")
  (data (;673;) (i32.const 31916) "\1c")
  (data (;674;) (i32.const 31928) "\14\00\00\00\08\00\00\00\1a")
  (data (;675;) (i32.const 31948) "l")
  (data (;676;) (i32.const 31960) "\01\00\00\00\5c\00\00\00T\00h\00e\00 \00M\00O\00V\00R\00 \00M\00a\00r\00k\00e\00t\00 \00s\00h\00o\00u\00l\00d\00 \00h\00a\00v\00e\00 \00t\00h\00e\00 \00c\00o\00r\00r\00e\00c\00t\00 \00v\00a\00l\00u\00e\00s")
  (data (;677;) (i32.const 32060) "\1c")
  (data (;678;) (i32.const 32072) "\14\00\00\00\08\00\00\00\1b")
  (data (;679;) (i32.const 32092) "L")
  (data (;680;) (i32.const 32104) "\01\00\00\00<\00\00\00S\00h\00o\00u\00l\00d\00 \00c\00r\00e\00a\00t\00e\00 \00t\00h\00e\00 \00x\00c\00K\00S\00M\00 \00M\00a\00r\00k\00e\00t")
  (data (;681;) (i32.const 32172) "\1c")
  (data (;682;) (i32.const 32184) "\14\00\00\00\08\00\00\00\1c")
  (data (;683;) (i32.const 32204) "|")
  (data (;684;) (i32.const 32216) "\01\00\00\00^\00\00\00T\00h\00e\00 \00x\00c\00K\00S\00M\00 \00M\00a\00r\00k\00e\00t\00 \00s\00h\00o\00u\00l\00d\00 \00h\00a\00v\00e\00 \00t\00h\00e\00 \00c\00o\00r\00r\00e\00c\00t\00 \00v\00a\00l\00u\00e\00s")
  (data (;685;) (i32.const 32332) "\1c")
  (data (;686;) (i32.const 32344) "\14\00\00\00\08\00\00\00\1d")
  (data (;687;) (i32.const 32364) "L")
  (data (;688;) (i32.const 32376) "\01\00\00\004\00\00\00S\00h\00o\00u\00l\00d\00 \00c\00r\00e\00a\00t\00e\00 \00t\00w\00o\00 \00a\00c\00c\00o\00u\00n\00t\00s")
  (data (;689;) (i32.const 32444) ",")
  (data (;690;) (i32.const 32456) "\01\00\00\00\0e\00\00\00A\00c\00c\00o\00u\00n\00t")
  (data (;691;) (i32.const 32492) "\1c")
  (data (;692;) (i32.const 32524) "\1c")
  (data (;693;) (i32.const 32536) "\01\00\00\00\0c\00\00\00t\00o\00k\00e\00n\00s")
  (data (;694;) (i32.const 32556) "<")
  (data (;695;) (i32.const 32568) "\01\00\00\00\1e\00\00\00c\00o\00u\00n\00t\00L\00i\00q\00u\00i\00d\00a\00t\00e\00d")
  (data (;696;) (i32.const 32620) "<")
  (data (;697;) (i32.const 32632) "\01\00\00\00\1e\00\00\00c\00o\00u\00n\00t\00L\00i\00q\00u\00i\00d\00a\00t\00o\00r")
  (data (;698;) (i32.const 32684) ",")
  (data (;699;) (i32.const 32696) "\01\00\00\00\16\00\00\00h\00a\00s\00B\00o\00r\00r\00o\00w\00e\00d")
  (data (;700;) (i32.const 32732) "l")
  (data (;701;) (i32.const 32744) "\01\00\00\00P\00\00\00C\00a\00n\00n\00o\00t\00 \00s\00a\00v\00e\00 \00A\00c\00c\00o\00u\00n\00t\00 \00e\00n\00t\00i\00t\00y\00 \00w\00i\00t\00h\00o\00u\00t\00 \00a\00n\00 \00I\00D")
  (data (;702;) (i32.const 32844) "\9c")
  (data (;703;) (i32.const 32856) "\01\00\00\00\88\00\00\00E\00n\00t\00i\00t\00i\00e\00s\00 \00o\00f\00 \00t\00y\00p\00e\00 \00A\00c\00c\00o\00u\00n\00t\00 \00m\00u\00s\00t\00 \00h\00a\00v\00e\00 \00a\00n\00 \00I\00D\00 \00o\00f\00 \00t\00y\00p\00e\00 \00S\00t\00r\00i\00n\00g\00 \00b\00u\00t\00 \00t\00h\00e\00 \00i\00d\00 \00'")
  (data (;704;) (i32.const 33004) ",")
  (data (;705;) (i32.const 33016) "\22\00\00\00\14\00\00\00`\80\00\00\00\00\00\00\10c\00\00\00\00\00\00\908")
  (data (;706;) (i32.const 33052) "\1c")
  (data (;707;) (i32.const 33064) "\14\00\00\00\08\00\00\00\1e")
  (data (;708;) (i32.const 33084) "\1c")
  (data (;709;) (i32.const 33096) "\14\00\00\00\08\00\00\00\1f")
  (data (;710;) (i32.const 33116) "|")
  (data (;711;) (i32.const 33128) "\01\00\00\00`\00\00\00C\00a\00l\00l\00 \00a\00l\00l\00 \00e\00v\00e\00n\00t\00-\00b\00a\00s\00e\00d\00 \00m\00a\00p\00p\00i\00n\00g\00s\00 \00w\00i\00t\00h\00 \00c\00u\00s\00t\00o\00m\00 \00e\00v\00e\00n\00t\00s")
  (data (;712;) (i32.const 33244) "|")
  (data (;713;) (i32.const 33256) "\01\00\00\00`\00\00\00S\00h\00o\00u\00l\00d\00 \00c\00r\00e\00a\00t\00e\00 \00t\00w\00o\00 \00M\00i\00n\00t\00 \00e\00v\00e\00n\00t\00s\00 \00i\00n\00 \00t\00h\00e\00 \00M\00O\00V\00R\00 \00m\00a\00r\00k\00e\00t")
  (data (;714;) (i32.const 33372) "\8c")
  (data (;715;) (i32.const 33384) "\01\00\00\00z\00\00\00F\00a\00i\00l\00e\00d\00 \00t\00o\00 \00d\00i\00v\00i\00d\00e\00 \00B\00i\00g\00D\00e\00c\00i\00m\00a\00l\00s\00 \00b\00e\00c\00a\00u\00s\00e\00 \00l\00e\00f\00t\00 \00h\00a\00n\00d\00 \00s\00i\00d\00e\00 \00i\00s\00 \00'\00n\00u\00l\00l\00'")
  (data (;716;) (i32.const 33516) "\8c")
  (data (;717;) (i32.const 33528) "\01\00\00\00r\00\00\00F\00a\00i\00l\00e\00d\00 \00t\00o\00 \00d\00i\00v\00i\00d\00e\00 \00B\00i\00g\00I\00n\00t\00s\00 \00b\00e\00c\00a\00u\00s\00e\00 \00l\00e\00f\00t\00 \00h\00a\00n\00d\00 \00s\00i\00d\00e\00 \00i\00s\00 \00'\00n\00u\00l\00l\00'")
  (data (;718;) (i32.const 33660) "<")
  (data (;719;) (i32.const 33672) "\01\00\00\00&\00\00\002\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000")
  (data (;720;) (i32.const 33724) "\1c")
  (data (;721;) (i32.const 33736) "\01\00\00\00\0c\00\00\00m\00i\00n\00t\00e\00r")
  (data (;722;) (i32.const 33756) ",")
  (data (;723;) (i32.const 33768) "\01\00\00\00\14\00\00\00m\00i\00n\00t\00A\00m\00o\00u\00n\00t")
  (data (;724;) (i32.const 33804) ",")
  (data (;725;) (i32.const 33816) "\01\00\00\00\14\00\00\00m\00i\00n\00t\00T\00o\00k\00e\00n\00s")
  (data (;726;) (i32.const 33852) "\1c")
  (data (;727;) (i32.const 33864) "\01\00\00\00\0c\00\00\00i\00n\00p\00u\00t\00 ")
  (data (;728;) (i32.const 33884) "<")
  (data (;729;) (i32.const 33896) "\01\00\00\00\1e\00\00\00 \00h\00a\00s\00 \00o\00d\00d\00 \00l\00e\00n\00g\00t\00h")
  (data (;730;) (i32.const 33948) "\1c")
  (data (;731;) (i32.const 33960) "\01\00\00\00\02\00\00\00x")
  (data (;732;) (i32.const 33980) ",")
  (data (;733;) (i32.const 33992) "\01\00\00\00\12\00\00\00M\00i\00n\00t\00E\00v\00e\00n\00t")
  (data (;734;) (i32.const 34028) ",")
  (data (;735;) (i32.const 34040) "\01\00\00\00\1a\00\00\00s\00r\00c\00/\00c\00t\00o\00k\00e\00n\00.\00t\00s")
  (data (;736;) (i32.const 34076) "\1c")
  (data (;737;) (i32.const 34088) "\01\00\00\00\02\00\00\00-")
  (data (;738;) (i32.const 34108) "\1c")
  (data (;739;) (i32.const 34120) "\01\00\00\00\0c\00\00\00a\00m\00o\00u\00n\00t")
  (data (;740;) (i32.const 34140) "\1c")
  (data (;741;) (i32.const 34152) "\01\00\00\00\04\00\00\00t\00o")
  (data (;742;) (i32.const 34172) "\1c")
  (data (;743;) (i32.const 34184) "\01\00\00\00\08\00\00\00f\00r\00o\00m")
  (data (;744;) (i32.const 34204) ",")
  (data (;745;) (i32.const 34216) "\01\00\00\00\16\00\00\00b\00l\00o\00c\00k\00N\00u\00m\00b\00e\00r")
  (data (;746;) (i32.const 34252) ",")
  (data (;747;) (i32.const 34264) "\01\00\00\00\12\00\00\00b\00l\00o\00c\00k\00T\00i\00m\00e")
  (data (;748;) (i32.const 34300) ",")
  (data (;749;) (i32.const 34312) "\01\00\00\00\18\00\00\00c\00T\00o\00k\00e\00n\00S\00y\00m\00b\00o\00l")
  (data (;750;) (i32.const 34348) "<")
  (data (;751;) (i32.const 34360) "\01\00\00\00 \00\00\00u\00n\00d\00e\00r\00l\00y\00i\00n\00g\00A\00m\00o\00u\00n\00t")
  (data (;752;) (i32.const 34412) "l")
  (data (;753;) (i32.const 34424) "\01\00\00\00T\00\00\00C\00a\00n\00n\00o\00t\00 \00s\00a\00v\00e\00 \00M\00i\00n\00t\00E\00v\00e\00n\00t\00 \00e\00n\00t\00i\00t\00y\00 \00w\00i\00t\00h\00o\00u\00t\00 \00a\00n\00 \00I\00D")
  (data (;754;) (i32.const 34524) "\9c")
  (data (;755;) (i32.const 34536) "\01\00\00\00\8c\00\00\00E\00n\00t\00i\00t\00i\00e\00s\00 \00o\00f\00 \00t\00y\00p\00e\00 \00M\00i\00n\00t\00E\00v\00e\00n\00t\00 \00m\00u\00s\00t\00 \00h\00a\00v\00e\00 \00a\00n\00 \00I\00D\00 \00o\00f\00 \00t\00y\00p\00e\00 \00S\00t\00r\00i\00n\00g\00 \00b\00u\00t\00 \00t\00h\00e\00 \00i\00d\00 \00'")
  (data (;756;) (i32.const 34684) ",")
  (data (;757;) (i32.const 34696) "\22\00\00\00\14\00\00\00\f0\86\00\00\00\00\00\00\10c\00\00\00\00\00\00\908")
  (data (;758;) (i32.const 34732) "\1c")
  (data (;759;) (i32.const 34744) "?\00\00\00\08\00\00\00 ")
  (data (;760;) (i32.const 34764) "\1c")
  (data (;761;) (i32.const 34776) "\14\00\00\00\08\00\00\00!")
  (data (;762;) (i32.const 34796) "|")
  (data (;763;) (i32.const 34808) "\01\00\00\00b\00\00\00S\00h\00o\00u\00l\00d\00 \00c\00r\00e\00a\00t\00e\00 \00t\00w\00o\00 \00M\00i\00n\00t\00 \00e\00v\00e\00n\00t\00s\00 \00i\00n\00 \00t\00h\00e\00 \00x\00c\00K\00S\00M\00 \00m\00a\00r\00k\00e\00t")
  (data (;764;) (i32.const 34924) "<")
  (data (;765;) (i32.const 34936) "\01\00\00\00&\00\00\003\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000")
  (data (;766;) (i32.const 34988) "<")
  (data (;767;) (i32.const 35000) "\01\00\00\00&\00\00\004\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000")
  (data (;768;) (i32.const 35052) "\1c")
  (data (;769;) (i32.const 35064) "\01\00\00\00\02\00\00\003")
  (data (;770;) (i32.const 35084) "\1c")
  (data (;771;) (i32.const 35096) "\01\00\00\00\02\00\00\004")
  (data (;772;) (i32.const 35116) "\1c")
  (data (;773;) (i32.const 35128) "\14\00\00\00\08\00\00\00\22")
  (data (;774;) (i32.const 35148) "L")
  (data (;775;) (i32.const 35160) "\01\00\00\00<\00\00\00S\00h\00o\00u\00l\00d\00 \00h\00a\00n\00d\00l\00e\00 \00a\00 \00T\00r\00a\00n\00s\00f\00e\00r\00 \00e\00v\00e\00n\00t")
  (data (;776;) (i32.const 35228) "<")
  (data (;777;) (i32.const 35240) "\01\00\00\00*\00\00\001\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000")
  (data (;778;) (i32.const 35292) "\1c")
  (data (;779;) (i32.const 35304) "\01\00\00\00\02\00\00\005")
  (data (;780;) (i32.const 35324) ",")
  (data (;781;) (i32.const 35336) "\01\00\00\00\1a\00\00\00T\00r\00a\00n\00s\00f\00e\00r\00E\00v\00e\00n\00t")
  (data (;782;) (i32.const 35372) "L")
  (data (;783;) (i32.const 35384) "\01\00\00\00:\00\00\00[\00h\00a\00n\00d\00l\00e\00T\00r\00a\00n\00s\00f\00e\00r\00]\00 \00m\00a\00r\00k\00e\00t\00I\00D\00:\00 \00{\00}")
  (data (;784;) (i32.const 35452) ",")
  (data (;785;) (i32.const 35464) "\01\00\00\00\12\00\00\00b\00a\00l\00a\00n\00c\00e\00O\00f")
  (data (;786;) (i32.const 35500) "L")
  (data (;787;) (i32.const 35512) "\01\00\00\008\00\00\00b\00a\00l\00a\00n\00c\00e\00O\00f\00(\00a\00d\00d\00r\00e\00s\00s\00)\00:\00(\00u\00i\00n\00t\002\005\006\00)")
  (data (;788;) (i32.const 35580) "|")
  (data (;789;) (i32.const 35592) "\01\00\00\00b\00\00\00[\00h\00a\00n\00d\00l\00e\00T\00r\00a\00n\00s\00f\00e\00r\00]\00 \00t\00r\00y\00_\00b\00a\00l\00a\00n\00c\00e\00O\00f\00(\00{\00}\00)\00 \00o\00n\00 \00{\00}\00 \00r\00e\00v\00e\00r\00t\00e\00d")
  (data (;790;) (i32.const 35708) "\9c")
  (data (;791;) (i32.const 35720) "\01\00\00\00~\00\00\00F\00a\00i\00l\00e\00d\00 \00t\00o\00 \00m\00u\00l\00t\00i\00p\00l\00y\00 \00B\00i\00g\00D\00e\00c\00i\00m\00a\00l\00s\00 \00b\00e\00c\00a\00u\00s\00e\00 \00l\00e\00f\00t\00 \00h\00a\00n\00d\00 \00s\00i\00d\00e\00 \00i\00s\00 \00'\00n\00u\00l\00l\00'")
  (data (;792;) (i32.const 35868) ",")
  (data (;793;) (i32.const 35880) "\01\00\00\00\1a\00\00\00A\00c\00c\00o\00u\00n\00t\00C\00T\00o\00k\00e\00n")
  (data (;794;) (i32.const 35916) "\1c")
  (data (;795;) (i32.const 35928) "\01\00\00\00\0c\00\00\00m\00a\00r\00k\00e\00t")
  (data (;796;) (i32.const 35948) ",")
  (data (;797;) (i32.const 35960) "\01\00\00\00\0e\00\00\00a\00c\00c\00o\00u\00n\00t")
  (data (;798;) (i32.const 35996) "<")
  (data (;799;) (i32.const 36008) "\01\00\00\00$\00\00\00a\00c\00c\00r\00u\00a\00l\00B\00l\00o\00c\00k\00N\00u\00m\00b\00e\00r")
  (data (;800;) (i32.const 36060) ",")
  (data (;801;) (i32.const 36072) "\01\00\00\00\1a\00\00\00c\00T\00o\00k\00e\00n\00B\00a\00l\00a\00n\00c\00e")
  (data (;802;) (i32.const 36108) "L")
  (data (;803;) (i32.const 36120) "\01\00\00\00.\00\00\00t\00o\00t\00a\00l\00U\00n\00d\00e\00r\00l\00y\00i\00n\00g\00S\00u\00p\00p\00l\00i\00e\00d")
  (data (;804;) (i32.const 36188) "L")
  (data (;805;) (i32.const 36200) "\01\00\00\00.\00\00\00t\00o\00t\00a\00l\00U\00n\00d\00e\00r\00l\00y\00i\00n\00g\00R\00e\00d\00e\00e\00m\00e\00d")
  (data (;806;) (i32.const 36268) "<")
  (data (;807;) (i32.const 36280) "\01\00\00\00$\00\00\00a\00c\00c\00o\00u\00n\00t\00B\00o\00r\00r\00o\00w\00I\00n\00d\00e\00x")
  (data (;808;) (i32.const 36332) "L")
  (data (;809;) (i32.const 36344) "\01\00\00\00.\00\00\00t\00o\00t\00a\00l\00U\00n\00d\00e\00r\00l\00y\00i\00n\00g\00B\00o\00r\00r\00o\00w\00e\00d")
  (data (;810;) (i32.const 36412) "<")
  (data (;811;) (i32.const 36424) "\01\00\00\00*\00\00\00t\00o\00t\00a\00l\00U\00n\00d\00e\00r\00l\00y\00i\00n\00g\00R\00e\00p\00a\00i\00d")
  (data (;812;) (i32.const 36476) "<")
  (data (;813;) (i32.const 36488) "\01\00\00\00&\00\00\00s\00t\00o\00r\00e\00d\00B\00o\00r\00r\00o\00w\00B\00a\00l\00a\00n\00c\00e")
  (data (;814;) (i32.const 36540) ",")
  (data (;815;) (i32.const 36552) "\01\00\00\00\1a\00\00\00e\00n\00t\00e\00r\00e\00d\00M\00a\00r\00k\00e\00t")
  (data (;816;) (i32.const 36588) "L")
  (data (;817;) (i32.const 36600) "\01\00\00\000\00\00\00A\00c\00c\00o\00u\00n\00t\00C\00T\00o\00k\00e\00n\00T\00r\00a\00n\00s\00a\00c\00t\00i\00o\00n")
  (data (;818;) (i32.const 36668) ",")
  (data (;819;) (i32.const 36680) "\01\00\00\00\0e\00\00\00t\00x\00_\00h\00a\00s\00h")
  (data (;820;) (i32.const 36716) ",")
  (data (;821;) (i32.const 36728) "\01\00\00\00\12\00\00\00t\00i\00m\00e\00s\00t\00a\00m\00p")
  (data (;822;) (i32.const 36764) "\1c")
  (data (;823;) (i32.const 36776) "\01\00\00\00\0a\00\00\00b\00l\00o\00c\00k")
  (data (;824;) (i32.const 36796) ",")
  (data (;825;) (i32.const 36808) "\01\00\00\00\10\00\00\00l\00o\00g\00I\00n\00d\00e\00x")
  (data (;826;) (i32.const 36844) "\8c")
  (data (;827;) (i32.const 36856) "\01\00\00\00r\00\00\00C\00a\00n\00n\00o\00t\00 \00s\00a\00v\00e\00 \00A\00c\00c\00o\00u\00n\00t\00C\00T\00o\00k\00e\00n\00T\00r\00a\00n\00s\00a\00c\00t\00i\00o\00n\00 \00e\00n\00t\00i\00t\00y\00 \00w\00i\00t\00h\00o\00u\00t\00 \00a\00n\00 \00I\00D")
  (data (;828;) (i32.const 36988) "\bc")
  (data (;829;) (i32.const 37000) "\01\00\00\00\aa\00\00\00E\00n\00t\00i\00t\00i\00e\00s\00 \00o\00f\00 \00t\00y\00p\00e\00 \00A\00c\00c\00o\00u\00n\00t\00C\00T\00o\00k\00e\00n\00T\00r\00a\00n\00s\00a\00c\00t\00i\00o\00n\00 \00m\00u\00s\00t\00 \00h\00a\00v\00e\00 \00a\00n\00 \00I\00D\00 \00o\00f\00 \00t\00y\00p\00e\00 \00S\00t\00r\00i\00n\00g\00 \00b\00u\00t\00 \00t\00h\00e\00 \00i\00d\00 \00'")
  (data (;830;) (i32.const 37180) ",")
  (data (;831;) (i32.const 37192) "\22\00\00\00\14\00\00\00\90\90\00\00\00\00\00\00\10c\00\00\00\00\00\00\908")
  (data (;832;) (i32.const 37228) "\9c")
  (data (;833;) (i32.const 37240) "\01\00\00\00~\00\00\00F\00a\00i\00l\00e\00d\00 \00t\00o\00 \00s\00u\00b\00t\00r\00a\00c\00t\00 \00B\00i\00g\00D\00e\00c\00i\00m\00a\00l\00s\00 \00b\00e\00c\00a\00u\00s\00e\00 \00l\00e\00f\00t\00 \00h\00a\00n\00d\00 \00s\00i\00d\00e\00 \00i\00s\00 \00'\00n\00u\00l\00l\00'")
  (data (;834;) (i32.const 37388) "\8c")
  (data (;835;) (i32.const 37400) "\01\00\00\00t\00\00\00F\00a\00i\00l\00e\00d\00 \00t\00o\00 \00s\00u\00m\00 \00B\00i\00g\00D\00e\00c\00i\00m\00a\00l\00s\00 \00b\00e\00c\00a\00u\00s\00e\00 \00l\00e\00f\00t\00 \00h\00a\00n\00d\00 \00s\00i\00d\00e\00 \00i\00s\00 \00'\00n\00u\00l\00l\00'")
  (data (;836;) (i32.const 37532) "l")
  (data (;837;) (i32.const 37544) "\01\00\00\00\5c\00\00\00C\00a\00n\00n\00o\00t\00 \00s\00a\00v\00e\00 \00A\00c\00c\00o\00u\00n\00t\00C\00T\00o\00k\00e\00n\00 \00e\00n\00t\00i\00t\00y\00 \00w\00i\00t\00h\00o\00u\00t\00 \00a\00n\00 \00I\00D")
  (data (;838;) (i32.const 37644) "\ac")
  (data (;839;) (i32.const 37656) "\01\00\00\00\94\00\00\00E\00n\00t\00i\00t\00i\00e\00s\00 \00o\00f\00 \00t\00y\00p\00e\00 \00A\00c\00c\00o\00u\00n\00t\00C\00T\00o\00k\00e\00n\00 \00m\00u\00s\00t\00 \00h\00a\00v\00e\00 \00a\00n\00 \00I\00D\00 \00o\00f\00 \00t\00y\00p\00e\00 \00S\00t\00r\00i\00n\00g\00 \00b\00u\00t\00 \00t\00h\00e\00 \00i\00d\00 \00'")
  (data (;840;) (i32.const 37820) ",")
  (data (;841;) (i32.const 37832) "\22\00\00\00\14\00\00\00 \93\00\00\00\00\00\00\10c\00\00\00\00\00\00\908")
  (data (;842;) (i32.const 37868) "l")
  (data (;843;) (i32.const 37880) "\01\00\00\00\5c\00\00\00C\00a\00n\00n\00o\00t\00 \00s\00a\00v\00e\00 \00T\00r\00a\00n\00s\00f\00e\00r\00E\00v\00e\00n\00t\00 \00e\00n\00t\00i\00t\00y\00 \00w\00i\00t\00h\00o\00u\00t\00 \00a\00n\00 \00I\00D")
  (data (;844;) (i32.const 37980) "\ac")
  (data (;845;) (i32.const 37992) "\01\00\00\00\94\00\00\00E\00n\00t\00i\00t\00i\00e\00s\00 \00o\00f\00 \00t\00y\00p\00e\00 \00T\00r\00a\00n\00s\00f\00e\00r\00E\00v\00e\00n\00t\00 \00m\00u\00s\00t\00 \00h\00a\00v\00e\00 \00a\00n\00 \00I\00D\00 \00o\00f\00 \00t\00y\00p\00e\00 \00S\00t\00r\00i\00n\00g\00 \00b\00u\00t\00 \00t\00h\00e\00 \00i\00d\00 \00'")
  (data (;846;) (i32.const 38156) ",")
  (data (;847;) (i32.const 38168) "\22\00\00\00\14\00\00\00p\94\00\00\00\00\00\00\10c\00\00\00\00\00\00\908")
  (data (;848;) (i32.const 38204) "\1c")
  (data (;849;) (i32.const 38216) "F\00\00\00\08\00\00\00#")
  (data (;850;) (i32.const 38236) "\1c")
  (data (;851;) (i32.const 38248) "\14\00\00\00\08\00\00\00$")
  (data (;852;) (i32.const 38268) "\1c")
  (data (;853;) (i32.const 38280) "\14\00\00\00\08\00\00\00%")
  (data (;854;) (i32.const 38300) "<")
  (data (;855;) (i32.const 38316) " \00\00\00\a0\04\00\00\c0\04\00\00\e0\04\00\00\10\05\00\000\05\00\00P\05\00\00p\05\00\00\90\05")
  (data (;856;) (i32.const 38364) ",")
  (data (;857;) (i32.const 38376) "\03\00\00\00\10\00\00\00\b0\95\00\00\b0\95\00\00 \00\00\00\08"))
