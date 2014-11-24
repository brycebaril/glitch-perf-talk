[deoptimize global object @ 0x2a9f4290f9e1]
--- FUNCTION SOURCE (IN) id{0,0} ---
(a){
if(!(%_IsSpecObject(a))){
throw %MakeTypeError('invalid_in_operator_use',[this,a]);
}
return %_IsNonNegativeSmi(this)?
%HasElement(a,this):%HasProperty(a,%ToName(this));
}

--- END ---
--- FUNCTION SOURCE (ToObject) id{1,0} ---
(a){
if((typeof(a)==='string'))return new $String(a);
if((typeof(a)==='number'))return new $Number(a);
if((typeof(a)==='boolean'))return new $Boolean(a);
if((typeof(a)==='symbol'))return %NewSymbolWrapper(a);
if((a==null)&&!(%_IsUndetectableObject(a))){
throw %MakeTypeError('undefined_or_null_to_object',[]);
}
return a;
}

--- END ---
--- FUNCTION SOURCE (ToName) id{2,0} ---
(a){
return(typeof(a)==='symbol')?a:%ToString(a);
}

--- END ---
--- FUNCTION SOURCE () id{3,0} ---
(p) {
      return !!p;
    })
--- END ---
--- FUNCTION SOURCE (isString) id{4,0} ---
(arg) {
  return typeof arg === 'string';
}

--- END ---
--- FUNCTION SOURCE (nullCheck) id{5,0} ---
(path, callback) {
  if (('' + path).indexOf('\u0000') !== -1) {
    var er = new Error('Path must be a string without null bytes.');
    if (!callback)
      throw er;
    process.nextTick(function() {
      callback(er);
    });
    return false;
  }
  return true;
}

--- END ---
--- FUNCTION SOURCE (exports._makeLong) id{6,0} ---
(path) {
    return path;
  };
--- END ---
--- FUNCTION SOURCE (Error) id{7,0} ---
(g){
if(%_IsConstructCall()){
%IgnoreAttributesAndSetProperty(this,'stack',(void 0),2);
if(!(g===(void 0))){
%IgnoreAttributesAndSetProperty(
this,'message',ToString(g),2);
}
captureStackTrace(this,b);
}else{
return new b(g);
}
})
--- END ---
--- FUNCTION SOURCE (ToUint32) id{8,0} ---
(a){
if(%_IsSmi(a)&&a>=0)return a;
return %NumberToJSUint32(ToNumber(a));
}

--- END ---
--- FUNCTION SOURCE (UseSparseVariant) id{9,0} ---
(a,b,c){
return c&&
b>1000&&
(!%_IsSmi(b)||
%EstimateNumberOfElements(a)<(b>>2));
}

--- END ---
--- FUNCTION SOURCE (DoRegExpExec) id{10,0} ---
(a,b,c){
var d=%_RegExpExec(a,b,c,lastMatchInfo);
if(d!==null)lastMatchInfoOverride=null;
return d;
}

--- END ---
--- FUNCTION SOURCE (ToNumber) id{11,0} ---
(a){
if((typeof(a)==='number'))return a;
if((typeof(a)==='string')){
return %_HasCachedArrayIndex(a)?%_GetCachedArrayIndex(a)
:%StringToNumber(a);
}
if((typeof(a)==='boolean'))return a?1:0;
if((a===(void 0)))return $NaN;
if((typeof(a)==='symbol'))return $NaN;
return((a===null))?0:ToNumber(%DefaultNumber(a));
}

--- END ---
--- FUNCTION SOURCE (STRICT_EQUALS) id{12,0} ---
(a){
if((typeof(this)==='string')){
if(!(typeof(a)==='string'))return 1;
return %StringEquals(this,a);
}
if((typeof(this)==='number')){
if(!(typeof(a)==='number'))return 1;
return %NumberEquals(this,a);
}
return %_ObjectEquals(this,a)?0:1;
}

--- END ---
--- FUNCTION SOURCE (hasOwnProperty) id{13,0} ---
(a){
if(%IsJSProxy(this)){
if((typeof(a)==='symbol'))return false;
var b=%GetHandler(this);
return CallTrap1(b,"hasOwn",DerivedHasOwnTrap,ToName(a));
}
return %HasLocalProperty(((%_IsSpecObject(%IS_VAR(this)))?this:ToObject(this)),ToName(a));
}

--- END ---
--- FUNCTION SOURCE (tryFile) id{14,0} ---
(requestPath) {
  var stats = statPath(requestPath);
  if (stats && !stats.isDirectory()) {
    return fs.realpathSync(requestPath, Module._realpathCache);
  }
  return false;
}

--- END ---
--- FUNCTION SOURCE (fs.Stats.isDirectory) id{14,1} ---
() {
  return this._checkModeProperty(constants.S_IFDIR);
};
--- END ---
INLINE (fs.Stats.isDirectory) id{14,1} AS 1 AT <0:75>
--- FUNCTION SOURCE (fs.Stats._checkModeProperty) id{14,2} ---
(property) {
  return ((this.mode & constants.S_IFMT) === property);
};
--- END ---
INLINE (fs.Stats._checkModeProperty) id{14,2} AS 2 AT <1:19>
--- FUNCTION SOURCE (fs.Stats) id{15,0} ---
(
    dev,
    mode,
    nlink,
    uid,
    gid,
    rdev,
    blksize,
    ino,
    size,
    blocks,
    atim_msec,
    mtim_msec,
    ctim_msec,
    birthtim_msec) {
  this.dev = dev;
  this.mode = mode;
  this.nlink = nlink;
  this.uid = uid;
  this.gid = gid;
  this.rdev = rdev;
  this.blksize = blksize;
  this.ino = ino;
  this.size = size;
  this.blocks = blocks;
  this.atime = new Date(atim_msec);
  this.mtime = new Date(mtim_msec);
  this.ctime = new Date(ctim_msec);
  this.birthtime = new Date(birthtim_msec);
};
--- END ---
--- FUNCTION SOURCE (exec) id{16,0} ---
(a){
if(!(%_IsRegExp(this))){
throw MakeTypeError('incompatible_method_receiver',
['RegExp.prototype.exec',this]);
}
a=((typeof(%IS_VAR(a))==='string')?a:NonStringToString(a));
var b=this.lastIndex;
var c=(%_IsSmi(%IS_VAR(b))?b:%NumberToInteger(ToNumber(b)));
var d=this.global;
if(d){
if(c<0||c>a.length){
this.lastIndex=0;
return null;
}
}else{
c=0;
}
var g=%_RegExpExec(this,a,c,lastMatchInfo);
if((g===null)){
this.lastIndex=0;
return null;
}
lastMatchInfoOverride=null;
if(d){
this.lastIndex=lastMatchInfo[4];
}
return BuildResultFromMatchInfo(g,a);
}

--- END ---
--- FUNCTION SOURCE (isNumber) id{17,0} ---
(arg) {
  return typeof arg === 'number';
}

--- END ---
--- FUNCTION SOURCE ($Array.set_) id{18,0} ---
(){
return this.hasGetter_;
},
--- END ---
--- FUNCTION SOURCE (join) id{19,0} ---
(a){
if((this==null)&&!(%_IsUndetectableObject(this)))throw MakeTypeError('called_on_null_or_undefined',["Array.prototype.join"]);
var b=((%_IsSpecObject(%IS_VAR(this)))?this:ToObject(this));
var c=(b.length>>>0);
if((a===(void 0))){
a=',';
}else if(!(typeof(a)==='string')){
a=NonStringToString(a);
}
var d=%_FastAsciiArrayJoin(b,a);
if(!(d===(void 0)))return d;
return Join(b,c,a,ConvertToString);
}

--- END ---
--- FUNCTION SOURCE (splitPath) id{20,0} ---
(filename) {
    return splitPathRe.exec(filename).slice(1);
  };
--- END ---
--- FUNCTION SOURCE (GifReaderLZWOutputIndexStream) id{21,0} ---
(code_stream, p, output, output_length) {
  var min_code_size = code_stream[p++];

  var clear_code = 1 << min_code_size;
  var eoi_code = clear_code + 1;
  var next_code = eoi_code + 1;

  var cur_code_size = min_code_size + 1;  // Number of bits per code.
  // NOTE: This shares the same name as the encoder, but has a different
  // meaning here.  Here this masks each code coming from the code stream.
  var code_mask = (1 << cur_code_size) - 1;
  var cur_shift = 0;
  var cur = 0;

  var op = 0;  // Output pointer.
  
  var subblock_size = code_stream[p++];

  // TODO(deanm): Would using a TypedArray be any faster?  At least it would
  // solve the fast mode / backing store uncertainty.
  // var code_table = Array(4096);
  var code_table = new Int32Array(4096);  // Can be signed, we only use 20 bits.

  var prev_code = null;  // Track code-1.

  while (true) {
    // Read up to two bytes, making sure we always 12-bits for max sized code.
    while (cur_shift < 16) {
      if (subblock_size === 0) break;  // No more data to be read.

      cur |= code_stream[p++] << cur_shift;
      cur_shift += 8;

      if (subblock_size === 1) {  // Never let it get to 0 to hold logic above.
        subblock_size = code_stream[p++];  // Next subblock.
      } else {
        --subblock_size;
      }
    }

    // TODO(deanm): We should never really get here, we should have received
    // and EOI.
    if (cur_shift < cur_code_size)
      break;

    var code = cur & code_mask;
    cur >>= cur_code_size;
    cur_shift -= cur_code_size;

    // TODO(deanm): Maybe should check that the first code was a clear code,
    // at least this is what you're supposed to do.  But actually our encoder
    // now doesn't emit a clear code first anyway.
    if (code === clear_code) {
      // We don't actually have to clear the table.  This could be a good idea
      // for greater error checking, but we don't really do any anyway.  We
      // will just track it with next_code and overwrite old entries.

      next_code = eoi_code + 1;
      cur_code_size = min_code_size + 1;
      code_mask = (1 << cur_code_size) - 1;

      // Don't update prev_code ?
      prev_code = null;
      continue;
    } else if (code === eoi_code) {
      break;
    }

    // We have a similar situation as the decoder, where we want to store
    // variable length entries (code table entries), but we want to do in a
    // faster manner than an array of arrays.  The code below stores sort of a
    // linked list within the code table, and then "chases" through it to
    // construct the dictionary entries.  When a new entry is created, just the
    // last byte is stored, and the rest (prefix) of the entry is only
    // referenced by its table entry.  Then the code chases through the
    // prefixes until it reaches a single byte code.  We have to chase twice,
    // first to compute the length, and then to actually copy the data to the
    // output (backwards, since we know the length).  The alternative would be
    // storing something in an intermediate stack, but that doesn't make any
    // more sense.  I implemented an approach where it also stored the length
    // in the code table, although it's a bit tricky because you run out of
    // bits (12 + 12 + 8), but I didn't measure much improvements (the table
    // entries are generally not the long).  Even when I created benchmarks for
    // very long table entries the complexity did not seem worth it.
    // The code table stores the prefix entry in 12 bits and then the suffix
    // byte in 8 bits, so each entry is 20 bits.

    var chase_code = code < next_code ? code : prev_code;

    // Chase what we will output, either {CODE} or {CODE-1}.
    var chase_length = 0;
    var chase = chase_code;
    while (chase > clear_code) {
      chase = code_table[chase] >> 8;
      ++chase_length;
    }

    var k = chase;
    
    var op_end = op + chase_length + (chase_code !== code ? 1 : 0);
    if (op_end > output_length) {
      console.log("Warning, gif stream longer than expected.");
      return;
    }

    // Already have the first byte from the chase, might as well write it fast.
    output[op++] = k;

    op += chase_length;
    var b = op;  // Track pointer, writing backwards.

    if (chase_code !== code)  // The case of emitting {CODE-1} + k.
      output[op++] = k;

    chase = chase_code;
    while (chase_length--) {
      chase = code_table[chase];
      output[--b] = chase & 0xff;  // Write backwards.
      chase >>= 8;  // Pull down to the prefix code.
    }

    if (prev_code !== null && next_code < 4096) {
      code_table[next_code++] = prev_code << 8 | k;
      // TODO(deanm): Figure out this clearing vs code growth logic better.  I
      // have an feeling that it should just happen somewhere else, for now it
      // is awkward between when we grow past the max and then hit a clear code.
      // For now just check if we hit the max 12-bits (then a clear code should
      // follow, also of course encoded in 12-bits).
      if (next_code >= code_mask+1 && cur_code_size < 12) {
        ++cur_code_size;
        code_mask = code_mask << 1 | 1;
      }
    }

    prev_code = code;
  }

  if (op !== output_length) {
    console.log("Warning, gif stream shorter than expected.");
  }

  return output;
}

--- END ---
[deoptimizing (DEOPT soft): begin 0x2d33a71d6bd1 GifReaderLZWOutputIndexStream (opt #21) @49, FP to SP delta: 520]
            ;;; deoptimize: Insufficient type feedback for combined type of binary operation
  translating GifReaderLZWOutputIndexStream => node=190, height=152
    0x7fffb10375e0: [top + 216] <- 0x2a9f4290faf9 ; [sp + 224] 0x2a9f4290faf9 <JS Global Object>
    0x7fffb10375d8: [top + 208] <- 0x2d33a700b359 ; [sp + 232] 0x2d33a700b359 <a Buffer with map 0xcbad501a289>
    0x7fffb10375d0: [top + 200] <- 66100 ; [sp + 72] (smi)
    0x7fffb10375c8: [top + 192] <- 0x2d33a71f3af1 ; [sp + 248] 0x2d33a71f3af1 <an Uint8Array with map 0x20e13f414cc1>
    0x7fffb10375c0: [top + 184] <- 0x1a04000000000 ; [sp + 256] 106560
    0x7fffb10375b8: [top + 176] <- 0x3eff7e3cf499 ; caller's pc
    0x7fffb10375b0: [top + 168] <- 0x7fffb1037670 ; caller's fp
    0x7fffb10375a8: [top + 160] <- 0x2d33a71d6a49; context
    0x7fffb10375a0: [top + 152] <- 0x2d33a71d6bd1; function
    0x7fffb1037598: [top + 144] <- 0x2a9f42904121 <undefined> ; literal
    0x7fffb1037590: [top + 136] <- 0x2a9f42904121 <undefined> ; literal
    0x7fffb1037588: [top + 128] <- 0x2a9f42904121 <undefined> ; literal
    0x7fffb1037580: [top + 120] <- 0x2a9f42904121 <undefined> ; literal
    0x7fffb1037578: [top + 112] <- 0x2a9f42904121 <undefined> ; literal
    0x7fffb1037570: [top + 104] <- 0x2a9f42904121 <undefined> ; literal
    0x7fffb1037568: [top + 96] <- 0x2a9f42904121 <undefined> ; literal
    0x7fffb1037560: [top + 88] <- 0x2a9f42904121 <undefined> ; literal
    0x7fffb1037558: [top + 80] <- 0x1a04000000000 ; [sp + 104] 106560
    0x7fffb1037550: [top + 72] <- 0x2a9f42904121 <undefined> ; literal
    0x7fffb1037548: [top + 64] <- 0x2a9f42904121 <undefined> ; literal
    0x7fffb1037540: [top + 56] <- 0x2a9f42904121 <undefined> ; literal
    0x7fffb1037538: [top + 48] <- 0x2a9f42904121 <undefined> ; literal
    0x7fffb1037530: [top + 40] <- 0x2a9f42904121 <undefined> ; literal
    0x7fffb1037528: [top + 32] <- 0x2a9f42904121 <undefined> ; literal
    0x7fffb1037520: [top + 24] <- 0x2a9f42904121 <undefined> ; literal
    0x7fffb1037518: [top + 16] <- 0x2a9f42904121 <undefined> ; literal
    0x7fffb1037510: [top + 8] <- 0x2a9f42904121 <undefined> ; literal
    0x7fffb1037508: [top + 0] <- 0x2a9f42904121 <undefined> ; literal
[deoptimizing (soft): end 0x2d33a71d6bd1 GifReaderLZWOutputIndexStream @49 => node=190, pc=0x3eff7e3d0b7a, state=NO_REGISTERS, alignment=no padding, took 0.044 ms]
--- FUNCTION SOURCE (GifReader.decodeAndBlitFrameRGBA) id{22,0} ---
(frame_num, pixels) {
    var frame = this.frameInfo(frame_num);
    var num_pixels = frame.width * frame.height;
    var index_stream = new Uint8Array(num_pixels);  // Atmost 8-bit indices.
    GifReaderLZWOutputIndexStream(
        buf, frame.data_offset, index_stream, num_pixels);
    var op = 0;  // output pointer.
    var palette_offset = frame.palette_offset;

    // NOTE(deanm): It seems to be much faster to compare index to 256 than
    // to === null.  Not sure why, but CompareStub_EQ_STRICT shows up high in
    // the profile, not sure if it's related to using a Uint8Array.
    var trans = frame.transparent_index;
    if (trans === null) trans = 256;

    var wstride = (width - frame.width) * 4;
    var op = ((frame.y * width) + frame.x) * 4;  // output pointer.
    var linex = frame.width;

    for (var i = 0, il = index_stream.length; i < il; ++i) {
      var index = index_stream[i];

      if (index === trans) {
        op += 4;
      } else {
        var r = buf[palette_offset + index * 3];
        var g = buf[palette_offset + index * 3 + 1];
        var b = buf[palette_offset + index * 3 + 2];
        pixels[op++] = r;
        pixels[op++] = g;
        pixels[op++] = b;
        pixels[op++] = 255;
      }

      if (--linex === 0) {
        op += wstride;
        linex = frame.width;
      }
    }
  };
--- END ---
--- FUNCTION SOURCE (GifReaderLZWOutputIndexStream) id{23,0} ---
(code_stream, p, output, output_length) {
  var min_code_size = code_stream[p++];

  var clear_code = 1 << min_code_size;
  var eoi_code = clear_code + 1;
  var next_code = eoi_code + 1;

  var cur_code_size = min_code_size + 1;  // Number of bits per code.
  // NOTE: This shares the same name as the encoder, but has a different
  // meaning here.  Here this masks each code coming from the code stream.
  var code_mask = (1 << cur_code_size) - 1;
  var cur_shift = 0;
  var cur = 0;

  var op = 0;  // Output pointer.
  
  var subblock_size = code_stream[p++];

  // TODO(deanm): Would using a TypedArray be any faster?  At least it would
  // solve the fast mode / backing store uncertainty.
  // var code_table = Array(4096);
  var code_table = new Int32Array(4096);  // Can be signed, we only use 20 bits.

  var prev_code = null;  // Track code-1.

  while (true) {
    // Read up to two bytes, making sure we always 12-bits for max sized code.
    while (cur_shift < 16) {
      if (subblock_size === 0) break;  // No more data to be read.

      cur |= code_stream[p++] << cur_shift;
      cur_shift += 8;

      if (subblock_size === 1) {  // Never let it get to 0 to hold logic above.
        subblock_size = code_stream[p++];  // Next subblock.
      } else {
        --subblock_size;
      }
    }

    // TODO(deanm): We should never really get here, we should have received
    // and EOI.
    if (cur_shift < cur_code_size)
      break;

    var code = cur & code_mask;
    cur >>= cur_code_size;
    cur_shift -= cur_code_size;

    // TODO(deanm): Maybe should check that the first code was a clear code,
    // at least this is what you're supposed to do.  But actually our encoder
    // now doesn't emit a clear code first anyway.
    if (code === clear_code) {
      // We don't actually have to clear the table.  This could be a good idea
      // for greater error checking, but we don't really do any anyway.  We
      // will just track it with next_code and overwrite old entries.

      next_code = eoi_code + 1;
      cur_code_size = min_code_size + 1;
      code_mask = (1 << cur_code_size) - 1;

      // Don't update prev_code ?
      prev_code = null;
      continue;
    } else if (code === eoi_code) {
      break;
    }

    // We have a similar situation as the decoder, where we want to store
    // variable length entries (code table entries), but we want to do in a
    // faster manner than an array of arrays.  The code below stores sort of a
    // linked list within the code table, and then "chases" through it to
    // construct the dictionary entries.  When a new entry is created, just the
    // last byte is stored, and the rest (prefix) of the entry is only
    // referenced by its table entry.  Then the code chases through the
    // prefixes until it reaches a single byte code.  We have to chase twice,
    // first to compute the length, and then to actually copy the data to the
    // output (backwards, since we know the length).  The alternative would be
    // storing something in an intermediate stack, but that doesn't make any
    // more sense.  I implemented an approach where it also stored the length
    // in the code table, although it's a bit tricky because you run out of
    // bits (12 + 12 + 8), but I didn't measure much improvements (the table
    // entries are generally not the long).  Even when I created benchmarks for
    // very long table entries the complexity did not seem worth it.
    // The code table stores the prefix entry in 12 bits and then the suffix
    // byte in 8 bits, so each entry is 20 bits.

    var chase_code = code < next_code ? code : prev_code;

    // Chase what we will output, either {CODE} or {CODE-1}.
    var chase_length = 0;
    var chase = chase_code;
    while (chase > clear_code) {
      chase = code_table[chase] >> 8;
      ++chase_length;
    }

    var k = chase;
    
    var op_end = op + chase_length + (chase_code !== code ? 1 : 0);
    if (op_end > output_length) {
      console.log("Warning, gif stream longer than expected.");
      return;
    }

    // Already have the first byte from the chase, might as well write it fast.
    output[op++] = k;

    op += chase_length;
    var b = op;  // Track pointer, writing backwards.

    if (chase_code !== code)  // The case of emitting {CODE-1} + k.
      output[op++] = k;

    chase = chase_code;
    while (chase_length--) {
      chase = code_table[chase];
      output[--b] = chase & 0xff;  // Write backwards.
      chase >>= 8;  // Pull down to the prefix code.
    }

    if (prev_code !== null && next_code < 4096) {
      code_table[next_code++] = prev_code << 8 | k;
      // TODO(deanm): Figure out this clearing vs code growth logic better.  I
      // have an feeling that it should just happen somewhere else, for now it
      // is awkward between when we grow past the max and then hit a clear code.
      // For now just check if we hit the max 12-bits (then a clear code should
      // follow, also of course encoded in 12-bits).
      if (next_code >= code_mask+1 && cur_code_size < 12) {
        ++cur_code_size;
        code_mask = code_mask << 1 | 1;
      }
    }

    prev_code = code;
  }

  if (op !== output_length) {
    console.log("Warning, gif stream shorter than expected.");
  }

  return output;
}

--- END ---
[deoptimize marked code in all contexts]
[deoptimizer unlinked: GifReaderLZWOutputIndexStream / b88c309bc99]
[deoptimizer unlinked: GifReader.decodeAndBlitFrameRGBA / b88c3084b69]
--- FUNCTION SOURCE (NativeBuffer) id{24,0} ---
(length) {
  this.length = length >>> 0;
  // Set this to keep the object map the same.
  this.parent = undefined;
}

--- END ---
--- FUNCTION SOURCE () id{25,0} ---
(a, b) {
    return (a[0] + a[1] + a[2] + a[3]) - (b[1] + b[1] + b[2] + b[3])
  })
--- END ---
--- FUNCTION SOURCE (isUndefined) id{26,0} ---
(arg) {
  return arg === void 0;
}

--- END ---
--- FUNCTION SOURCE (Buffer.slice) id{27,0} ---
(start, end) {
  var len = this.length;
  start = ~~start;
  end = util.isUndefined(end) ? len : ~~end;

  if (start < 0) {
    start += len;
    if (start < 0)
      start = 0;
  } else if (start > len) {
    start = len;
  }

  if (end < 0) {
    end += len;
    if (end < 0)
      end = 0;
  } else if (end > len) {
    end = len;
  }

  if (end < start)
    end = start;

  var buf = new NativeBuffer();
  sliceOnto(this, buf, start, end);
  buf.length = end - start;
  if (buf.length > 0)
    buf.parent = util.isUndefined(this.parent) ? this : this.parent;

  return buf;
};
--- END ---
--- FUNCTION SOURCE (isUndefined) id{27,1} ---
(arg) {
  return arg === void 0;
}

--- END ---
INLINE (isUndefined) id{27,1} AS 1 AT <0:72>
--- FUNCTION SOURCE (NativeBuffer) id{27,2} ---
(length) {
  this.length = length >>> 0;
  // Set this to keep the object map the same.
  this.parent = undefined;
}

--- END ---
INLINE (NativeBuffer) id{27,2} AS 2 AT <0:388>
INLINE (isUndefined) id{27,1} AS 3 AT <0:516>
--- FUNCTION SOURCE (isBuffer) id{28,0} ---
(arg) {
  return arg instanceof Buffer;
}

--- END ---
--- FUNCTION SOURCE (medianPixel) id{29,0} ---
(pixels) {
  var sorted = sortPixels(pixels)
  var mid = (sorted.length / 2) - ((sorted.length / 2) % 4)
  return sorted.slice(mid, mid + 4)
}

--- END ---
--- FUNCTION SOURCE (sortPixels) id{29,1} ---
(pixels) {
  var split = []
  for (var i = 0; i < pixels.length; i += 4) {
    split.push(pixels.slice(i, i + 4))
  }
  var sorted = split.sort(function (a, b) {
    return (a[0] + a[1] + a[2] + a[3]) - (b[1] + b[1] + b[2] + b[3])
  })
  var newbuff = new Buffer(pixels.length)
  for (var j = 0; j < sorted.length; j++) {
    newbuff[j * 4] = sorted[j][0]
    newbuff[j * 4 + 1] = sorted[j][1]
    newbuff[j * 4 + 2] = sorted[j][2]
    newbuff[j * 4 + 3] = sorted[j][3]
  }
  return newbuff
}

--- END ---
INLINE (sortPixels) id{29,1} AS 1 AT <0:26>
--- FUNCTION SOURCE (Buffer.slice) id{29,2} ---
(start, end) {
  var len = this.length;
  start = ~~start;
  end = util.isUndefined(end) ? len : ~~end;

  if (start < 0) {
    start += len;
    if (start < 0)
      start = 0;
  } else if (start > len) {
    start = len;
  }

  if (end < 0) {
    end += len;
    if (end < 0)
      end = 0;
  } else if (end > len) {
    end = len;
  }

  if (end < start)
    end = start;

  var buf = new NativeBuffer();
  sliceOnto(this, buf, start, end);
  buf.length = end - start;
  if (buf.length > 0)
    buf.parent = util.isUndefined(this.parent) ? this : this.parent;

  return buf;
};
--- END ---
INLINE (Buffer.slice) id{29,2} AS 2 AT <1:97>
--- FUNCTION SOURCE (isUndefined) id{29,3} ---
(arg) {
  return arg === void 0;
}

--- END ---
INLINE (isUndefined) id{29,3} AS 3 AT <2:72>
--- FUNCTION SOURCE (NativeBuffer) id{29,4} ---
(length) {
  this.length = length >>> 0;
  // Set this to keep the object map the same.
  this.parent = undefined;
}

--- END ---
INLINE (NativeBuffer) id{29,4} AS 4 AT <2:388>
INLINE (isUndefined) id{29,3} AS 5 AT <2:516>
INLINE (Buffer.slice) id{29,2} AS 6 AT <0:121>
INLINE (isUndefined) id{29,3} AS 7 AT <6:72>
INLINE (NativeBuffer) id{29,4} AS 8 AT <6:388>
INLINE (isUndefined) id{29,3} AS 9 AT <6:516>
--- FUNCTION SOURCE (QuickSort) id{30,0} ---
(h,i,j){
var z=0;
while(true){
if(j-i<=10){
g(h,i,j);
return;
}
if(j-i>1000){
z=r(h,i,j);
}else{
z=i+((j-i)>>1);
}
var B=h[i];
var C=h[j-1];
var D=h[z];
var E=%_CallFunction(d,B,C,a);
if(E>0){
var o=B;
B=C;
C=o;
}
var G=%_CallFunction(d,B,D,a);
if(G>=0){
var o=B;
B=D;
D=C;
C=o;
}else{
var H=%_CallFunction(d,C,D,a);
if(H>0){
var o=C;
C=D;
D=o;
}
}
h[i]=B;
h[j-1]=D;
var I=C;
var J=i+1;
var K=j-1;
h[z]=h[J];
h[J]=I;
partition:for(var k=J+1;k<K;k++){
var l=h[k];
var q=%_CallFunction(d,l,I,a);
if(q<0){
h[k]=h[J];
h[J]=l;
J++;
}else if(q>0){
do{
K--;
if(K==k)break partition;
var L=h[K];
q=%_CallFunction(d,L,I,a);
}while(q>0);
h[k]=h[K];
h[K]=l;
if(q<0){
l=h[k];
h[k]=h[J];
h[J]=l;
J++;
}
}
}
if(j-K<J-i){
A(h,K,j);
j=J;
}else{
A(h,i,J);
i=K;
}
}
};
--- END ---
--- FUNCTION SOURCE (sort) id{31,0} ---
(a){
if((this==null)&&!(%_IsUndetectableObject(this)))throw MakeTypeError('called_on_null_or_undefined',["Array.prototype.sort"]);
if(!(%_ClassOf(a)==='Function')){
a=function(b,c){
if(b===c)return 0;
if(%_IsSmi(b)&&%_IsSmi(c)){
return %SmiLexicographicCompare(b,c);
}
b=ToString(b);
c=ToString(c);
if(b==c)return 0;
else return b<c?-1:1;
};
}
var d=%GetDefaultReceiver(a);
var g=function InsertionSort(h,i,j){
for(var k=i+1;k<j;k++){
var l=h[k];
for(var m=k-1;m>=i;m--){
var o=h[m];
var q=%_CallFunction(d,o,l,a);
if(q>0){
h[m+1]=o;
}else{
break;
}
}
h[m+1]=l;
}
};
var r=function(h,i,j){
var t=[];
var u=200+((j-i)&15);
for(var k=i+1;k<j-1;k+=u){
t.push([k,h[k]]);
}
t.sort(function(h,w){
return %_CallFunction(d,h[1],w[1],a)});
var z=t[t.length>>1][0];
return z;
}
var A=function QuickSort(h,i,j){
var z=0;
while(true){
if(j-i<=10){
g(h,i,j);
return;
}
if(j-i>1000){
z=r(h,i,j);
}else{
z=i+((j-i)>>1);
}
var B=h[i];
var C=h[j-1];
var D=h[z];
var E=%_CallFunction(d,B,C,a);
if(E>0){
var o=B;
B=C;
C=o;
}
var G=%_CallFunction(d,B,D,a);
if(G>=0){
var o=B;
B=D;
D=C;
C=o;
}else{
var H=%_CallFunction(d,C,D,a);
if(H>0){
var o=C;
C=D;
D=o;
}
}
h[i]=B;
h[j-1]=D;
var I=C;
var J=i+1;
var K=j-1;
h[z]=h[J];
h[J]=I;
partition:for(var k=J+1;k<K;k++){
var l=h[k];
var q=%_CallFunction(d,l,I,a);
if(q<0){
h[k]=h[J];
h[J]=l;
J++;
}else if(q>0){
do{
K--;
if(K==k)break partition;
var L=h[K];
q=%_CallFunction(d,L,I,a);
}while(q>0);
h[k]=h[K];
h[K]=l;
if(q<0){
l=h[k];
h[k]=h[J];
h[J]=l;
J++;
}
}
}
if(j-K<J-i){
A(h,K,j);
j=J;
}else{
A(h,i,J);
i=K;
}
}
};
var M=function CopyFromPrototype(N,O){
var P=0;
for(var Q=%GetPrototype(N);Q;Q=%GetPrototype(Q)){
var R=%GetArrayKeys(Q,O);
if((typeof(R)==='number')){
var S=R;
for(var k=0;k<S;k++){
if(!N.hasOwnProperty(k)&&Q.hasOwnProperty(k)){
N[k]=Q[k];
if(k>=P){P=k+1;}
}
}
}else{
for(var k=0;k<R.length;k++){
var T=R[k];
if(!(T===(void 0))&&
!N.hasOwnProperty(T)&&Q.hasOwnProperty(T)){
N[T]=Q[T];
if(T>=P){P=T+1;}
}
}
}
}
return P;
};
var U=function(N,i,j){
for(var Q=%GetPrototype(N);Q;Q=%GetPrototype(Q)){
var R=%GetArrayKeys(Q,j);
if((typeof(R)==='number')){
var S=R;
for(var k=i;k<S;k++){
if(Q.hasOwnProperty(k)){
N[k]=(void 0);
}
}
}else{
for(var k=0;k<R.length;k++){
var T=R[k];
if(!(T===(void 0))&&i<=T&&
Q.hasOwnProperty(T)){
N[T]=(void 0);
}
}
}
}
};
var W=function SafeRemoveArrayHoles(N){
var X=0;
var Y=O-1;
var Z=0;
while(X<Y){
while(X<Y&&
!(N[X]===(void 0))){
X++;
}
if(!N.hasOwnProperty(X)){
Z++;
}
while(X<Y&&
(N[Y]===(void 0))){
if(!N.hasOwnProperty(Y)){
Z++;
}
Y--;
}
if(X<Y){
N[X]=N[Y];
N[Y]=(void 0);
}
}
if(!(N[X]===(void 0)))X++;
var k;
for(k=X;k<O-Z;k++){
N[k]=(void 0);
}
for(k=O-Z;k<O;k++){
if(k in %GetPrototype(N)){
N[k]=(void 0);
}else{
delete N[k];
}
}
return X;
};
var O=(this.length>>>0);
if(O<2)return this;
var aa=(%_IsArray(this));
var ab;
if(!aa){
ab=M(this,O);
}
var ac=%RemoveArrayHoles(this,O);
if(ac==-1){
ac=W(this);
}
A(this,0,ac);
if(!aa&&(ac+1<ab)){
U(this,ac,ab);
}
return this;
}

--- END ---
--- FUNCTION SOURCE (avg) id{32,0} ---
(frames, alg) {
  var len = frames[0].data.length
  if (len === 1) {
    return frames[0].data
  }
  var avgFrame = new Buffer(len)
  for (var i = 0; i < len; i += 4) {
    var pixels = new Buffer(4 * frames.length)
    for (var j = 0; j < frames.length; j++) {
      frames[j].data.copy(pixels, j * 4, i, i + 4)
    }
    var avgPixel = alg(pixels)
    avgPixel.copy(avgFrame, i)
  }
  return avgFrame
}

--- END ---
--- FUNCTION SOURCE (medianPixel) id{32,1} ---
(pixels) {
  var sorted = sortPixels(pixels)
  var mid = (sorted.length / 2) - ((sorted.length / 2) % 4)
  return sorted.slice(mid, mid + 4)
}

--- END ---
INLINE (medianPixel) id{32,1} AS 1 AT <0:338>
--- FUNCTION SOURCE (sortPixels) id{32,2} ---
(pixels) {
  var split = []
  for (var i = 0; i < pixels.length; i += 4) {
    split.push(pixels.slice(i, i + 4))
  }
  var sorted = split.sort(function (a, b) {
    return (a[0] + a[1] + a[2] + a[3]) - (b[1] + b[1] + b[2] + b[3])
  })
  var newbuff = new Buffer(pixels.length)
  for (var j = 0; j < sorted.length; j++) {
    newbuff[j * 4] = sorted[j][0]
    newbuff[j * 4 + 1] = sorted[j][1]
    newbuff[j * 4 + 2] = sorted[j][2]
    newbuff[j * 4 + 3] = sorted[j][3]
  }
  return newbuff
}

--- END ---
INLINE (sortPixels) id{32,2} AS 2 AT <1:26>
--- FUNCTION SOURCE (Buffer.slice) id{32,3} ---
(start, end) {
  var len = this.length;
  start = ~~start;
  end = util.isUndefined(end) ? len : ~~end;

  if (start < 0) {
    start += len;
    if (start < 0)
      start = 0;
  } else if (start > len) {
    start = len;
  }

  if (end < 0) {
    end += len;
    if (end < 0)
      end = 0;
  } else if (end > len) {
    end = len;
  }

  if (end < start)
    end = start;

  var buf = new NativeBuffer();
  sliceOnto(this, buf, start, end);
  buf.length = end - start;
  if (buf.length > 0)
    buf.parent = util.isUndefined(this.parent) ? this : this.parent;

  return buf;
};
--- END ---
INLINE (Buffer.slice) id{32,3} AS 3 AT <2:97>
--- FUNCTION SOURCE (isUndefined) id{32,4} ---
(arg) {
  return arg === void 0;
}

--- END ---
INLINE (isUndefined) id{32,4} AS 4 AT <3:72>
--- FUNCTION SOURCE (NativeBuffer) id{32,5} ---
(length) {
  this.length = length >>> 0;
  // Set this to keep the object map the same.
  this.parent = undefined;
}

--- END ---
INLINE (NativeBuffer) id{32,5} AS 5 AT <3:388>
INLINE (isUndefined) id{32,4} AS 6 AT <3:516>
INLINE (Buffer.slice) id{32,3} AS 7 AT <1:121>
INLINE (isUndefined) id{32,4} AS 8 AT <7:72>
INLINE (NativeBuffer) id{32,5} AS 9 AT <7:388>
INLINE (isUndefined) id{32,4} AS 10 AT <7:516>
--- FUNCTION SOURCE (InsertionSort) id{33,0} ---
(h,i,j){
for(var k=i+1;k<j;k++){
var l=h[k];
for(var m=k-1;m>=i;m--){
var o=h[m];
var q=%_CallFunction(d,o,l,a);
if(q>0){
h[m+1]=o;
}else{
break;
}
}
h[m+1]=l;
}
};
--- END ---
--- FUNCTION SOURCE (createPool) id{34,0} ---
() {
  poolSize = Buffer.poolSize;
  allocPool = alloc({}, poolSize);
  poolOffset = 0;
}

--- END ---
--- FUNCTION SOURCE (Buffer) id{35,0} ---
(subject, encoding) {
  if (!util.isBuffer(this))
    return new Buffer(subject, encoding);

  if (util.isNumber(subject))
    this.length = subject > 0 ? subject >>> 0 : 0;
  else if (util.isString(subject))
    this.length = Buffer.byteLength(subject, encoding = encoding || 'utf8');
  else if (util.isObject(subject)) {
    if (subject.type === 'Buffer' && util.isArray(subject.data))
      subject = subject.data;

    this.length = +subject.length > 0 ? Math.floor(+subject.length) : 0;
  } else
    throw new TypeError('must start with number, buffer, array or string');

  if (this.length > kMaxLength) {
    throw new RangeError('Attempt to allocate Buffer larger than maximum ' +
                         'size: 0x' + kMaxLength.toString(16) + ' bytes');
  }

  this.parent = undefined;
  if (this.length <= (Buffer.poolSize >>> 1) && this.length > 0) {
    if (this.length > poolSize - poolOffset)
      createPool();
    this.parent = sliceOnto(allocPool,
                            this,
                            poolOffset,
                            poolOffset + this.length);
    poolOffset += this.length;
  } else {
    alloc(this, this.length);
  }

  if (!util.isNumber(subject)) {
    if (util.isString(subject)) {
      // In the case of base64 it's possible that the size of the buffer
      // allocated was slightly too large. In this case we need to rewrite
      // the length to the actual length written.
      var len = this.write(subject, encoding);

      // Buffer was truncated after decode, realloc internal ExternalArray
      if (len !== this.length) {
        this.length = len;
        truncate(this, this.length);
      }
    } else {
      if (util.isBuffer(subject))
        subject.copy(this, 0, 0, this.length);
      else if (util.isNumber(subject.length) || util.isArray(subject))
        for (var i = 0; i < this.length; i++)
          this[i] = subject[i];
    }
  }
}

--- END ---
--- FUNCTION SOURCE (isBuffer) id{35,1} ---
(arg) {
  return arg instanceof Buffer;
}

--- END ---
INLINE (isBuffer) id{35,1} AS 1 AT <0:34>
--- FUNCTION SOURCE (isNumber) id{35,2} ---
(arg) {
  return typeof arg === 'number';
}

--- END ---
INLINE (isNumber) id{35,2} AS 2 AT <0:104>
--- FUNCTION SOURCE (isString) id{35,3} ---
(arg) {
  return typeof arg === 'string';
}

--- END ---
INLINE (isString) id{35,3} AS 3 AT <0:190>
--- FUNCTION SOURCE (Buffer.byteLength) id{35,4} ---
(str, enc) {
  var ret;
  str = str + '';
  switch (enc) {
    case 'ascii':
    case 'binary':
    case 'raw':
      ret = str.length;
      break;
    case 'ucs2':
    case 'ucs-2':
    case 'utf16le':
    case 'utf-16le':
      ret = str.length * 2;
      break;
    case 'hex':
      ret = str.length >>> 1;
      break;
    default:
      ret = internal.byteLength(str, enc);
  }
  return ret;
};
--- END ---
INLINE (Buffer.byteLength) id{35,4} AS 4 AT <0:234>
--- FUNCTION SOURCE (createPool) id{35,5} ---
() {
  poolSize = Buffer.poolSize;
  allocPool = alloc({}, poolSize);
  poolOffset = 0;
}

--- END ---
INLINE (createPool) id{35,5} AS 5 AT <0:914>
INLINE (isNumber) id{35,2} AS 6 AT <0:1185>
INLINE (isString) id{35,3} AS 7 AT <0:1219>
--- FUNCTION SOURCE (round) id{36,0} ---
(a){
return %RoundNumber(((typeof(%IS_VAR(a))==='number')?a:NonNumberToNumber(a)));
}

--- END ---
--- FUNCTION SOURCE (module.exports) id{37,0} ---
(cssString) {
   return new Color(cssString);
};
--- END ---
--- FUNCTION SOURCE (Color.rgb) id{38,0} ---
(vals) {
      return this.setSpace("rgb", arguments);
   },
--- END ---
--- FUNCTION SOURCE (Color.setSpace) id{39,0} ---
(space, args) {
   var vals = args[0];
   if (vals === undefined) {
      // color.rgb()
      return this.getValues(space);
   }
   // color.rgb(10, 10, 10)
   if (typeof vals == "number") {
      vals = Array.prototype.slice.call(args);
   }
   this.setValues(space, vals);
   return this;
}

--- END ---
--- FUNCTION SOURCE (rgb2cmyk) id{40,0} ---
(rgb) {
  var r = rgb[0] / 255,
      g = rgb[1] / 255,
      b = rgb[2] / 255,
      c, m, y, k;
      
  k = Math.min(1 - r, 1 - g, 1 - b);
  c = (1 - r - k) / (1 - k);
  m = (1 - g - k) / (1 - k);
  y = (1 - b - k) / (1 - k);
  return [c * 100, m * 100, y * 100, k * 100];
}

--- END ---
--- FUNCTION SOURCE () id{41,0} ---
(value) {
    return value * MAX_RGB;
  })
--- END ---
--- FUNCTION SOURCE (isObject) id{42,0} ---
(arg) {
  return typeof arg === 'object' && arg !== null;
}

--- END ---
--- FUNCTION SOURCE () id{43,0} ---
(color) {
    return new Buffer([color.values.rgb[0], color.values.rgb[1], color.values.rgb[2], 0xff])
  })
--- END ---
--- FUNCTION SOURCE (floor) id{44,0} ---
(a){
a=((typeof(%IS_VAR(a))==='number')?a:NonNumberToNumber(a));
if(a<0x80000000&&a>0){
return(a>>>0);
}else{
return %MathFloor(a);
}
}

--- END ---
--- FUNCTION SOURCE (rainbowClamp) id{45,0} ---
(rgba) {
  var hues = rainbowHues(256)
  for (var i = 0; i < rgba.length; i+= 4) {
    var brightness = (0.34 * rgba[i] + 0.5 * rgba[i + 1] + 0.16 * rgba[i + 2]) | 0
    var hue = hues[brightness]
    rgba[i] = hue[0]
    rgba[i + 1] = hue[1]
    rgba[i + 2] = hue[2]
  }
  return rgba
}

--- END ---
--- FUNCTION SOURCE (rainbowHues) id{45,1} ---
(colors) {
  return Rainbow.create(colors).map(function (color) {
    return new Buffer([color.values.rgb[0], color.values.rgb[1], color.values.rgb[2], 0xff])
  })
}

--- END ---
INLINE (rainbowHues) id{45,1} AS 1 AT <0:22>
--- FUNCTION SOURCE (abs) id{46,0} ---
(a){
if(%_IsSmi(a))return a>=0?a:-a;
a=((typeof(%IS_VAR(a))==='number')?a:NonNumberToNumber(a));
if(a===0)return 0;
return a>0?a:-a;
}

--- END ---
--- FUNCTION SOURCE (replaceBackground) id{47,0} ---
(frames, replacer, tolerance) {
  tolerance = tolerance != null ? tolerance : 50

  var background = medianFrame(frames)
  for (var i = 0; i < frames.length; i++) {
    var dupe = copy(frames[i].data)
    replacer(dupe)
    var rgba = frames[i].data
    for (var j = 0; j < background.length; j += 4) {
      var rDiff = Math.abs(rgba[j] - background[j])
      var gDiff = Math.abs(rgba[j+1] - background[j+1])
      var bDiff = Math.abs(rgba[j+2] - background[j+2])
      if (!(rDiff > tolerance || gDiff > tolerance || bDiff > tolerance)) {
        var start = (j > dupe.length) ? 0 : j
        rgba[j] = dupe[start + 0]
        rgba[j+1] = dupe[start + 1]
        rgba[j+2] = dupe[start + 2]
      }
    }
  }
}

--- END ---
--- FUNCTION SOURCE (copy) id{47,1} ---
(rgba) {
  var dupe = new Buffer(rgba.length)
  rgba.copy(dupe)
  return dupe
}

--- END ---
INLINE (copy) id{47,1} AS 1 AT <0:180>
--- FUNCTION SOURCE (replacer) id{47,2} ---
(frame) {
      glitcher.rainbowClamp(frame)
    }

--- END ---
INLINE (replacer) id{47,2} AS 2 AT <0:205>
--- FUNCTION SOURCE (min) id{48,0} ---
(a,b){
var c=%_ArgumentsLength();
if(c==2){
a=((typeof(%IS_VAR(a))==='number')?a:NonNumberToNumber(a));
b=((typeof(%IS_VAR(b))==='number')?b:NonNumberToNumber(b));
if(b>a)return a;
if(a>b)return b;
if(a==b){
return(a===0&&%_IsMinusZero(a))?a:b;
}
return $NaN;
}
var d=(1/0);
for(var g=0;g<c;g++){
var h=%_Arguments(g);
if(!(typeof(h)==='number'))h=NonNumberToNumber(h);
if((!%_IsSmi(%IS_VAR(h))&&!(h==h))||h<d||(d===0&&h===0&&%_IsMinusZero(h))){
d=h;
}
}
return d;
}

--- END ---
[deoptimize marked code in all contexts]
[deoptimizer unlinked:  / 2d33a7090811]
--- FUNCTION SOURCE (max) id{49,0} ---
(a,b){
var c=%_ArgumentsLength();
if(c==2){
a=((typeof(%IS_VAR(a))==='number')?a:NonNumberToNumber(a));
b=((typeof(%IS_VAR(b))==='number')?b:NonNumberToNumber(b));
if(b>a)return b;
if(a>b)return a;
if(a==b){
return(a===0&&%_IsMinusZero(a))?b:a;
}
return $NaN;
}
var d=-(1/0);
for(var g=0;g<c;g++){
var h=%_Arguments(g);
if(!(typeof(h)==='number'))h=NonNumberToNumber(h);
if((!%_IsSmi(%IS_VAR(h))&&!(h==h))||h>d||(d===0&&h===0&&%_IsMinusZero(d))){
d=h;
}
}
return d;
}

--- END ---
--- FUNCTION SOURCE () id{50,0} ---
(color) {
    return new Buffer([color.values.rgb[0], color.values.rgb[1], color.values.rgb[2], 0xff])
  })
--- END ---
--- FUNCTION SOURCE (getColor) id{51,0} ---
(index) {
  var section = Math.floor(index * NUM_SECTIONS);
  var start = (index - (section/NUM_SECTIONS)) * NUM_SECTIONS; // index from start of section (0-1)
  var end = 1 - start; // index from end of section (0-1)

  var colorArray; // the rgb color array with colors that range from 0-1.
  switch (section) {
    case 0:
      colorArray = [1, start, 0];
      break;
    case 1:
      colorArray = [end, 1, 0];
      break;
    case 2:
      colorArray = [0, 1, start];
      break;
    case 3:
      colorArray = [0, end, 1];
      break;
    case 4:
      colorArray = [start, 0, 1];
      break;
    case 5:
      colorArray = [1, 0, end];
      break;
  }

  // Return the color
  return new Color().rgb(colorArray.map(function(value) {
    return value * MAX_RGB;
  }));
};
--- END ---
--- FUNCTION SOURCE (module.exports) id{51,1} ---
(cssString) {
   return new Color(cssString);
};
--- END ---
INLINE (module.exports) id{51,1} AS 1 AT <0:698>
--- FUNCTION SOURCE (rgb2hsl) id{52,0} ---
(rgb) {
  var r = rgb[0]/255,
      g = rgb[1]/255,
      b = rgb[2]/255,
      min = Math.min(r, g, b),
      max = Math.max(r, g, b),
      delta = max - min,
      h, s, l;

  if (max == min)
    h = 0;
  else if (r == max) 
    h = (g - b) / delta; 
  else if (g == max)
    h = 2 + (b - r) / delta; 
  else if (b == max)
    h = 4 + (r - g)/ delta;

  h = Math.min(h * 60, 360);

  if (h < 0)
    h += 360;

  l = (min + max) / 2;

  if (max == min)
    s = 0;
  else if (l <= 0.5)
    s = delta / (max + min);
  else
    s = delta / (2 - max - min);

  return [h, s * 100, l * 100];
}

--- END ---
--- FUNCTION SOURCE (Color.setValues) id{53,0} ---
(space, vals) {
   var spaces = {
      "rgb": ["red", "green", "blue"],
      "hsl": ["hue", "saturation", "lightness"],
      "hsv": ["hue", "saturation", "value"],
      "cmyk": ["cyan", "magenta", "yellow", "black"]
   };

   var maxes = {
      "rgb": [255, 255, 255],
      "hsl": [360, 100, 100],
      "hsv": [360, 100, 100],
      "cmyk": [100, 100, 100, 100],
   };

   var alpha = 1;
   if (space == "alpha") {
      alpha = vals;
   }
   else if (vals.length) {
      // [10, 10, 10]
      this.values[space] = vals.slice(0, space.length);
      alpha = vals[space.length];
   }
   else if (vals[space[0]] !== undefined) {
      // {r: 10, g: 10, b: 10}
      for (var i = 0; i < space.length; i++) {
        this.values[space][i] = vals[space[i]];
      }
      alpha = vals.a;
   }
   else if (vals[spaces[space][0]] !== undefined) {
      // {red: 10, green: 10, blue: 10}
      var chans = spaces[space];
      for (var i = 0; i < space.length; i++) {
        this.values[space][i] = vals[chans[i]];
      }
      alpha = vals.alpha;
   }
   this.values.alpha = Math.max(0, Math.min(1, (alpha !== undefined ? alpha : this.values.alpha) ));
   if (space == "alpha") {
      return;
   }

   // convert to all the other color spaces
   for (var sname in spaces) {
      if (sname != space) {
         this.values[sname] = convert[space][sname](this.values[space])
      }

      // cap values
      for (var i = 0; i < sname.length; i++) {
         var capped = Math.max(0, Math.min(maxes[sname][i], this.values[sname][i]));
         this.values[sname][i] = Math.round(capped);
      }
   }
   return true;
}

--- END ---
[deoptimizing (DEOPT eager): begin 0xb88c305fb71 Color.setValues (opt #53) @55, FP to SP delta: 144]
            Deferred TaggedToI: NaN
  translating Color.setValues => node=199, height=80
    0x7fffb1037310: [top + 128] <- 0x2d33a603d2d1 ; [sp + 176] 0x2d33a603d2d1 <JS Object>
    0x7fffb1037308: [top + 120] <- 0x1844bd2884a1 ; [sp + 168] 0x1844bd2884a1 <String[3]: rgb>
    0x7fffb1037300: [top + 112] <- 0x2d33a603d459 ; [sp + 160] 0x2d33a603d459 <JS Array[3]>
    0x7fffb10372f8: [top + 104] <- 0x3eff7e3fcebd ; caller's pc
    0x7fffb10372f0: [top + 96] <- 0x7fffb1037330 ; caller's fp
    0x7fffb10372e8: [top + 88] <- 0x2a9f4295dcb1; context
    0x7fffb10372e0: [top + 80] <- 0xb88c305fb71; function
    0x7fffb10372d8: [top + 72] <- 0x2d33a603e549 ; [sp + 112] 0x2d33a603e549 <an Object with map 0x20e13f435511>
    0x7fffb10372d0: [top + 64] <- 0x2d33a603e601 ; [sp + 104] 0x2d33a603e601 <an Object with map 0x20e13f435511>
    0x7fffb10372c8: [top + 56] <- 0x2a9f42904121 <undefined> ; literal
    0x7fffb10372c0: [top + 48] <- 0x2a9f42904121 <undefined> ; literal
    0x7fffb10372b8: [top + 40] <- 0x2a9f42904121 <undefined> ; literal
    0x7fffb10372b0: [top + 32] <- 0x2a9f42904121 <undefined> ; literal
    0x7fffb10372a8: [top + 24] <- 0x2a9f42904121 <undefined> ; literal
    0x7fffb10372a0: [top + 16] <- 0x2d33a603d2f1 ; rbx 0x2d33a603d2f1 <an Object with map 0x20e13f43a5c9>
    0x7fffb1037298: [top + 8] <- 0x1844bd2884a1 ; [sp + 168] 0x1844bd2884a1 <String[3]: rgb>
    0x7fffb1037290: [top + 0] <- 0x2d33a603e6b9 ; rax 0x2d33a603e6b9 <JS Array[3]>
[deoptimizing (eager): end 0xb88c305fb71 Color.setValues @55 => node=199, pc=0x3eff7e3f42a5, state=TOS_REG, alignment=no padding, took 0.032 ms]
--- FUNCTION SOURCE (rgb2hsv) id{54,0} ---
(rgb) {
  var r = rgb[0],
      g = rgb[1],
      b = rgb[2],
      min = Math.min(r, g, b),
      max = Math.max(r, g, b),
      delta = max - min,
      h, s, v;

  if (max == 0)
    s = 0;
  else
    s = (delta/max * 1000)/10;

  if (max == min)
    h = 0;
  else if (r == max) 
    h = (g - b) / delta; 
  else if (g == max)
    h = 2 + (b - r) / delta; 
  else if (b == max)
    h = 4 + (r - g) / delta;

  h = Math.min(h * 60, 360);

  if (h < 0) 
    h += 360;

  v = ((max / 255) * 1000) / 10;

  return [h, s, v];
}

--- END ---
--- FUNCTION SOURCE (Color.setValues) id{55,0} ---
(space, vals) {
   var spaces = {
      "rgb": ["red", "green", "blue"],
      "hsl": ["hue", "saturation", "lightness"],
      "hsv": ["hue", "saturation", "value"],
      "cmyk": ["cyan", "magenta", "yellow", "black"]
   };

   var maxes = {
      "rgb": [255, 255, 255],
      "hsl": [360, 100, 100],
      "hsv": [360, 100, 100],
      "cmyk": [100, 100, 100, 100],
   };

   var alpha = 1;
   if (space == "alpha") {
      alpha = vals;
   }
   else if (vals.length) {
      // [10, 10, 10]
      this.values[space] = vals.slice(0, space.length);
      alpha = vals[space.length];
   }
   else if (vals[space[0]] !== undefined) {
      // {r: 10, g: 10, b: 10}
      for (var i = 0; i < space.length; i++) {
        this.values[space][i] = vals[space[i]];
      }
      alpha = vals.a;
   }
   else if (vals[spaces[space][0]] !== undefined) {
      // {red: 10, green: 10, blue: 10}
      var chans = spaces[space];
      for (var i = 0; i < space.length; i++) {
        this.values[space][i] = vals[chans[i]];
      }
      alpha = vals.alpha;
   }
   this.values.alpha = Math.max(0, Math.min(1, (alpha !== undefined ? alpha : this.values.alpha) ));
   if (space == "alpha") {
      return;
   }

   // convert to all the other color spaces
   for (var sname in spaces) {
      if (sname != space) {
         this.values[sname] = convert[space][sname](this.values[space])
      }

      // cap values
      for (var i = 0; i < sname.length; i++) {
         var capped = Math.max(0, Math.min(maxes[sname][i], this.values[sname][i]));
         this.values[sname][i] = Math.round(capped);
      }
   }
   return true;
}

--- END ---
[deoptimizing (DEOPT eager): begin 0xb88c305fb71 Color.setValues (opt #55) @55, FP to SP delta: 136]
            Deferred TaggedToI: NaN
  translating Color.setValues => node=199, height=80
    0x7fffb1037310: [top + 128] <- 0x2d33a616cb79 ; [sp + 168] 0x2d33a616cb79 <JS Object>
    0x7fffb1037308: [top + 120] <- 0x1844bd2884a1 ; [sp + 160] 0x1844bd2884a1 <String[3]: rgb>
    0x7fffb1037300: [top + 112] <- 0x2d33a616cd01 ; [sp + 152] 0x2d33a616cd01 <JS Array[3]>
    0x7fffb10372f8: [top + 104] <- 0x3eff7e3fcebd ; caller's pc
    0x7fffb10372f0: [top + 96] <- 0x7fffb1037330 ; caller's fp
    0x7fffb10372e8: [top + 88] <- 0x2a9f4295dcb1; context
    0x7fffb10372e0: [top + 80] <- 0xb88c305fb71; function
    0x7fffb10372d8: [top + 72] <- 0x2d33a616ddf1 ; [sp + 104] 0x2d33a616ddf1 <an Object with map 0x20e13f435511>
    0x7fffb10372d0: [top + 64] <- 0x2d33a616dea9 ; [sp + 96] 0x2d33a616dea9 <an Object with map 0x20e13f435511>
    0x7fffb10372c8: [top + 56] <- 0x2a9f42904121 <undefined> ; literal
    0x7fffb10372c0: [top + 48] <- 0x2a9f42904121 <undefined> ; literal
    0x7fffb10372b8: [top + 40] <- 0x2a9f42904121 <undefined> ; literal
    0x7fffb10372b0: [top + 32] <- 0x2a9f42904121 <undefined> ; literal
    0x7fffb10372a8: [top + 24] <- 0x2a9f42904121 <undefined> ; literal
    0x7fffb10372a0: [top + 16] <- 0x2d33a616cb99 ; rbx 0x2d33a616cb99 <an Object with map 0x20e13f43a5c9>
    0x7fffb1037298: [top + 8] <- 0x1844bd2884a1 ; [sp + 160] 0x1844bd2884a1 <String[3]: rgb>
    0x7fffb1037290: [top + 0] <- 0x2d33a616df61 ; rax 0x2d33a616df61 <JS Array[3]>
[deoptimizing (eager): end 0xb88c305fb71 Color.setValues @55 => node=199, pc=0x3eff7e3f42a5, state=TOS_REG, alignment=no padding, took 0.035 ms]
--- FUNCTION SOURCE () id{56,0} ---
(arg) {
      if (typeof arg == "number")
        arg = Array.prototype.slice.call(arguments);
      
      var val = conversions[func](arg);
      if (typeof val == "string" || val === undefined)
        return val; // keyword

      for (var i = 0; i < val.length; i++)
        val[i] = Math.round(val[i]);
      return val;
    }

--- END ---
--- FUNCTION SOURCE (Color.setValues) id{57,0} ---
(space, vals) {
   var spaces = {
      "rgb": ["red", "green", "blue"],
      "hsl": ["hue", "saturation", "lightness"],
      "hsv": ["hue", "saturation", "value"],
      "cmyk": ["cyan", "magenta", "yellow", "black"]
   };

   var maxes = {
      "rgb": [255, 255, 255],
      "hsl": [360, 100, 100],
      "hsv": [360, 100, 100],
      "cmyk": [100, 100, 100, 100],
   };

   var alpha = 1;
   if (space == "alpha") {
      alpha = vals;
   }
   else if (vals.length) {
      // [10, 10, 10]
      this.values[space] = vals.slice(0, space.length);
      alpha = vals[space.length];
   }
   else if (vals[space[0]] !== undefined) {
      // {r: 10, g: 10, b: 10}
      for (var i = 0; i < space.length; i++) {
        this.values[space][i] = vals[space[i]];
      }
      alpha = vals.a;
   }
   else if (vals[spaces[space][0]] !== undefined) {
      // {red: 10, green: 10, blue: 10}
      var chans = spaces[space];
      for (var i = 0; i < space.length; i++) {
        this.values[space][i] = vals[chans[i]];
      }
      alpha = vals.alpha;
   }
   this.values.alpha = Math.max(0, Math.min(1, (alpha !== undefined ? alpha : this.values.alpha) ));
   if (space == "alpha") {
      return;
   }

   // convert to all the other color spaces
   for (var sname in spaces) {
      if (sname != space) {
         this.values[sname] = convert[space][sname](this.values[space])
      }

      // cap values
      for (var i = 0; i < sname.length; i++) {
         var capped = Math.max(0, Math.min(maxes[sname][i], this.values[sname][i]));
         this.values[sname][i] = Math.round(capped);
      }
   }
   return true;
}

--- END ---
[deoptimizing (DEOPT eager): begin 0xb88c305fb71 Color.setValues (opt #57) @55, FP to SP delta: 136]
            Deferred TaggedToI: NaN
  translating Color.setValues => node=199, height=80
    0x7fffb1037310: [top + 128] <- 0x2d33a70baed1 ; [sp + 168] 0x2d33a70baed1 <JS Object>
    0x7fffb1037308: [top + 120] <- 0x1844bd2884a1 ; [sp + 160] 0x1844bd2884a1 <String[3]: rgb>
    0x7fffb1037300: [top + 112] <- 0x2d33a70bb059 ; [sp + 152] 0x2d33a70bb059 <JS Array[3]>
    0x7fffb10372f8: [top + 104] <- 0x3eff7e3fcebd ; caller's pc
    0x7fffb10372f0: [top + 96] <- 0x7fffb1037330 ; caller's fp
    0x7fffb10372e8: [top + 88] <- 0x2a9f4295dcb1; context
    0x7fffb10372e0: [top + 80] <- 0xb88c305fb71; function
    0x7fffb10372d8: [top + 72] <- 0x2d33a70bc149 ; [sp + 104] 0x2d33a70bc149 <an Object with map 0x20e13f435511>
    0x7fffb10372d0: [top + 64] <- 0x2d33a70bc201 ; [sp + 96] 0x2d33a70bc201 <an Object with map 0x20e13f435511>
    0x7fffb10372c8: [top + 56] <- 0x2a9f42904121 <undefined> ; literal
    0x7fffb10372c0: [top + 48] <- 0x2a9f42904121 <undefined> ; literal
    0x7fffb10372b8: [top + 40] <- 0x2a9f42904121 <undefined> ; literal
    0x7fffb10372b0: [top + 32] <- 0x2a9f42904121 <undefined> ; literal
    0x7fffb10372a8: [top + 24] <- 0x2a9f42904121 <undefined> ; literal
    0x7fffb10372a0: [top + 16] <- 0x2d33a70baef1 ; rbx 0x2d33a70baef1 <an Object with map 0x20e13f43a5c9>
    0x7fffb1037298: [top + 8] <- 0x1844bd2884a1 ; [sp + 160] 0x1844bd2884a1 <String[3]: rgb>
    0x7fffb1037290: [top + 0] <- 0x2d33a70bc2b9 ; rax 0x2d33a70bc2b9 <JS Array[3]>
[deoptimizing (eager): end 0xb88c305fb71 Color.setValues @55 => node=199, pc=0x3eff7e3f42a5, state=TOS_REG, alignment=no padding, took 0.033 ms]
--- FUNCTION SOURCE (map) id{58,0} ---
(a,b){
if((this==null)&&!(%_IsUndetectableObject(this)))throw MakeTypeError('called_on_null_or_undefined',["Array.prototype.map"]);
var c=ToObject(this);
var d=(c.length>>>0);
if(!(%_ClassOf(a)==='Function')){
throw MakeTypeError('called_non_callable',[a]);
}
if((b==null)){
b=%GetDefaultReceiver(a)||b;
}else if(!(%_IsSpecObject(b))&&%IsSloppyModeFunction(a)){
b=ToObject(b);
}
var g=new $Array();
var h=new InternalArray(d);
var i=%_DebugCallbackSupportsStepping(a);
for(var j=0;j<d;j++){
if(j in c){
var k=c[j];
if(i)%DebugPrepareStepInIfStepping(a);
h[j]=%_CallFunction(b,k,j,c,a);
}
}
%MoveArrayContents(h,g);
return g;
}

--- END ---
--- FUNCTION SOURCE (Color.setValues) id{59,0} ---
(space, vals) {
   var spaces = {
      "rgb": ["red", "green", "blue"],
      "hsl": ["hue", "saturation", "lightness"],
      "hsv": ["hue", "saturation", "value"],
      "cmyk": ["cyan", "magenta", "yellow", "black"]
   };

   var maxes = {
      "rgb": [255, 255, 255],
      "hsl": [360, 100, 100],
      "hsv": [360, 100, 100],
      "cmyk": [100, 100, 100, 100],
   };

   var alpha = 1;
   if (space == "alpha") {
      alpha = vals;
   }
   else if (vals.length) {
      // [10, 10, 10]
      this.values[space] = vals.slice(0, space.length);
      alpha = vals[space.length];
   }
   else if (vals[space[0]] !== undefined) {
      // {r: 10, g: 10, b: 10}
      for (var i = 0; i < space.length; i++) {
        this.values[space][i] = vals[space[i]];
      }
      alpha = vals.a;
   }
   else if (vals[spaces[space][0]] !== undefined) {
      // {red: 10, green: 10, blue: 10}
      var chans = spaces[space];
      for (var i = 0; i < space.length; i++) {
        this.values[space][i] = vals[chans[i]];
      }
      alpha = vals.alpha;
   }
   this.values.alpha = Math.max(0, Math.min(1, (alpha !== undefined ? alpha : this.values.alpha) ));
   if (space == "alpha") {
      return;
   }

   // convert to all the other color spaces
   for (var sname in spaces) {
      if (sname != space) {
         this.values[sname] = convert[space][sname](this.values[space])
      }

      // cap values
      for (var i = 0; i < sname.length; i++) {
         var capped = Math.max(0, Math.min(maxes[sname][i], this.values[sname][i]));
         this.values[sname][i] = Math.round(capped);
      }
   }
   return true;
}

--- END ---
[deoptimizing (DEOPT eager): begin 0xb88c305fb71 Color.setValues (opt #59) @55, FP to SP delta: 136]
            Deferred TaggedToI: NaN
  translating Color.setValues => node=199, height=80
    0x7fffb1037310: [top + 128] <- 0x2d33a71ea7c9 ; [sp + 168] 0x2d33a71ea7c9 <JS Object>
    0x7fffb1037308: [top + 120] <- 0x1844bd2884a1 ; [sp + 160] 0x1844bd2884a1 <String[3]: rgb>
    0x7fffb1037300: [top + 112] <- 0x2d33a71ea951 ; [sp + 152] 0x2d33a71ea951 <JS Array[3]>
    0x7fffb10372f8: [top + 104] <- 0x3eff7e3fcebd ; caller's pc
    0x7fffb10372f0: [top + 96] <- 0x7fffb1037330 ; caller's fp
    0x7fffb10372e8: [top + 88] <- 0x2a9f4295dcb1; context
    0x7fffb10372e0: [top + 80] <- 0xb88c305fb71; function
    0x7fffb10372d8: [top + 72] <- 0x2d33a71eba59 ; [sp + 104] 0x2d33a71eba59 <an Object with map 0x20e13f435511>
    0x7fffb10372d0: [top + 64] <- 0x2d33a71ebb11 ; [sp + 96] 0x2d33a71ebb11 <an Object with map 0x20e13f435511>
    0x7fffb10372c8: [top + 56] <- 0x2a9f42904121 <undefined> ; literal
    0x7fffb10372c0: [top + 48] <- 0x2a9f42904121 <undefined> ; literal
    0x7fffb10372b8: [top + 40] <- 0x2a9f42904121 <undefined> ; literal
    0x7fffb10372b0: [top + 32] <- 0x2a9f42904121 <undefined> ; literal
    0x7fffb10372a8: [top + 24] <- 0x2a9f42904121 <undefined> ; literal
    0x7fffb10372a0: [top + 16] <- 0x2d33a71ea7e9 ; rbx 0x2d33a71ea7e9 <an Object with map 0x20e13f43a5c9>
    0x7fffb1037298: [top + 8] <- 0x1844bd2884a1 ; [sp + 160] 0x1844bd2884a1 <String[3]: rgb>
    0x7fffb1037290: [top + 0] <- 0x2d33a71ebbc9 ; rax 0x2d33a71ebbc9 <JS Array[3]>
[deoptimizing (eager): end 0xb88c305fb71 Color.setValues @55 => node=199, pc=0x3eff7e3f42a5, state=TOS_REG, alignment=no padding, took 0.034 ms]
--- FUNCTION SOURCE (Color.setValues) id{60,0} ---
(space, vals) {
   var spaces = {
      "rgb": ["red", "green", "blue"],
      "hsl": ["hue", "saturation", "lightness"],
      "hsv": ["hue", "saturation", "value"],
      "cmyk": ["cyan", "magenta", "yellow", "black"]
   };

   var maxes = {
      "rgb": [255, 255, 255],
      "hsl": [360, 100, 100],
      "hsv": [360, 100, 100],
      "cmyk": [100, 100, 100, 100],
   };

   var alpha = 1;
   if (space == "alpha") {
      alpha = vals;
   }
   else if (vals.length) {
      // [10, 10, 10]
      this.values[space] = vals.slice(0, space.length);
      alpha = vals[space.length];
   }
   else if (vals[space[0]] !== undefined) {
      // {r: 10, g: 10, b: 10}
      for (var i = 0; i < space.length; i++) {
        this.values[space][i] = vals[space[i]];
      }
      alpha = vals.a;
   }
   else if (vals[spaces[space][0]] !== undefined) {
      // {red: 10, green: 10, blue: 10}
      var chans = spaces[space];
      for (var i = 0; i < space.length; i++) {
        this.values[space][i] = vals[chans[i]];
      }
      alpha = vals.alpha;
   }
   this.values.alpha = Math.max(0, Math.min(1, (alpha !== undefined ? alpha : this.values.alpha) ));
   if (space == "alpha") {
      return;
   }

   // convert to all the other color spaces
   for (var sname in spaces) {
      if (sname != space) {
         this.values[sname] = convert[space][sname](this.values[space])
      }

      // cap values
      for (var i = 0; i < sname.length; i++) {
         var capped = Math.max(0, Math.min(maxes[sname][i], this.values[sname][i]));
         this.values[sname][i] = Math.round(capped);
      }
   }
   return true;
}

--- END ---
[deoptimizing (DEOPT eager): begin 0xb88c305fb71 Color.setValues (opt #60) @55, FP to SP delta: 136]
            Deferred TaggedToI: NaN
  translating Color.setValues => node=199, height=80
    0x7fffb1037310: [top + 128] <- 0x2d33a6147021 ; [sp + 168] 0x2d33a6147021 <JS Object>
    0x7fffb1037308: [top + 120] <- 0x1844bd2884a1 ; [sp + 160] 0x1844bd2884a1 <String[3]: rgb>
    0x7fffb1037300: [top + 112] <- 0x2d33a61471a9 ; [sp + 152] 0x2d33a61471a9 <JS Array[3]>
    0x7fffb10372f8: [top + 104] <- 0x3eff7e3fcebd ; caller's pc
    0x7fffb10372f0: [top + 96] <- 0x7fffb1037330 ; caller's fp
    0x7fffb10372e8: [top + 88] <- 0x2a9f4295dcb1; context
    0x7fffb10372e0: [top + 80] <- 0xb88c305fb71; function
    0x7fffb10372d8: [top + 72] <- 0x2d33a61482b1 ; [sp + 104] 0x2d33a61482b1 <an Object with map 0x20e13f435511>
    0x7fffb10372d0: [top + 64] <- 0x2d33a6148369 ; [sp + 96] 0x2d33a6148369 <an Object with map 0x20e13f435511>
    0x7fffb10372c8: [top + 56] <- 0x2a9f42904121 <undefined> ; literal
    0x7fffb10372c0: [top + 48] <- 0x2a9f42904121 <undefined> ; literal
    0x7fffb10372b8: [top + 40] <- 0x2a9f42904121 <undefined> ; literal
    0x7fffb10372b0: [top + 32] <- 0x2a9f42904121 <undefined> ; literal
    0x7fffb10372a8: [top + 24] <- 0x2a9f42904121 <undefined> ; literal
    0x7fffb10372a0: [top + 16] <- 0x2d33a6147041 ; rbx 0x2d33a6147041 <an Object with map 0x20e13f43a5c9>
    0x7fffb1037298: [top + 8] <- 0x1844bd2884a1 ; [sp + 160] 0x1844bd2884a1 <String[3]: rgb>
    0x7fffb1037290: [top + 0] <- 0x2d33a6148421 ; rax 0x2d33a6148421 <JS Array[3]>
[deoptimizing (eager): end 0xb88c305fb71 Color.setValues @55 => node=199, pc=0x3eff7e3f42a5, state=TOS_REG, alignment=no padding, took 0.032 ms]
--- FUNCTION SOURCE (Color.setValues) id{61,0} ---
(space, vals) {
   var spaces = {
      "rgb": ["red", "green", "blue"],
      "hsl": ["hue", "saturation", "lightness"],
      "hsv": ["hue", "saturation", "value"],
      "cmyk": ["cyan", "magenta", "yellow", "black"]
   };

   var maxes = {
      "rgb": [255, 255, 255],
      "hsl": [360, 100, 100],
      "hsv": [360, 100, 100],
      "cmyk": [100, 100, 100, 100],
   };

   var alpha = 1;
   if (space == "alpha") {
      alpha = vals;
   }
   else if (vals.length) {
      // [10, 10, 10]
      this.values[space] = vals.slice(0, space.length);
      alpha = vals[space.length];
   }
   else if (vals[space[0]] !== undefined) {
      // {r: 10, g: 10, b: 10}
      for (var i = 0; i < space.length; i++) {
        this.values[space][i] = vals[space[i]];
      }
      alpha = vals.a;
   }
   else if (vals[spaces[space][0]] !== undefined) {
      // {red: 10, green: 10, blue: 10}
      var chans = spaces[space];
      for (var i = 0; i < space.length; i++) {
        this.values[space][i] = vals[chans[i]];
      }
      alpha = vals.alpha;
   }
   this.values.alpha = Math.max(0, Math.min(1, (alpha !== undefined ? alpha : this.values.alpha) ));
   if (space == "alpha") {
      return;
   }

   // convert to all the other color spaces
   for (var sname in spaces) {
      if (sname != space) {
         this.values[sname] = convert[space][sname](this.values[space])
      }

      // cap values
      for (var i = 0; i < sname.length; i++) {
         var capped = Math.max(0, Math.min(maxes[sname][i], this.values[sname][i]));
         this.values[sname][i] = Math.round(capped);
      }
   }
   return true;
}

--- END ---
[deoptimizing (DEOPT eager): begin 0xb88c305fb71 Color.setValues (opt #61) @55, FP to SP delta: 136]
            Deferred TaggedToI: NaN
  translating Color.setValues => node=199, height=80
    0x7fffb1037310: [top + 128] <- 0x2d33a7080621 ; [sp + 168] 0x2d33a7080621 <JS Object>
    0x7fffb1037308: [top + 120] <- 0x1844bd2884a1 ; [sp + 160] 0x1844bd2884a1 <String[3]: rgb>
    0x7fffb1037300: [top + 112] <- 0x2d33a70807a9 ; [sp + 152] 0x2d33a70807a9 <JS Array[3]>
    0x7fffb10372f8: [top + 104] <- 0x3eff7e3fcebd ; caller's pc
    0x7fffb10372f0: [top + 96] <- 0x7fffb1037330 ; caller's fp
    0x7fffb10372e8: [top + 88] <- 0x2a9f4295dcb1; context
    0x7fffb10372e0: [top + 80] <- 0xb88c305fb71; function
    0x7fffb10372d8: [top + 72] <- 0x2d33a70818b1 ; [sp + 104] 0x2d33a70818b1 <an Object with map 0x20e13f435511>
    0x7fffb10372d0: [top + 64] <- 0x2d33a7081969 ; [sp + 96] 0x2d33a7081969 <an Object with map 0x20e13f435511>
    0x7fffb10372c8: [top + 56] <- 0x2a9f42904121 <undefined> ; literal
    0x7fffb10372c0: [top + 48] <- 0x2a9f42904121 <undefined> ; literal
    0x7fffb10372b8: [top + 40] <- 0x2a9f42904121 <undefined> ; literal
    0x7fffb10372b0: [top + 32] <- 0x2a9f42904121 <undefined> ; literal
    0x7fffb10372a8: [top + 24] <- 0x2a9f42904121 <undefined> ; literal
    0x7fffb10372a0: [top + 16] <- 0x2d33a7080641 ; rbx 0x2d33a7080641 <an Object with map 0x20e13f43a5c9>
    0x7fffb1037298: [top + 8] <- 0x1844bd2884a1 ; [sp + 160] 0x1844bd2884a1 <String[3]: rgb>
    0x7fffb1037290: [top + 0] <- 0x2d33a7081a21 ; rax 0x2d33a7081a21 <JS Array[3]>
[deoptimizing (eager): end 0xb88c305fb71 Color.setValues @55 => node=199, pc=0x3eff7e3f42a5, state=TOS_REG, alignment=no padding, took 0.035 ms]
--- FUNCTION SOURCE (Color.setValues) id{62,0} ---
(space, vals) {
   var spaces = {
      "rgb": ["red", "green", "blue"],
      "hsl": ["hue", "saturation", "lightness"],
      "hsv": ["hue", "saturation", "value"],
      "cmyk": ["cyan", "magenta", "yellow", "black"]
   };

   var maxes = {
      "rgb": [255, 255, 255],
      "hsl": [360, 100, 100],
      "hsv": [360, 100, 100],
      "cmyk": [100, 100, 100, 100],
   };

   var alpha = 1;
   if (space == "alpha") {
      alpha = vals;
   }
   else if (vals.length) {
      // [10, 10, 10]
      this.values[space] = vals.slice(0, space.length);
      alpha = vals[space.length];
   }
   else if (vals[space[0]] !== undefined) {
      // {r: 10, g: 10, b: 10}
      for (var i = 0; i < space.length; i++) {
        this.values[space][i] = vals[space[i]];
      }
      alpha = vals.a;
   }
   else if (vals[spaces[space][0]] !== undefined) {
      // {red: 10, green: 10, blue: 10}
      var chans = spaces[space];
      for (var i = 0; i < space.length; i++) {
        this.values[space][i] = vals[chans[i]];
      }
      alpha = vals.alpha;
   }
   this.values.alpha = Math.max(0, Math.min(1, (alpha !== undefined ? alpha : this.values.alpha) ));
   if (space == "alpha") {
      return;
   }

   // convert to all the other color spaces
   for (var sname in spaces) {
      if (sname != space) {
         this.values[sname] = convert[space][sname](this.values[space])
      }

      // cap values
      for (var i = 0; i < sname.length; i++) {
         var capped = Math.max(0, Math.min(maxes[sname][i], this.values[sname][i]));
         this.values[sname][i] = Math.round(capped);
      }
   }
   return true;
}

--- END ---
[deoptimizing (DEOPT eager): begin 0xb88c305fb71 Color.setValues (opt #62) @55, FP to SP delta: 136]
            Deferred TaggedToI: NaN
  translating Color.setValues => node=199, height=80
    0x7fffb1037310: [top + 128] <- 0x2d33a71ba5c1 ; [sp + 168] 0x2d33a71ba5c1 <JS Object>
    0x7fffb1037308: [top + 120] <- 0x1844bd2884a1 ; [sp + 160] 0x1844bd2884a1 <String[3]: rgb>
    0x7fffb1037300: [top + 112] <- 0x2d33a71ba749 ; [sp + 152] 0x2d33a71ba749 <JS Array[3]>
    0x7fffb10372f8: [top + 104] <- 0x3eff7e3fcebd ; caller's pc
    0x7fffb10372f0: [top + 96] <- 0x7fffb1037330 ; caller's fp
    0x7fffb10372e8: [top + 88] <- 0x2a9f4295dcb1; context
    0x7fffb10372e0: [top + 80] <- 0xb88c305fb71; function
    0x7fffb10372d8: [top + 72] <- 0x2d33a71bb851 ; [sp + 104] 0x2d33a71bb851 <an Object with map 0x20e13f435511>
    0x7fffb10372d0: [top + 64] <- 0x2d33a71bb909 ; [sp + 96] 0x2d33a71bb909 <an Object with map 0x20e13f435511>
    0x7fffb10372c8: [top + 56] <- 0x2a9f42904121 <undefined> ; literal
    0x7fffb10372c0: [top + 48] <- 0x2a9f42904121 <undefined> ; literal
    0x7fffb10372b8: [top + 40] <- 0x2a9f42904121 <undefined> ; literal
    0x7fffb10372b0: [top + 32] <- 0x2a9f42904121 <undefined> ; literal
    0x7fffb10372a8: [top + 24] <- 0x2a9f42904121 <undefined> ; literal
    0x7fffb10372a0: [top + 16] <- 0x2d33a71ba5e1 ; rbx 0x2d33a71ba5e1 <an Object with map 0x20e13f43a5c9>
    0x7fffb1037298: [top + 8] <- 0x1844bd2884a1 ; [sp + 160] 0x1844bd2884a1 <String[3]: rgb>
    0x7fffb1037290: [top + 0] <- 0x2d33a71bb9c1 ; rax 0x2d33a71bb9c1 <JS Array[3]>
[deoptimizing (eager): end 0xb88c305fb71 Color.setValues @55 => node=199, pc=0x3eff7e3f42a5, state=TOS_REG, alignment=no padding, took 0.033 ms]
--- FUNCTION SOURCE (Color.setValues) id{63,0} ---
(space, vals) {
   var spaces = {
      "rgb": ["red", "green", "blue"],
      "hsl": ["hue", "saturation", "lightness"],
      "hsv": ["hue", "saturation", "value"],
      "cmyk": ["cyan", "magenta", "yellow", "black"]
   };

   var maxes = {
      "rgb": [255, 255, 255],
      "hsl": [360, 100, 100],
      "hsv": [360, 100, 100],
      "cmyk": [100, 100, 100, 100],
   };

   var alpha = 1;
   if (space == "alpha") {
      alpha = vals;
   }
   else if (vals.length) {
      // [10, 10, 10]
      this.values[space] = vals.slice(0, space.length);
      alpha = vals[space.length];
   }
   else if (vals[space[0]] !== undefined) {
      // {r: 10, g: 10, b: 10}
      for (var i = 0; i < space.length; i++) {
        this.values[space][i] = vals[space[i]];
      }
      alpha = vals.a;
   }
   else if (vals[spaces[space][0]] !== undefined) {
      // {red: 10, green: 10, blue: 10}
      var chans = spaces[space];
      for (var i = 0; i < space.length; i++) {
        this.values[space][i] = vals[chans[i]];
      }
      alpha = vals.alpha;
   }
   this.values.alpha = Math.max(0, Math.min(1, (alpha !== undefined ? alpha : this.values.alpha) ));
   if (space == "alpha") {
      return;
   }

   // convert to all the other color spaces
   for (var sname in spaces) {
      if (sname != space) {
         this.values[sname] = convert[space][sname](this.values[space])
      }

      // cap values
      for (var i = 0; i < sname.length; i++) {
         var capped = Math.max(0, Math.min(maxes[sname][i], this.values[sname][i]));
         this.values[sname][i] = Math.round(capped);
      }
   }
   return true;
}

--- END ---
[deoptimizing (DEOPT eager): begin 0xb88c305fb71 Color.setValues (opt #63) @55, FP to SP delta: 136]
            Deferred TaggedToI: NaN
  translating Color.setValues => node=199, height=80
    0x7fffb1037310: [top + 128] <- 0x2d33a60fd961 ; [sp + 168] 0x2d33a60fd961 <JS Object>
    0x7fffb1037308: [top + 120] <- 0x1844bd2884a1 ; [sp + 160] 0x1844bd2884a1 <String[3]: rgb>
    0x7fffb1037300: [top + 112] <- 0x2d33a60fdae9 ; [sp + 152] 0x2d33a60fdae9 <JS Array[3]>
    0x7fffb10372f8: [top + 104] <- 0x3eff7e3fcebd ; caller's pc
    0x7fffb10372f0: [top + 96] <- 0x7fffb1037330 ; caller's fp
    0x7fffb10372e8: [top + 88] <- 0x2a9f4295dcb1; context
    0x7fffb10372e0: [top + 80] <- 0xb88c305fb71; function
    0x7fffb10372d8: [top + 72] <- 0x2d33a60febf1 ; [sp + 104] 0x2d33a60febf1 <an Object with map 0x20e13f435511>
    0x7fffb10372d0: [top + 64] <- 0x2d33a60feca9 ; [sp + 96] 0x2d33a60feca9 <an Object with map 0x20e13f435511>
    0x7fffb10372c8: [top + 56] <- 0x2a9f42904121 <undefined> ; literal
    0x7fffb10372c0: [top + 48] <- 0x2a9f42904121 <undefined> ; literal
    0x7fffb10372b8: [top + 40] <- 0x2a9f42904121 <undefined> ; literal
    0x7fffb10372b0: [top + 32] <- 0x2a9f42904121 <undefined> ; literal
    0x7fffb10372a8: [top + 24] <- 0x2a9f42904121 <undefined> ; literal
    0x7fffb10372a0: [top + 16] <- 0x2d33a60fd981 ; rbx 0x2d33a60fd981 <an Object with map 0x20e13f43a5c9>
    0x7fffb1037298: [top + 8] <- 0x1844bd2884a1 ; [sp + 160] 0x1844bd2884a1 <String[3]: rgb>
    0x7fffb1037290: [top + 0] <- 0x2d33a60fed61 ; rax 0x2d33a60fed61 <JS Array[3]>
[deoptimizing (eager): end 0xb88c305fb71 Color.setValues @55 => node=199, pc=0x3eff7e3f42a5, state=TOS_REG, alignment=no padding, took 0.033 ms]
--- FUNCTION SOURCE (Color.setValues) id{64,0} ---
(space, vals) {
   var spaces = {
      "rgb": ["red", "green", "blue"],
      "hsl": ["hue", "saturation", "lightness"],
      "hsv": ["hue", "saturation", "value"],
      "cmyk": ["cyan", "magenta", "yellow", "black"]
   };

   var maxes = {
      "rgb": [255, 255, 255],
      "hsl": [360, 100, 100],
      "hsv": [360, 100, 100],
      "cmyk": [100, 100, 100, 100],
   };

   var alpha = 1;
   if (space == "alpha") {
      alpha = vals;
   }
   else if (vals.length) {
      // [10, 10, 10]
      this.values[space] = vals.slice(0, space.length);
      alpha = vals[space.length];
   }
   else if (vals[space[0]] !== undefined) {
      // {r: 10, g: 10, b: 10}
      for (var i = 0; i < space.length; i++) {
        this.values[space][i] = vals[space[i]];
      }
      alpha = vals.a;
   }
   else if (vals[spaces[space][0]] !== undefined) {
      // {red: 10, green: 10, blue: 10}
      var chans = spaces[space];
      for (var i = 0; i < space.length; i++) {
        this.values[space][i] = vals[chans[i]];
      }
      alpha = vals.alpha;
   }
   this.values.alpha = Math.max(0, Math.min(1, (alpha !== undefined ? alpha : this.values.alpha) ));
   if (space == "alpha") {
      return;
   }

   // convert to all the other color spaces
   for (var sname in spaces) {
      if (sname != space) {
         this.values[sname] = convert[space][sname](this.values[space])
      }

      // cap values
      for (var i = 0; i < sname.length; i++) {
         var capped = Math.max(0, Math.min(maxes[sname][i], this.values[sname][i]));
         this.values[sname][i] = Math.round(capped);
      }
   }
   return true;
}

--- END ---
[deoptimizing (DEOPT eager): begin 0xb88c305fb71 Color.setValues (opt #64) @55, FP to SP delta: 136]
            Deferred TaggedToI: NaN
  translating Color.setValues => node=199, height=80
    0x7fffb1037310: [top + 128] <- 0x2d33a704d359 ; [sp + 168] 0x2d33a704d359 <JS Object>
    0x7fffb1037308: [top + 120] <- 0x1844bd2884a1 ; [sp + 160] 0x1844bd2884a1 <String[3]: rgb>
    0x7fffb1037300: [top + 112] <- 0x2d33a704d4e1 ; [sp + 152] 0x2d33a704d4e1 <JS Array[3]>
    0x7fffb10372f8: [top + 104] <- 0x3eff7e3fcebd ; caller's pc
    0x7fffb10372f0: [top + 96] <- 0x7fffb1037330 ; caller's fp
    0x7fffb10372e8: [top + 88] <- 0x2a9f4295dcb1; context
    0x7fffb10372e0: [top + 80] <- 0xb88c305fb71; function
    0x7fffb10372d8: [top + 72] <- 0x2d33a704e5e9 ; [sp + 104] 0x2d33a704e5e9 <an Object with map 0x20e13f435511>
    0x7fffb10372d0: [top + 64] <- 0x2d33a704e6a1 ; [sp + 96] 0x2d33a704e6a1 <an Object with map 0x20e13f435511>
    0x7fffb10372c8: [top + 56] <- 0x2a9f42904121 <undefined> ; literal
    0x7fffb10372c0: [top + 48] <- 0x2a9f42904121 <undefined> ; literal
    0x7fffb10372b8: [top + 40] <- 0x2a9f42904121 <undefined> ; literal
    0x7fffb10372b0: [top + 32] <- 0x2a9f42904121 <undefined> ; literal
    0x7fffb10372a8: [top + 24] <- 0x2a9f42904121 <undefined> ; literal
    0x7fffb10372a0: [top + 16] <- 0x2d33a704d379 ; rbx 0x2d33a704d379 <an Object with map 0x20e13f43a5c9>
    0x7fffb1037298: [top + 8] <- 0x1844bd2884a1 ; [sp + 160] 0x1844bd2884a1 <String[3]: rgb>
    0x7fffb1037290: [top + 0] <- 0x2d33a704e759 ; rax 0x2d33a704e759 <JS Array[3]>
[deoptimizing (eager): end 0xb88c305fb71 Color.setValues @55 => node=199, pc=0x3eff7e3f42a5, state=TOS_REG, alignment=no padding, took 0.033 ms]
--- FUNCTION SOURCE (Color.setValues) id{65,0} ---
(space, vals) {
   var spaces = {
      "rgb": ["red", "green", "blue"],
      "hsl": ["hue", "saturation", "lightness"],
      "hsv": ["hue", "saturation", "value"],
      "cmyk": ["cyan", "magenta", "yellow", "black"]
   };

   var maxes = {
      "rgb": [255, 255, 255],
      "hsl": [360, 100, 100],
      "hsv": [360, 100, 100],
      "cmyk": [100, 100, 100, 100],
   };

   var alpha = 1;
   if (space == "alpha") {
      alpha = vals;
   }
   else if (vals.length) {
      // [10, 10, 10]
      this.values[space] = vals.slice(0, space.length);
      alpha = vals[space.length];
   }
   else if (vals[space[0]] !== undefined) {
      // {r: 10, g: 10, b: 10}
      for (var i = 0; i < space.length; i++) {
        this.values[space][i] = vals[space[i]];
      }
      alpha = vals.a;
   }
   else if (vals[spaces[space][0]] !== undefined) {
      // {red: 10, green: 10, blue: 10}
      var chans = spaces[space];
      for (var i = 0; i < space.length; i++) {
        this.values[space][i] = vals[chans[i]];
      }
      alpha = vals.alpha;
   }
   this.values.alpha = Math.max(0, Math.min(1, (alpha !== undefined ? alpha : this.values.alpha) ));
   if (space == "alpha") {
      return;
   }

   // convert to all the other color spaces
   for (var sname in spaces) {
      if (sname != space) {
         this.values[sname] = convert[space][sname](this.values[space])
      }

      // cap values
      for (var i = 0; i < sname.length; i++) {
         var capped = Math.max(0, Math.min(maxes[sname][i], this.values[sname][i]));
         this.values[sname][i] = Math.round(capped);
      }
   }
   return true;
}

--- END ---
[deoptimizing (DEOPT eager): begin 0xb88c305fb71 Color.setValues (opt #65) @55, FP to SP delta: 128]
            Deferred TaggedToI: NaN
  translating Color.setValues => node=199, height=80
    0x7fffb1037310: [top + 128] <- 0x2d33a7187069 ; [sp + 160] 0x2d33a7187069 <JS Object>
    0x7fffb1037308: [top + 120] <- 0x1844bd2884a1 ; [sp + 152] 0x1844bd2884a1 <String[3]: rgb>
    0x7fffb1037300: [top + 112] <- 0x2d33a71871f1 ; [sp + 144] 0x2d33a71871f1 <JS Array[3]>
    0x7fffb10372f8: [top + 104] <- 0x3eff7e3fcebd ; caller's pc
    0x7fffb10372f0: [top + 96] <- 0x7fffb1037330 ; caller's fp
    0x7fffb10372e8: [top + 88] <- 0x2a9f4295dcb1; context
    0x7fffb10372e0: [top + 80] <- 0xb88c305fb71; function
    0x7fffb10372d8: [top + 72] <- 0x2d33a71882f9 ; [sp + 96] 0x2d33a71882f9 <an Object with map 0x20e13f435511>
    0x7fffb10372d0: [top + 64] <- 0x2d33a71883b1 ; [sp + 88] 0x2d33a71883b1 <an Object with map 0x20e13f435511>
    0x7fffb10372c8: [top + 56] <- 0x2a9f42904121 <undefined> ; literal
    0x7fffb10372c0: [top + 48] <- 0x2a9f42904121 <undefined> ; literal
    0x7fffb10372b8: [top + 40] <- 0x2a9f42904121 <undefined> ; literal
    0x7fffb10372b0: [top + 32] <- 0x2a9f42904121 <undefined> ; literal
    0x7fffb10372a8: [top + 24] <- 0x2a9f42904121 <undefined> ; literal
    0x7fffb10372a0: [top + 16] <- 0x2d33a7187089 ; rbx 0x2d33a7187089 <an Object with map 0x20e13f43a5c9>
    0x7fffb1037298: [top + 8] <- 0x1844bd2884a1 ; [sp + 152] 0x1844bd2884a1 <String[3]: rgb>
    0x7fffb1037290: [top + 0] <- 0x2d33a7188469 ; rax 0x2d33a7188469 <JS Array[3]>
[deoptimizing (eager): end 0xb88c305fb71 Color.setValues @55 => node=199, pc=0x3eff7e3f42a5, state=TOS_REG, alignment=no padding, took 0.032 ms]
--- FUNCTION SOURCE (Color.setValues) id{66,0} ---
(space, vals) {
   var spaces = {
      "rgb": ["red", "green", "blue"],
      "hsl": ["hue", "saturation", "lightness"],
      "hsv": ["hue", "saturation", "value"],
      "cmyk": ["cyan", "magenta", "yellow", "black"]
   };

   var maxes = {
      "rgb": [255, 255, 255],
      "hsl": [360, 100, 100],
      "hsv": [360, 100, 100],
      "cmyk": [100, 100, 100, 100],
   };

   var alpha = 1;
   if (space == "alpha") {
      alpha = vals;
   }
   else if (vals.length) {
      // [10, 10, 10]
      this.values[space] = vals.slice(0, space.length);
      alpha = vals[space.length];
   }
   else if (vals[space[0]] !== undefined) {
      // {r: 10, g: 10, b: 10}
      for (var i = 0; i < space.length; i++) {
        this.values[space][i] = vals[space[i]];
      }
      alpha = vals.a;
   }
   else if (vals[spaces[space][0]] !== undefined) {
      // {red: 10, green: 10, blue: 10}
      var chans = spaces[space];
      for (var i = 0; i < space.length; i++) {
        this.values[space][i] = vals[chans[i]];
      }
      alpha = vals.alpha;
   }
   this.values.alpha = Math.max(0, Math.min(1, (alpha !== undefined ? alpha : this.values.alpha) ));
   if (space == "alpha") {
      return;
   }

   // convert to all the other color spaces
   for (var sname in spaces) {
      if (sname != space) {
         this.values[sname] = convert[space][sname](this.values[space])
      }

      // cap values
      for (var i = 0; i < sname.length; i++) {
         var capped = Math.max(0, Math.min(maxes[sname][i], this.values[sname][i]));
         this.values[sname][i] = Math.round(capped);
      }
   }
   return true;
}

--- END ---
[deoptimizing (DEOPT eager): begin 0xb88c305fb71 Color.setValues (opt #66) @55, FP to SP delta: 128]
            Deferred TaggedToI: NaN
  translating Color.setValues => node=199, height=80
    0x7fffb1037310: [top + 128] <- 0x2d33a60d8fb9 ; [sp + 160] 0x2d33a60d8fb9 <JS Object>
    0x7fffb1037308: [top + 120] <- 0x1844bd2884a1 ; [sp + 152] 0x1844bd2884a1 <String[3]: rgb>
    0x7fffb1037300: [top + 112] <- 0x2d33a60d9141 ; [sp + 144] 0x2d33a60d9141 <JS Array[3]>
    0x7fffb10372f8: [top + 104] <- 0x3eff7e3fcebd ; caller's pc
    0x7fffb10372f0: [top + 96] <- 0x7fffb1037330 ; caller's fp
    0x7fffb10372e8: [top + 88] <- 0x2a9f4295dcb1; context
    0x7fffb10372e0: [top + 80] <- 0xb88c305fb71; function
    0x7fffb10372d8: [top + 72] <- 0x2d33a60da249 ; [sp + 96] 0x2d33a60da249 <an Object with map 0x20e13f435511>
    0x7fffb10372d0: [top + 64] <- 0x2d33a60da301 ; [sp + 88] 0x2d33a60da301 <an Object with map 0x20e13f435511>
    0x7fffb10372c8: [top + 56] <- 0x2a9f42904121 <undefined> ; literal
    0x7fffb10372c0: [top + 48] <- 0x2a9f42904121 <undefined> ; literal
    0x7fffb10372b8: [top + 40] <- 0x2a9f42904121 <undefined> ; literal
    0x7fffb10372b0: [top + 32] <- 0x2a9f42904121 <undefined> ; literal
    0x7fffb10372a8: [top + 24] <- 0x2a9f42904121 <undefined> ; literal
    0x7fffb10372a0: [top + 16] <- 0x2d33a60d8fd9 ; rbx 0x2d33a60d8fd9 <an Object with map 0x20e13f43a5c9>
    0x7fffb1037298: [top + 8] <- 0x1844bd2884a1 ; [sp + 152] 0x1844bd2884a1 <String[3]: rgb>
    0x7fffb1037290: [top + 0] <- 0x2d33a60da3b9 ; rax 0x2d33a60da3b9 <JS Array[3]>
[deoptimizing (eager): end 0xb88c305fb71 Color.setValues @55 => node=199, pc=0x3eff7e3f42a5, state=TOS_REG, alignment=no padding, took 0.033 ms]
--- FUNCTION SOURCE (Rainbow.create) id{68,0} ---
(numberOfColors) {
  if (numberOfColors < 0) {
    throw 'Number of colors must be non-negative';
  } else if (typeof numberOfColors == 'undefined') {
    throw 'You must have a number of colors per rainbow cycle.';
  } else {
    var rainbow = [];
    for (var i = 0; i < numberOfColors; ++i) {
      rainbow[i] = getColor(i/numberOfColors);
    }
    return rainbow;
  }
};
--- END ---
--- FUNCTION SOURCE (GIFEncoder.removeAlphaChannel) id{69,0} ---
(data) {
  var w = this.width;
  var h = this.height;
  var pixels = new Uint8Array(w * h * 3);

  var count = 0;

  for (var i = 0; i < h; i++) {
    for (var j = 0; j < w; j++) {
      var b = (i * w * 4) + j * 4;
      pixels[count++] = data[b];
      pixels[count++] = data[b+1];
      pixels[count++] = data[b+2];
    }
  }

  return pixels;
};
--- END ---
--- FUNCTION SOURCE (Float64Array) id{70,0} ---
(a,b,c){
if(%_IsConstructCall()){
if((%_ClassOf(a)==='ArrayBuffer')){
Float64ArrayConstructByArrayBuffer(this,a,b,c);
}else if((typeof(a)==='number')||(typeof(a)==='string')||
(typeof(a)==='boolean')||(a===(void 0))){
Float64ArrayConstructByLength(this,a);
}else{
Float64ArrayConstructByArrayLike(this,a);
}
}else{
throw MakeTypeError("constructor_not_function",["Float64Array"])
}
}

--- END ---
[deoptimizing (DEOPT soft): begin 0x2a9f4292ab81 abs (opt #46) @2, FP to SP delta: 24]
            ;;; deoptimize: Insufficient type feedback for combined type of binary operation
  translating abs => node=51, height=8
    0x7fffb1037230: [top + 48] <- 0x2a9f4297f6c1 ; [sp + 48] 0x2a9f4297f6c1 <a MathConstructor with map 0xcbad5008f31>
    0x7fffb1037228: [top + 40] <- 0x2d33a70a1e09 ; [sp + 40] 0x2d33a70a1e09 <Number: -1552>
    0x7fffb1037220: [top + 32] <- 0x3eff7e44d33c ; caller's pc
    0x7fffb1037218: [top + 24] <- 0x7fffb1037298 ; caller's fp
    0x7fffb1037210: [top + 16] <- 0x2a9f42962779; context
    0x7fffb1037208: [top + 8] <- 0x2a9f4292ab81; function
    0x7fffb1037200: [top + 0] <- 0x2d33a70a1e09 ; rax 0x2d33a70a1e09 <Number: -1552>
[deoptimizing (soft): end 0x2a9f4292ab81 abs @2 => node=51, pc=0x3eff7e40951c, state=TOS_REG, alignment=no padding, took 0.022 ms]
--- FUNCTION SOURCE (abs) id{71,0} ---
(a){
if(%_IsSmi(a))return a>=0?a:-a;
a=((typeof(%IS_VAR(a))==='number')?a:NonNumberToNumber(a));
if(a===0)return 0;
return a>0?a:-a;
}

--- END ---
--- FUNCTION SOURCE (contest) id{72,0} ---
(b, g, r) {
    /*
      finds closest neuron (min dist) and updates freq
      finds best neuron (min dist-bias) and returns position
      for frequently chosen neurons, freq[i] is high and bias[i] is negative
      bias[i] = gamma * ((1 / netsize) - freq[i])
    */

    var bestd = ~(1 << 31);
    var bestbiasd = bestd;
    var bestpos = -1;
    var bestbiaspos = bestpos;

    var i, n, dist, biasdist, betafreq;
    for (i = 0; i < netsize; i++) {
      n = network[i];

      dist = Math.abs(n[0] - b) + Math.abs(n[1] - g) + Math.abs(n[2] - r);
      if (dist < bestd) {
        bestd = dist;
        bestpos = i;
      }

      biasdist = dist - ((bias[i]) >> (intbiasshift - netbiasshift));
      if (biasdist < bestbiasd) {
        bestbiasd = biasdist;
        bestbiaspos = i;
      }

      betafreq = (freq[i] >> betashift);
      freq[i] -= betafreq;
      bias[i] += (betafreq << gammashift);
    }

    freq[bestpos] += beta;
    bias[bestpos] -= betagamma;

    return bestbiaspos;
  }

--- END ---
--- FUNCTION SOURCE (alterneigh) id{73,0} ---
(radius, i, b, g, r) {
    var lo = Math.abs(i - radius);
    var hi = Math.min(i + radius, netsize);

    var j = i + 1;
    var k = i - 1;
    var m = 1;

    var p, a;
    while ((j < hi) || (k > lo)) {
      a = radpower[m++];

      if (j < hi) {
        p = network[j++];
        p[0] -= (a * (p[0] - b)) / alpharadbias;
        p[1] -= (a * (p[1] - g)) / alpharadbias;
        p[2] -= (a * (p[2] - r)) / alpharadbias;
      }

      if (k > lo) {
        p = network[k--];
        p[0] -= (a * (p[0] - b)) / alpharadbias;
        p[1] -= (a * (p[1] - g)) / alpharadbias;
        p[2] -= (a * (p[2] - r)) / alpharadbias;
      }
    }
  }

--- END ---
--- FUNCTION SOURCE (altersingle) id{74,0} ---
(alpha, i, b, g, r) {
    network[i][0] -= (alpha * (network[i][0] - b)) / initalpha;
    network[i][1] -= (alpha * (network[i][1] - g)) / initalpha;
    network[i][2] -= (alpha * (network[i][2] - r)) / initalpha;
  }

--- END ---
--- FUNCTION SOURCE (inxbuild) id{75,0} ---
() {
    var i, j, p, q, smallpos, smallval, previouscol = 0, startpos = 0;
    for (i = 0; i < netsize; i++) {
      p = network[i];
      smallpos = i;
      smallval = p[1]; // index on g
      // find smallest in i..netsize-1
      for (j = i + 1; j < netsize; j++) {
        q = network[j];
        if (q[1] < smallval) { // index on g
          smallpos = j;
          smallval = q[1]; // index on g
        }
      }
      q = network[smallpos];
      // swap p (i) and q (smallpos) entries
      if (i != smallpos) {
        j = q[0];   q[0] = p[0];   p[0] = j;
        j = q[1];   q[1] = p[1];   p[1] = j;
        j = q[2];   q[2] = p[2];   p[2] = j;
        j = q[3];   q[3] = p[3];   p[3] = j;
      }
      // smallval entry is now in position i

      if (smallval != previouscol) {
        netindex[previouscol] = (startpos + i) >> 1;
        for (j = previouscol + 1; j < smallval; j++)
          netindex[j] = i;
        previouscol = smallval;
        startpos = i;
      }
    }
    netindex[previouscol] = (startpos + maxnetpos) >> 1;
    for (j = previouscol + 1; j < 256; j++)
      netindex[j] = maxnetpos; // really 256
  }

--- END ---
[deoptimizing (DEOPT soft): begin 0x2d33a708c561 inxbuild (opt #75) @32, FP to SP delta: 136]
            ;;; deoptimize: Insufficient type feedback for LHS of binary operation
  translating inxbuild => node=44, height=64
    0x7fffb1037360: [top + 96] <- 0x2a9f4290faf9 ; [sp + 40] 0x2a9f4290faf9 <JS Global Object>
    0x7fffb1037358: [top + 88] <- 0x3eff7e44ad27 ; caller's pc
    0x7fffb1037350: [top + 80] <- 0x7fffb1037380 ; caller's fp
    0x7fffb1037348: [top + 72] <- 0x2d33a708c331; context
    0x7fffb1037340: [top + 64] <- 0x2d33a708c561; function
    0x7fffb1037338: [top + 56] <- 0x2a9f42904121 <undefined> ; literal
    0x7fffb1037330: [top + 48] <- 0x2a9f42904121 <undefined> ; literal
    0x7fffb1037328: [top + 40] <- 0x2a9f42904121 <undefined> ; literal
    0x7fffb1037320: [top + 32] <- 0x2a9f42904121 <undefined> ; literal
    0x7fffb1037318: [top + 24] <- 0x2a9f42904121 <undefined> ; literal
    0x7fffb1037310: [top + 16] <- 0x2a9f42904121 <undefined> ; literal
    0x7fffb1037308: [top + 8] <- 2.540000e+02 ; xmm2
    0x7fffb1037300: [top + 0] <- 237 ; rax (smi)
[deoptimizing (soft): end 0x2d33a708c561 inxbuild @32 => node=44, pc=0x3eff7e451867, state=NO_REGISTERS, alignment=no padding, took 0.027 ms]
Materialized a new heap number 0xfe00000000 [2.540000e+02] in slot 0x7fffb1037308
--- FUNCTION SOURCE (inxsearch) id{76,0} ---
(b, g, r) {
    var a, p, dist;

    var bestd = 1000; // biggest possible dist is 256*3
    var best = -1;

    var i = netindex[g]; // index on g
    var j = i - 1; // start at netindex[g] and work outwards

    while ((i < netsize) || (j >= 0)) {
      if (i < netsize) {
        p = network[i];
        dist = p[1] - g; // inx key
        if (dist >= bestd) i = netsize; // stop iter
        else {
          i++;
          if (dist < 0) dist = -dist;
          a = p[0] - b; if (a < 0) a = -a;
          dist += a;
          if (dist < bestd) {
            a = p[2] - r; if (a < 0) a = -a;
            dist += a;
            if (dist < bestd) {
              bestd = dist;
              best = p[3];
            }
          }
        }
      }
      if (j >= 0) {
        p = network[j];
        dist = g - p[1]; // inx key - reverse dif
        if (dist >= bestd) j = -1; // stop iter
        else {
          j--;
          if (dist < 0) dist = -dist;
          a = p[0] - b; if (a < 0) a = -a;
          dist += a;
          if (dist < bestd) {
            a = p[2] - r; if (a < 0) a = -a;
            dist += a;
            if (dist < bestd) {
              bestd = dist;
              best = p[3];
            }
          }
        }
      }
    }

    return best;
  }

--- END ---
--- FUNCTION SOURCE (GIFEncoder.analyzePixels) id{77,0} ---
() {
  var len = this.pixels.length;
  var nPix = len / 3;

  // TODO: Re-use indexedPixels
  this.indexedPixels = new Uint8Array(nPix);

  var imgq = new NeuQuant(this.pixels, this.sample);
  imgq.buildColormap(); // create reduced palette
  this.colorTab = imgq.getColormap();

  // map image pixels to new palette
  var k = 0;
  for (var j = 0; j < nPix; j++) {
    var index = imgq.lookupRGB(
      this.pixels[k++] & 0xff,
      this.pixels[k++] & 0xff,
      this.pixels[k++] & 0xff
    );
    this.usedEntry[index] = true;
    this.indexedPixels[j] = index;
  }

  this.pixels = null;
  this.colorDepth = 8;
  this.palSize = 7;

  // get closest match to transparent color if specified
  if (this.transparent !== null) {
    this.transIndex = this.findClosest(this.transparent);
  }
};
--- END ---
[deoptimizing (DEOPT soft): begin 0xb88c3078021 GIFEncoder.analyzePixels (opt #77) @37, FP to SP delta: 152]
            ;;; deoptimize: Insufficient type feedback for generic named access
  translating GIFEncoder.analyzePixels => node=139, height=48
    0x7fffb10373f0: [top + 80] <- 0x2d33a6004201 ; rbx 0x2d33a6004201 <a GIFEncoder with map 0x20e13f4be761>
    0x7fffb10373e8: [top + 72] <- 0x3eff7e449100 ; caller's pc
    0x7fffb10373e0: [top + 64] <- 0x7fffb1037410 ; caller's fp
    0x7fffb10373d8: [top + 56] <- 0x2a9f429bec21; context
    0x7fffb10373d0: [top + 48] <- 0xb88c3078021; function
    0x7fffb10373c8: [top + 40] <- 0x2a9f42904121 <undefined> ; literal
    0x7fffb10373c0: [top + 32] <- 0x2a9f42904121 <undefined> ; literal
    0x7fffb10373b8: [top + 24] <- 0x2a9f42904121 <undefined> ; literal
    0x7fffb10373b0: [top + 16] <- 0x2a9f42904121 <undefined> ; literal
    0x7fffb10373a8: [top + 8] <- 0x2a9f42904121 <undefined> ; literal
    0x7fffb10373a0: [top + 0] <- 0x2a9f42904121 <undefined> ; literal
[deoptimizing (soft): end 0xb88c3078021 GIFEncoder.analyzePixels @37 => node=139, pc=0x3eff7e44a71e, state=NO_REGISTERS, alignment=no padding, took 0.034 ms]
--- FUNCTION SOURCE (ByteCapacitor.writeByte) id{78,0} ---
(val) {
  this.data.push(val);
};
--- END ---
--- FUNCTION SOURCE (char_out) id{79,0} ---
(c, outs) {
    accum[a_count++] = c;
    if (a_count >= 254) flush_char(outs);
  }

--- END ---
--- FUNCTION SOURCE (nextPixel) id{80,0} ---
() {
    if (remaining === 0) return EOF;
    --remaining;
    var pix = pixels[curPixel++];
    return pix & 0xff;
  }

--- END ---
--- FUNCTION SOURCE (compress) id{81,0} ---
(init_bits, outs) {
    var fcode, c, i, ent, disp, hsize_reg, hshift;

    // Set up the globals: g_init_bits - initial number of bits
    g_init_bits = init_bits;

    // Set up the necessary values
    clear_flg = false;
    n_bits = g_init_bits;
    maxcode = MAXCODE(n_bits);

    ClearCode = 1 << (init_bits - 1);
    EOFCode = ClearCode + 1;
    free_ent = ClearCode + 2;

    a_count = 0; // clear packet

    ent = nextPixel();

    hshift = 0;
    for (fcode = HSIZE; fcode < 65536; fcode *= 2) ++hshift;
    hshift = 8 - hshift; // set hash code range bound
    hsize_reg = HSIZE;
    cl_hash(hsize_reg); // clear hash table

    output(ClearCode, outs);

    outer_loop: while ((c = nextPixel()) != EOF) {
      fcode = (c << BITS) + ent;
      i = (c << hshift) ^ ent; // xor hashing
      if (htab[i] === fcode) {
        ent = codetab[i];
        continue;
      } else if (htab[i] >= 0) { // non-empty slot
        disp = hsize_reg - i; // secondary hash (after G. Knott)
        if (i === 0) disp = 1;
        do {
          if ((i -= disp) < 0) i += hsize_reg;
          if (htab[i] === fcode) {
            ent = codetab[i];
            continue outer_loop;
          }
        } while (htab[i] >= 0);
      }
      output(ent, outs);
      ent = c;
      if (free_ent < 1 << BITS) {
        codetab[i] = free_ent++; // code -> hashtable
        htab[i] = fcode;
      } else {
        cl_block(outs);
      }
    }

    // Put out the final code.
    output(ent, outs);
    output(EOFCode, outs);
  }

--- END ---
--- FUNCTION SOURCE (MAXCODE) id{81,1} ---
(n_bits) {
    return (1 << n_bits) - 1;
  }

--- END ---
INLINE (MAXCODE) id{81,1} AS 1 AT <0:264>
--- FUNCTION SOURCE (nextPixel) id{81,2} ---
() {
    if (remaining === 0) return EOF;
    --remaining;
    var pix = pixels[curPixel++];
    return pix & 0xff;
  }

--- END ---
INLINE (nextPixel) id{81,2} AS 2 AT <0:424>
--- FUNCTION SOURCE (cl_hash) id{81,3} ---
(hsize) {
    for (var i = 0; i < hsize; ++i) htab[i] = -1;
  }

--- END ---
INLINE (cl_hash) id{81,3} AS 3 AT <0:596>
INLINE (nextPixel) id{81,2} AS 4 AT <0:695>
--- FUNCTION SOURCE (output) id{82,0} ---
(code, outs) {
    cur_accum &= masks[cur_bits];

    if (cur_bits > 0) cur_accum |= (code << cur_bits);
    else cur_accum = code;

    cur_bits += n_bits;

    while (cur_bits >= 8) {
      char_out((cur_accum & 0xff), outs);
      cur_accum >>= 8;
      cur_bits -= 8;
    }

    // If the next entry is going to be too big for the code size,
    // then increase it, if possible.
    if (free_ent > maxcode || clear_flg) {
      if (clear_flg) {
        maxcode = MAXCODE(n_bits = g_init_bits);
        clear_flg = false;
      } else {
        ++n_bits;
        if (n_bits == BITS) maxcode = 1 << BITS;
        else maxcode = MAXCODE(n_bits);
      }
    }

    if (code == EOFCode) {
      // At EOF, write the rest of the buffer.
      while (cur_bits > 0) {
        char_out((cur_accum & 0xff), outs);
        cur_accum >>= 8;
        cur_bits -= 8;
      }
      flush_char(outs);
    }
  }

--- END ---
--- FUNCTION SOURCE (char_out) id{82,1} ---
(c, outs) {
    accum[a_count++] = c;
    if (a_count >= 254) flush_char(outs);
  }

--- END ---
INLINE (char_out) id{82,1} AS 1 AT <0:192>
--- FUNCTION SOURCE (MAXCODE) id{82,2} ---
(n_bits) {
    return (1 << n_bits) - 1;
  }

--- END ---
INLINE (MAXCODE) id{82,2} AS 2 AT <0:631>
--- FUNCTION SOURCE (ByteCapacitor.writeBytes) id{83,0} ---
(array, offset, length) {
  for (var l = length || array.length, i = offset || 0; i < l; i++) {
    this.writeByte(array[i]);
  }
};
--- END ---
--- FUNCTION SOURCE (ByteCapacitor.writeByte) id{83,1} ---
(val) {
  this.data.push(val);
};
--- END ---
INLINE (ByteCapacitor.writeByte) id{83,1} AS 1 AT <0:105>
--- FUNCTION SOURCE (cl_hash) id{84,0} ---
(hsize) {
    for (var i = 0; i < hsize; ++i) htab[i] = -1;
  }

--- END ---
[deoptimizing (DEOPT soft): begin 0x2d33a6071a81 output (opt #82) @30, FP to SP delta: 40]
            ;;; deoptimize: Insufficient type feedback for combined type of binary operation
  translating output => node=202, height=0
    0x7fffb10372b0: [top + 48] <- 0x2a9f42904121 ; [sp + 72] 0x2a9f42904121 <undefined>
    0x7fffb10372a8: [top + 40] <- 0x10100000000 ; [sp + 64] 257
    0x7fffb10372a0: [top + 32] <- 0x2d33a6004201 ; [sp + 56] 0x2d33a6004201 <a GIFEncoder with map 0x20e13f4c4f71>
    0x7fffb1037298: [top + 24] <- 0x3eff7e45ef8a ; caller's pc
    0x7fffb1037290: [top + 16] <- 0x7fffb1037368 ; caller's fp
    0x7fffb1037288: [top + 8] <- 0x2d33a6071751; context
    0x7fffb1037280: [top + 0] <- 0x2d33a6071a81; function
[deoptimizing (soft): end 0x2d33a6071a81 output @30 => node=202, pc=0x3eff7e45c151, state=NO_REGISTERS, alignment=no padding, took 0.030 ms]
[deoptimizing (DEOPT eager): begin 0xb88c3062381 Buffer (opt #35) @70, FP to SP delta: 160]
            ;;; jump table entry 36: deoptimization bailout 70.
  translating Buffer => node=622, height=16
    0x7fffb10372c8: [top + 64] <- 0x2d33a6298341 ; rbx 0x2d33a6298341 <a Buffer with map 0xcbad501a289>
    0x7fffb10372c0: [top + 56] <- 0x2d33a6027d11 ; rdx 0x2d33a6027d11 <JS Array[65619]>
    0x7fffb10372b8: [top + 48] <- 0x2a9f42904121 ; [sp + 64] 0x2a9f42904121 <undefined>
    0x7fffb10372b0: [top + 40] <- 0x3eff7e31e715 ; caller's pc
    0x7fffb10372a8: [top + 32] <- 0x7fffb10372e8 ; caller's fp
    0x7fffb10372a0: [top + 24] <- 0xb88c30303d9; context
    0x7fffb1037298: [top + 16] <- 0xb88c3062381; function
    0x7fffb1037290: [top + 8] <- 0x2a9f42904121 <undefined> ; literal
    0x7fffb1037288: [top + 0] <- 0 ; literal
[deoptimizing (eager): end 0xb88c3062381 Buffer @70 => node=622, pc=0x3eff7e39b82f, state=NO_REGISTERS, alignment=no padding, took 0.031 ms]
--- FUNCTION SOURCE (Buffer) id{85,0} ---
(subject, encoding) {
  if (!util.isBuffer(this))
    return new Buffer(subject, encoding);

  if (util.isNumber(subject))
    this.length = subject > 0 ? subject >>> 0 : 0;
  else if (util.isString(subject))
    this.length = Buffer.byteLength(subject, encoding = encoding || 'utf8');
  else if (util.isObject(subject)) {
    if (subject.type === 'Buffer' && util.isArray(subject.data))
      subject = subject.data;

    this.length = +subject.length > 0 ? Math.floor(+subject.length) : 0;
  } else
    throw new TypeError('must start with number, buffer, array or string');

  if (this.length > kMaxLength) {
    throw new RangeError('Attempt to allocate Buffer larger than maximum ' +
                         'size: 0x' + kMaxLength.toString(16) + ' bytes');
  }

  this.parent = undefined;
  if (this.length <= (Buffer.poolSize >>> 1) && this.length > 0) {
    if (this.length > poolSize - poolOffset)
      createPool();
    this.parent = sliceOnto(allocPool,
                            this,
                            poolOffset,
                            poolOffset + this.length);
    poolOffset += this.length;
  } else {
    alloc(this, this.length);
  }

  if (!util.isNumber(subject)) {
    if (util.isString(subject)) {
      // In the case of base64 it's possible that the size of the buffer
      // allocated was slightly too large. In this case we need to rewrite
      // the length to the actual length written.
      var len = this.write(subject, encoding);

      // Buffer was truncated after decode, realloc internal ExternalArray
      if (len !== this.length) {
        this.length = len;
        truncate(this, this.length);
      }
    } else {
      if (util.isBuffer(subject))
        subject.copy(this, 0, 0, this.length);
      else if (util.isNumber(subject.length) || util.isArray(subject))
        for (var i = 0; i < this.length; i++)
          this[i] = subject[i];
    }
  }
}

--- END ---
--- FUNCTION SOURCE (isBuffer) id{85,1} ---
(arg) {
  return arg instanceof Buffer;
}

--- END ---
INLINE (isBuffer) id{85,1} AS 1 AT <0:34>
--- FUNCTION SOURCE (isNumber) id{85,2} ---
(arg) {
  return typeof arg === 'number';
}

--- END ---
INLINE (isNumber) id{85,2} AS 2 AT <0:104>
--- FUNCTION SOURCE (isString) id{85,3} ---
(arg) {
  return typeof arg === 'string';
}

--- END ---
INLINE (isString) id{85,3} AS 3 AT <0:190>
--- FUNCTION SOURCE (Buffer.byteLength) id{85,4} ---
(str, enc) {
  var ret;
  str = str + '';
  switch (enc) {
    case 'ascii':
    case 'binary':
    case 'raw':
      ret = str.length;
      break;
    case 'ucs2':
    case 'ucs-2':
    case 'utf16le':
    case 'utf-16le':
      ret = str.length * 2;
      break;
    case 'hex':
      ret = str.length >>> 1;
      break;
    default:
      ret = internal.byteLength(str, enc);
  }
  return ret;
};
--- END ---
INLINE (Buffer.byteLength) id{85,4} AS 4 AT <0:234>
--- FUNCTION SOURCE (createPool) id{85,5} ---
() {
  poolSize = Buffer.poolSize;
  allocPool = alloc({}, poolSize);
  poolOffset = 0;
}

--- END ---
INLINE (createPool) id{85,5} AS 5 AT <0:914>
INLINE (isNumber) id{85,2} AS 6 AT <0:1185>
INLINE (isString) id{85,3} AS 7 AT <0:1219>
--- FUNCTION SOURCE (inxbuild) id{86,0} ---
() {
    var i, j, p, q, smallpos, smallval, previouscol = 0, startpos = 0;
    for (i = 0; i < netsize; i++) {
      p = network[i];
      smallpos = i;
      smallval = p[1]; // index on g
      // find smallest in i..netsize-1
      for (j = i + 1; j < netsize; j++) {
        q = network[j];
        if (q[1] < smallval) { // index on g
          smallpos = j;
          smallval = q[1]; // index on g
        }
      }
      q = network[smallpos];
      // swap p (i) and q (smallpos) entries
      if (i != smallpos) {
        j = q[0];   q[0] = p[0];   p[0] = j;
        j = q[1];   q[1] = p[1];   p[1] = j;
        j = q[2];   q[2] = p[2];   p[2] = j;
        j = q[3];   q[3] = p[3];   p[3] = j;
      }
      // smallval entry is now in position i

      if (smallval != previouscol) {
        netindex[previouscol] = (startpos + i) >> 1;
        for (j = previouscol + 1; j < smallval; j++)
          netindex[j] = i;
        previouscol = smallval;
        startpos = i;
      }
    }
    netindex[previouscol] = (startpos + maxnetpos) >> 1;
    for (j = previouscol + 1; j < 256; j++)
      netindex[j] = maxnetpos; // really 256
  }

--- END ---
--- FUNCTION SOURCE (GIFEncoder.analyzePixels) id{87,0} ---
() {
  var len = this.pixels.length;
  var nPix = len / 3;

  // TODO: Re-use indexedPixels
  this.indexedPixels = new Uint8Array(nPix);

  var imgq = new NeuQuant(this.pixels, this.sample);
  imgq.buildColormap(); // create reduced palette
  this.colorTab = imgq.getColormap();

  // map image pixels to new palette
  var k = 0;
  for (var j = 0; j < nPix; j++) {
    var index = imgq.lookupRGB(
      this.pixels[k++] & 0xff,
      this.pixels[k++] & 0xff,
      this.pixels[k++] & 0xff
    );
    this.usedEntry[index] = true;
    this.indexedPixels[j] = index;
  }

  this.pixels = null;
  this.colorDepth = 8;
  this.palSize = 7;

  // get closest match to transparent color if specified
  if (this.transparent !== null) {
    this.transIndex = this.findClosest(this.transparent);
  }
};
--- END ---
--- FUNCTION SOURCE (getColormap) id{87,1} ---
() {
    var map = [];
    var index = [];

    for (var i = 0; i < netsize; i++)
      index[network[i][3]] = i;

    var k = 0;
    for (var l = 0; l < netsize; l++) {
      var j = index[l];
      map[k++] = (network[j][0]);
      map[k++] = (network[j][1]);
      map[k++] = (network[j][2]);
    }
    return map;
  }

--- END ---
INLINE (getColormap) id{87,1} AS 1 AT <0:264>
[deoptimizing (DEOPT eager): begin 0xb88c3077be9 ByteCapacitor.writeByte (opt #78) @3, FP to SP delta: 24]
            ;;; jump table entry 2: deoptimization bailout 3.
  translating ByteCapacitor.writeByte => node=3, height=0
    0x7fffb10373b8: [top + 40] <- 0x1128dc94d3f1 ; rax 0x1128dc94d3f1 <a GIFEncoder with map 0x20e13f4c4f71>
    0x7fffb10373b0: [top + 32] <- 0x2100000000 ; [sp + 40] 33
    0x7fffb10373a8: [top + 24] <- 0x3eff7e459788 ; caller's pc
    0x7fffb10373a0: [top + 16] <- 0x7fffb10373e8 ; caller's fp
    0x7fffb1037398: [top + 8] <- 0x2a9f429bec21; context
    0x7fffb1037390: [top + 0] <- 0xb88c3077be9; function
[deoptimizing (eager): end 0xb88c3077be9 ByteCapacitor.writeByte @3 => node=3, pc=0x3eff7e44297e, state=NO_REGISTERS, alignment=no padding, took 0.022 ms]
[deoptimizing (DEOPT eager): begin 0xb88c3077c79 ByteCapacitor.writeBytes (opt #83) @10, FP to SP delta: 32]
            ;;; jump table entry 5: deoptimization bailout 10.
  translating ByteCapacitor.writeBytes => node=74, height=24
    0x7fffb1037380: [top + 80] <- 0x1128dc94d3f1 ; rcx 0x1128dc94d3f1 <a GIFEncoder with map 0x20e13f4c4f71>
    0x7fffb1037378: [top + 72] <- 0x2d33a70132d9 ; rsi 0x2d33a70132d9 <JS Array[768]>
    0x7fffb1037370: [top + 64] <- 0x2a9f42904121 ; [sp + 56] 0x2a9f42904121 <undefined>
    0x7fffb1037368: [top + 56] <- 0x2a9f42904121 ; [sp + 48] 0x2a9f42904121 <undefined>
    0x7fffb1037360: [top + 48] <- 0x3eff7e31e715 ; caller's pc
    0x7fffb1037358: [top + 40] <- 0x7fffb10373a0 ; caller's fp
    0x7fffb1037350: [top + 32] <- 0x2a9f429bec21; context
    0x7fffb1037348: [top + 24] <- 0xb88c3077c79; function
    0x7fffb1037340: [top + 16] <- 768 ; rax (smi)
    0x7fffb1037338: [top + 8] <- 0 ; rdx (smi)
    0x7fffb1037330: [top + 0] <- 0xb88c3077be9 <JS Function ByteCapacitor.writeByte (SharedFunctionInfo 0xb88c3060d81)> ; literal
  translating ByteCapacitor.writeByte => node=2, height=0
    0x7fffb1037328: [top + 40] <- 0x1128dc94d3f1 ; rcx 0x1128dc94d3f1 <a GIFEncoder with map 0x20e13f4c4f71>
    0x7fffb1037320: [top + 32] <- 2.550000e+02 ; xmm2
    0x7fffb1037318: [top + 24] <- 0x3eff7e458146 ; caller's pc
    0x7fffb1037310: [top + 16] <- 0x7fffb1037358 ; caller's fp
    0x7fffb1037308: [top + 8] <- 0x2a9f429bec21; context
    0x7fffb1037300: [top + 0] <- 0xb88c3077be9; function
[deoptimizing (eager): end 0xb88c3077be9 ByteCapacitor.writeBytes @10 => node=2, pc=0x3eff7e44297e, state=NO_REGISTERS, alignment=no padding, took 0.027 ms]
Materialized a new heap number 0xff00000000 [2.550000e+02] in slot 0x7fffb1037320
--- FUNCTION SOURCE (ByteCapacitor.writeByte) id{88,0} ---
(val) {
  this.data.push(val);
};
--- END ---
--- FUNCTION SOURCE (flush_char) id{89,0} ---
(outs) {
    if (a_count > 0) {
      outs.writeByte(a_count);
      outs.writeBytes(accum, 0, a_count);
      a_count = 0;
    }
  }

--- END ---
--- FUNCTION SOURCE (ByteCapacitor.writeByte) id{89,1} ---
(val) {
  this.data.push(val);
};
--- END ---
INLINE (ByteCapacitor.writeByte) id{89,1} AS 1 AT <0:43>
--- FUNCTION SOURCE (ByteCapacitor.writeBytes) id{89,2} ---
(array, offset, length) {
  for (var l = length || array.length, i = offset || 0; i < l; i++) {
    this.writeByte(array[i]);
  }
};
--- END ---
INLINE (ByteCapacitor.writeBytes) id{89,2} AS 2 AT <0:74>
INLINE (ByteCapacitor.writeByte) id{89,1} AS 3 AT <2:105>
[deoptimizing (DEOPT eager): begin 0x2d33a714cf61 compress (opt #81) @26, FP to SP delta: 176]
            ;;; jump table entry 21: deoptimization bailout 26.
  translating compress => node=189, height=56
    0x7fffb1037388: [top + 104] <- 0x2a9f4290faf9 ; [sp + 48] 0x2a9f4290faf9 <JS Global Object>
    0x7fffb1037380: [top + 96] <- 0x2a9f42904121 <undefined> ; literal
    0x7fffb1037378: [top + 88] <- 0x1128dc94d3f1 ; r9 0x1128dc94d3f1 <a GIFEncoder with map 0x20e13f4c4f71>
    0x7fffb1037370: [top + 80] <- 0x3eff7e45a9ee ; caller's pc
    0x7fffb1037368: [top + 72] <- 0x7fffb10373a8 ; caller's fp
    0x7fffb1037360: [top + 64] <- 0x2d33a714cd99; context
    0x7fffb1037358: [top + 56] <- 0x2d33a714cf61; function
    0x7fffb1037350: [top + 48] <- 0x2a9f42904121 <undefined> ; literal
    0x7fffb1037348: [top + 40] <- 0x2a9f42904121 <undefined> ; literal
    0x7fffb1037340: [top + 32] <- 0x2a9f42904121 <undefined> ; literal
    0x7fffb1037338: [top + 24] <- 1625 ; rdx (smi)
    0x7fffb1037330: [top + 16] <- 0x2a9f42904121 <undefined> ; literal
    0x7fffb1037328: [top + 8] <- 5003 ; rbx (smi)
    0x7fffb1037320: [top + 0] <- 4 ; [sp + 56] (smi)
[deoptimizing (eager): end 0x2d33a714cf61 compress @26 => node=189, pc=0x3eff7e45b404, state=NO_REGISTERS, alignment=no padding, took 0.036 ms]
--- FUNCTION SOURCE (output) id{90,0} ---
(code, outs) {
    cur_accum &= masks[cur_bits];

    if (cur_bits > 0) cur_accum |= (code << cur_bits);
    else cur_accum = code;

    cur_bits += n_bits;

    while (cur_bits >= 8) {
      char_out((cur_accum & 0xff), outs);
      cur_accum >>= 8;
      cur_bits -= 8;
    }

    // If the next entry is going to be too big for the code size,
    // then increase it, if possible.
    if (free_ent > maxcode || clear_flg) {
      if (clear_flg) {
        maxcode = MAXCODE(n_bits = g_init_bits);
        clear_flg = false;
      } else {
        ++n_bits;
        if (n_bits == BITS) maxcode = 1 << BITS;
        else maxcode = MAXCODE(n_bits);
      }
    }

    if (code == EOFCode) {
      // At EOF, write the rest of the buffer.
      while (cur_bits > 0) {
        char_out((cur_accum & 0xff), outs);
        cur_accum >>= 8;
        cur_bits -= 8;
      }
      flush_char(outs);
    }
  }

--- END ---
--- FUNCTION SOURCE (char_out) id{90,1} ---
(c, outs) {
    accum[a_count++] = c;
    if (a_count >= 254) flush_char(outs);
  }

--- END ---
INLINE (char_out) id{90,1} AS 1 AT <0:774>
--- FUNCTION SOURCE (flush_char) id{90,2} ---
(outs) {
    if (a_count > 0) {
      outs.writeByte(a_count);
      outs.writeBytes(accum, 0, a_count);
      a_count = 0;
    }
  }

--- END ---
INLINE (flush_char) id{90,2} AS 2 AT <0:872>
--- FUNCTION SOURCE (ByteCapacitor.writeByte) id{90,3} ---
(val) {
  this.data.push(val);
};
--- END ---
INLINE (ByteCapacitor.writeByte) id{90,3} AS 3 AT <2:43>
--- FUNCTION SOURCE (ByteCapacitor.writeBytes) id{90,4} ---
(array, offset, length) {
  for (var l = length || array.length, i = offset || 0; i < l; i++) {
    this.writeByte(array[i]);
  }
};
--- END ---
INLINE (ByteCapacitor.writeBytes) id{90,4} AS 4 AT <2:74>
INLINE (ByteCapacitor.writeByte) id{90,3} AS 5 AT <4:105>
--- FUNCTION SOURCE (compress) id{91,0} ---
(init_bits, outs) {
    var fcode, c, i, ent, disp, hsize_reg, hshift;

    // Set up the globals: g_init_bits - initial number of bits
    g_init_bits = init_bits;

    // Set up the necessary values
    clear_flg = false;
    n_bits = g_init_bits;
    maxcode = MAXCODE(n_bits);

    ClearCode = 1 << (init_bits - 1);
    EOFCode = ClearCode + 1;
    free_ent = ClearCode + 2;

    a_count = 0; // clear packet

    ent = nextPixel();

    hshift = 0;
    for (fcode = HSIZE; fcode < 65536; fcode *= 2) ++hshift;
    hshift = 8 - hshift; // set hash code range bound
    hsize_reg = HSIZE;
    cl_hash(hsize_reg); // clear hash table

    output(ClearCode, outs);

    outer_loop: while ((c = nextPixel()) != EOF) {
      fcode = (c << BITS) + ent;
      i = (c << hshift) ^ ent; // xor hashing
      if (htab[i] === fcode) {
        ent = codetab[i];
        continue;
      } else if (htab[i] >= 0) { // non-empty slot
        disp = hsize_reg - i; // secondary hash (after G. Knott)
        if (i === 0) disp = 1;
        do {
          if ((i -= disp) < 0) i += hsize_reg;
          if (htab[i] === fcode) {
            ent = codetab[i];
            continue outer_loop;
          }
        } while (htab[i] >= 0);
      }
      output(ent, outs);
      ent = c;
      if (free_ent < 1 << BITS) {
        codetab[i] = free_ent++; // code -> hashtable
        htab[i] = fcode;
      } else {
        cl_block(outs);
      }
    }

    // Put out the final code.
    output(ent, outs);
    output(EOFCode, outs);
  }

--- END ---
[deoptimizing (DEOPT eager): begin 0x2d33a60042d9 output (opt #90) @26, FP to SP delta: 96]
            ;;; jump table entry 18: deoptimization bailout 26.
  translating output => node=205, height=0
    0x7fffb10372a8: [top + 48] <- 0x2a9f42904121 ; [sp + 128] 0x2a9f42904121 <undefined>
    0x7fffb10372a0: [top + 40] <- 0x10100000000 ; [sp + 120] 257
    0x7fffb1037298: [top + 32] <- 0x1128dc94d3f1 ; [sp + 112] 0x1128dc94d3f1 <a GIFEncoder with map 0x20e13f4c4f71>
    0x7fffb1037290: [top + 24] <- 0x3eff7e4724ff ; caller's pc
    0x7fffb1037288: [top + 16] <- 0x7fffb1037368 ; caller's fp
    0x7fffb1037280: [top + 8] <- 0x2d33a6004159; context
    0x7fffb1037278: [top + 0] <- 0x2d33a60042d9; function
[deoptimizing (eager): end 0x2d33a60042d9 output @26 => node=205, pc=0x3eff7e45bff1, state=NO_REGISTERS, alignment=no padding, took 0.034 ms]
[deoptimizing (DEOPT eager): begin 0xb88c3078021 GIFEncoder.analyzePixels (opt #87) @10, FP to SP delta: 160]
            ;;; jump table entry 7: deoptimization bailout 10.
  translating GIFEncoder.analyzePixels => node=78, height=56
    0x7fffb10373f0: [top + 88] <- 0x1128dc94d3f1 ; [sp + 176] 0x1128dc94d3f1 <a GIFEncoder with map 0x20e13f4c4f71>
    0x7fffb10373e8: [top + 80] <- 0x3eff7e449100 ; caller's pc
    0x7fffb10373e0: [top + 72] <- 0x7fffb1037410 ; caller's fp
    0x7fffb10373d8: [top + 64] <- 0x2a9f429bec21; context
    0x7fffb10373d0: [top + 56] <- 0xb88c3078021; function
    0x7fffb10373c8: [top + 48] <- 0x2a9f42904121 <undefined> ; literal
    0x7fffb10373c0: [top + 40] <- 106560 ; [sp + 80] (smi)
    0x7fffb10373b8: [top + 32] <- 0x2a9f42904121 <undefined> ; literal
    0x7fffb10373b0: [top + 24] <- 0x2a9f42904121 <undefined> ; literal
    0x7fffb10373a8: [top + 16] <- 0x2a9f42904121 <undefined> ; literal
    0x7fffb10373a0: [top + 8] <- 0x2a9f42904121 <undefined> ; literal
    0x7fffb1037398: [top + 0] <- 0x2d33a62fa439 ; rax 0x2d33a62fa439 <a NeuQuant with map 0x20e13f4c5241>
[deoptimizing (eager): end 0xb88c3078021 GIFEncoder.analyzePixels @10 => node=78, pc=0x3eff7e44a41d, state=TOS_REG, alignment=no padding, took 0.033 ms]
--- FUNCTION SOURCE (GIFEncoder.analyzePixels) id{92,0} ---
() {
  var len = this.pixels.length;
  var nPix = len / 3;

  // TODO: Re-use indexedPixels
  this.indexedPixels = new Uint8Array(nPix);

  var imgq = new NeuQuant(this.pixels, this.sample);
  imgq.buildColormap(); // create reduced palette
  this.colorTab = imgq.getColormap();

  // map image pixels to new palette
  var k = 0;
  for (var j = 0; j < nPix; j++) {
    var index = imgq.lookupRGB(
      this.pixels[k++] & 0xff,
      this.pixels[k++] & 0xff,
      this.pixels[k++] & 0xff
    );
    this.usedEntry[index] = true;
    this.indexedPixels[j] = index;
  }

  this.pixels = null;
  this.colorDepth = 8;
  this.palSize = 7;

  // get closest match to transparent color if specified
  if (this.transparent !== null) {
    this.transIndex = this.findClosest(this.transparent);
  }
};
--- END ---
--- FUNCTION SOURCE (output) id{93,0} ---
(code, outs) {
    cur_accum &= masks[cur_bits];

    if (cur_bits > 0) cur_accum |= (code << cur_bits);
    else cur_accum = code;

    cur_bits += n_bits;

    while (cur_bits >= 8) {
      char_out((cur_accum & 0xff), outs);
      cur_accum >>= 8;
      cur_bits -= 8;
    }

    // If the next entry is going to be too big for the code size,
    // then increase it, if possible.
    if (free_ent > maxcode || clear_flg) {
      if (clear_flg) {
        maxcode = MAXCODE(n_bits = g_init_bits);
        clear_flg = false;
      } else {
        ++n_bits;
        if (n_bits == BITS) maxcode = 1 << BITS;
        else maxcode = MAXCODE(n_bits);
      }
    }

    if (code == EOFCode) {
      // At EOF, write the rest of the buffer.
      while (cur_bits > 0) {
        char_out((cur_accum & 0xff), outs);
        cur_accum >>= 8;
        cur_bits -= 8;
      }
      flush_char(outs);
    }
  }

--- END ---
[deoptimizing (DEOPT eager): begin 0xb88c3078021 GIFEncoder.analyzePixels (opt #92) @10, FP to SP delta: 136]
            ;;; jump table entry 7: deoptimization bailout 10.
  translating GIFEncoder.analyzePixels => node=78, height=56
    0x7fffb10373f0: [top + 88] <- 0x1128dc94d3f1 ; [sp + 152] 0x1128dc94d3f1 <a GIFEncoder with map 0x20e13f4c4f71>
    0x7fffb10373e8: [top + 80] <- 0x3eff7e449100 ; caller's pc
    0x7fffb10373e0: [top + 72] <- 0x7fffb1037410 ; caller's fp
    0x7fffb10373d8: [top + 64] <- 0x2a9f429bec21; context
    0x7fffb10373d0: [top + 56] <- 0xb88c3078021; function
    0x7fffb10373c8: [top + 48] <- 0x2a9f42904121 <undefined> ; literal
    0x7fffb10373c0: [top + 40] <- 106560 ; [sp + 56] (smi)
    0x7fffb10373b8: [top + 32] <- 0x2a9f42904121 <undefined> ; literal
    0x7fffb10373b0: [top + 24] <- 0x2a9f42904121 <undefined> ; literal
    0x7fffb10373a8: [top + 16] <- 0x2a9f42904121 <undefined> ; literal
    0x7fffb10373a0: [top + 8] <- 0x2a9f42904121 <undefined> ; literal
    0x7fffb1037398: [top + 0] <- 0x2d33a63e3db9 ; rax 0x2d33a63e3db9 <a NeuQuant with map 0x20e13f4c5289>
[deoptimizing (eager): end 0xb88c3078021 GIFEncoder.analyzePixels @10 => node=78, pc=0x3eff7e44a41d, state=TOS_REG, alignment=no padding, took 0.036 ms]
--- FUNCTION SOURCE (GIFEncoder.analyzePixels) id{94,0} ---
() {
  var len = this.pixels.length;
  var nPix = len / 3;

  // TODO: Re-use indexedPixels
  this.indexedPixels = new Uint8Array(nPix);

  var imgq = new NeuQuant(this.pixels, this.sample);
  imgq.buildColormap(); // create reduced palette
  this.colorTab = imgq.getColormap();

  // map image pixels to new palette
  var k = 0;
  for (var j = 0; j < nPix; j++) {
    var index = imgq.lookupRGB(
      this.pixels[k++] & 0xff,
      this.pixels[k++] & 0xff,
      this.pixels[k++] & 0xff
    );
    this.usedEntry[index] = true;
    this.indexedPixels[j] = index;
  }

  this.pixels = null;
  this.colorDepth = 8;
  this.palSize = 7;

  // get closest match to transparent color if specified
  if (this.transparent !== null) {
    this.transIndex = this.findClosest(this.transparent);
  }
};
--- END ---
--- FUNCTION SOURCE (contest) id{95,0} ---
(b, g, r) {
    /*
      finds closest neuron (min dist) and updates freq
      finds best neuron (min dist-bias) and returns position
      for frequently chosen neurons, freq[i] is high and bias[i] is negative
      bias[i] = gamma * ((1 / netsize) - freq[i])
    */

    var bestd = ~(1 << 31);
    var bestbiasd = bestd;
    var bestpos = -1;
    var bestbiaspos = bestpos;

    var i, n, dist, biasdist, betafreq;
    for (i = 0; i < netsize; i++) {
      n = network[i];

      dist = Math.abs(n[0] - b) + Math.abs(n[1] - g) + Math.abs(n[2] - r);
      if (dist < bestd) {
        bestd = dist;
        bestpos = i;
      }

      biasdist = dist - ((bias[i]) >> (intbiasshift - netbiasshift));
      if (biasdist < bestbiasd) {
        bestbiasd = biasdist;
        bestbiaspos = i;
      }

      betafreq = (freq[i] >> betashift);
      freq[i] -= betafreq;
      bias[i] += (betafreq << gammashift);
    }

    freq[bestpos] += beta;
    bias[bestpos] -= betagamma;

    return bestbiaspos;
  }

--- END ---
[deoptimize marked code in all contexts]
--- FUNCTION SOURCE (alterneigh) id{96,0} ---
(radius, i, b, g, r) {
    var lo = Math.abs(i - radius);
    var hi = Math.min(i + radius, netsize);

    var j = i + 1;
    var k = i - 1;
    var m = 1;

    var p, a;
    while ((j < hi) || (k > lo)) {
      a = radpower[m++];

      if (j < hi) {
        p = network[j++];
        p[0] -= (a * (p[0] - b)) / alpharadbias;
        p[1] -= (a * (p[1] - g)) / alpharadbias;
        p[2] -= (a * (p[2] - r)) / alpharadbias;
      }

      if (k > lo) {
        p = network[k--];
        p[0] -= (a * (p[0] - b)) / alpharadbias;
        p[1] -= (a * (p[1] - g)) / alpharadbias;
        p[2] -= (a * (p[2] - r)) / alpharadbias;
      }
    }
  }

--- END ---
--- FUNCTION SOURCE (altersingle) id{97,0} ---
(alpha, i, b, g, r) {
    network[i][0] -= (alpha * (network[i][0] - b)) / initalpha;
    network[i][1] -= (alpha * (network[i][1] - g)) / initalpha;
    network[i][2] -= (alpha * (network[i][2] - r)) / initalpha;
  }

--- END ---
--- FUNCTION SOURCE (inxbuild) id{98,0} ---
() {
    var i, j, p, q, smallpos, smallval, previouscol = 0, startpos = 0;
    for (i = 0; i < netsize; i++) {
      p = network[i];
      smallpos = i;
      smallval = p[1]; // index on g
      // find smallest in i..netsize-1
      for (j = i + 1; j < netsize; j++) {
        q = network[j];
        if (q[1] < smallval) { // index on g
          smallpos = j;
          smallval = q[1]; // index on g
        }
      }
      q = network[smallpos];
      // swap p (i) and q (smallpos) entries
      if (i != smallpos) {
        j = q[0];   q[0] = p[0];   p[0] = j;
        j = q[1];   q[1] = p[1];   p[1] = j;
        j = q[2];   q[2] = p[2];   p[2] = j;
        j = q[3];   q[3] = p[3];   p[3] = j;
      }
      // smallval entry is now in position i

      if (smallval != previouscol) {
        netindex[previouscol] = (startpos + i) >> 1;
        for (j = previouscol + 1; j < smallval; j++)
          netindex[j] = i;
        previouscol = smallval;
        startpos = i;
      }
    }
    netindex[previouscol] = (startpos + maxnetpos) >> 1;
    for (j = previouscol + 1; j < 256; j++)
      netindex[j] = maxnetpos; // really 256
  }

--- END ---
--- FUNCTION SOURCE (inxsearch) id{99,0} ---
(b, g, r) {
    var a, p, dist;

    var bestd = 1000; // biggest possible dist is 256*3
    var best = -1;

    var i = netindex[g]; // index on g
    var j = i - 1; // start at netindex[g] and work outwards

    while ((i < netsize) || (j >= 0)) {
      if (i < netsize) {
        p = network[i];
        dist = p[1] - g; // inx key
        if (dist >= bestd) i = netsize; // stop iter
        else {
          i++;
          if (dist < 0) dist = -dist;
          a = p[0] - b; if (a < 0) a = -a;
          dist += a;
          if (dist < bestd) {
            a = p[2] - r; if (a < 0) a = -a;
            dist += a;
            if (dist < bestd) {
              bestd = dist;
              best = p[3];
            }
          }
        }
      }
      if (j >= 0) {
        p = network[j];
        dist = g - p[1]; // inx key - reverse dif
        if (dist >= bestd) j = -1; // stop iter
        else {
          j--;
          if (dist < 0) dist = -dist;
          a = p[0] - b; if (a < 0) a = -a;
          dist += a;
          if (dist < bestd) {
            a = p[2] - r; if (a < 0) a = -a;
            dist += a;
            if (dist < bestd) {
              bestd = dist;
              best = p[3];
            }
          }
        }
      }
    }

    return best;
  }

--- END ---
--- FUNCTION SOURCE (nextPixel) id{100,0} ---
() {
    if (remaining === 0) return EOF;
    --remaining;
    var pix = pixels[curPixel++];
    return pix & 0xff;
  }

--- END ---
--- FUNCTION SOURCE (char_out) id{101,0} ---
(c, outs) {
    accum[a_count++] = c;
    if (a_count >= 254) flush_char(outs);
  }

--- END ---
--- FUNCTION SOURCE (compress) id{102,0} ---
(init_bits, outs) {
    var fcode, c, i, ent, disp, hsize_reg, hshift;

    // Set up the globals: g_init_bits - initial number of bits
    g_init_bits = init_bits;

    // Set up the necessary values
    clear_flg = false;
    n_bits = g_init_bits;
    maxcode = MAXCODE(n_bits);

    ClearCode = 1 << (init_bits - 1);
    EOFCode = ClearCode + 1;
    free_ent = ClearCode + 2;

    a_count = 0; // clear packet

    ent = nextPixel();

    hshift = 0;
    for (fcode = HSIZE; fcode < 65536; fcode *= 2) ++hshift;
    hshift = 8 - hshift; // set hash code range bound
    hsize_reg = HSIZE;
    cl_hash(hsize_reg); // clear hash table

    output(ClearCode, outs);

    outer_loop: while ((c = nextPixel()) != EOF) {
      fcode = (c << BITS) + ent;
      i = (c << hshift) ^ ent; // xor hashing
      if (htab[i] === fcode) {
        ent = codetab[i];
        continue;
      } else if (htab[i] >= 0) { // non-empty slot
        disp = hsize_reg - i; // secondary hash (after G. Knott)
        if (i === 0) disp = 1;
        do {
          if ((i -= disp) < 0) i += hsize_reg;
          if (htab[i] === fcode) {
            ent = codetab[i];
            continue outer_loop;
          }
        } while (htab[i] >= 0);
      }
      output(ent, outs);
      ent = c;
      if (free_ent < 1 << BITS) {
        codetab[i] = free_ent++; // code -> hashtable
        htab[i] = fcode;
      } else {
        cl_block(outs);
      }
    }

    // Put out the final code.
    output(ent, outs);
    output(EOFCode, outs);
  }

--- END ---
--- FUNCTION SOURCE (MAXCODE) id{102,1} ---
(n_bits) {
    return (1 << n_bits) - 1;
  }

--- END ---
INLINE (MAXCODE) id{102,1} AS 1 AT <0:264>
--- FUNCTION SOURCE (nextPixel) id{102,2} ---
() {
    if (remaining === 0) return EOF;
    --remaining;
    var pix = pixels[curPixel++];
    return pix & 0xff;
  }

--- END ---
INLINE (nextPixel) id{102,2} AS 2 AT <0:424>
--- FUNCTION SOURCE (cl_hash) id{102,3} ---
(hsize) {
    for (var i = 0; i < hsize; ++i) htab[i] = -1;
  }

--- END ---
INLINE (cl_hash) id{102,3} AS 3 AT <0:596>
INLINE (nextPixel) id{102,2} AS 4 AT <0:695>
--- FUNCTION SOURCE (ByteCapacitor.writeBytes) id{103,0} ---
(array, offset, length) {
  for (var l = length || array.length, i = offset || 0; i < l; i++) {
    this.writeByte(array[i]);
  }
};
--- END ---
--- FUNCTION SOURCE (ByteCapacitor.writeByte) id{103,1} ---
(val) {
  this.data.push(val);
};
--- END ---
INLINE (ByteCapacitor.writeByte) id{103,1} AS 1 AT <0:105>
--- FUNCTION SOURCE (output) id{104,0} ---
(code, outs) {
    cur_accum &= masks[cur_bits];

    if (cur_bits > 0) cur_accum |= (code << cur_bits);
    else cur_accum = code;

    cur_bits += n_bits;

    while (cur_bits >= 8) {
      char_out((cur_accum & 0xff), outs);
      cur_accum >>= 8;
      cur_bits -= 8;
    }

    // If the next entry is going to be too big for the code size,
    // then increase it, if possible.
    if (free_ent > maxcode || clear_flg) {
      if (clear_flg) {
        maxcode = MAXCODE(n_bits = g_init_bits);
        clear_flg = false;
      } else {
        ++n_bits;
        if (n_bits == BITS) maxcode = 1 << BITS;
        else maxcode = MAXCODE(n_bits);
      }
    }

    if (code == EOFCode) {
      // At EOF, write the rest of the buffer.
      while (cur_bits > 0) {
        char_out((cur_accum & 0xff), outs);
        cur_accum >>= 8;
        cur_bits -= 8;
      }
      flush_char(outs);
    }
  }

--- END ---
--- FUNCTION SOURCE (char_out) id{104,1} ---
(c, outs) {
    accum[a_count++] = c;
    if (a_count >= 254) flush_char(outs);
  }

--- END ---
INLINE (char_out) id{104,1} AS 1 AT <0:192>
--- FUNCTION SOURCE (MAXCODE) id{104,2} ---
(n_bits) {
    return (1 << n_bits) - 1;
  }

--- END ---
INLINE (MAXCODE) id{104,2} AS 2 AT <0:631>
--- FUNCTION SOURCE (cl_hash) id{105,0} ---
(hsize) {
    for (var i = 0; i < hsize; ++i) htab[i] = -1;
  }

--- END ---
--- FUNCTION SOURCE (flush_char) id{106,0} ---
(outs) {
    if (a_count > 0) {
      outs.writeByte(a_count);
      outs.writeBytes(accum, 0, a_count);
      a_count = 0;
    }
  }

--- END ---
--- FUNCTION SOURCE (ByteCapacitor.writeByte) id{106,1} ---
(val) {
  this.data.push(val);
};
--- END ---
INLINE (ByteCapacitor.writeByte) id{106,1} AS 1 AT <0:43>
--- FUNCTION SOURCE (ByteCapacitor.writeBytes) id{106,2} ---
(array, offset, length) {
  for (var l = length || array.length, i = offset || 0; i < l; i++) {
    this.writeByte(array[i]);
  }
};
--- END ---
INLINE (ByteCapacitor.writeBytes) id{106,2} AS 2 AT <0:74>
INLINE (ByteCapacitor.writeByte) id{106,1} AS 3 AT <2:105>
--- FUNCTION SOURCE (contest) id{107,0} ---
(b, g, r) {
    /*
      finds closest neuron (min dist) and updates freq
      finds best neuron (min dist-bias) and returns position
      for frequently chosen neurons, freq[i] is high and bias[i] is negative
      bias[i] = gamma * ((1 / netsize) - freq[i])
    */

    var bestd = ~(1 << 31);
    var bestbiasd = bestd;
    var bestpos = -1;
    var bestbiaspos = bestpos;

    var i, n, dist, biasdist, betafreq;
    for (i = 0; i < netsize; i++) {
      n = network[i];

      dist = Math.abs(n[0] - b) + Math.abs(n[1] - g) + Math.abs(n[2] - r);
      if (dist < bestd) {
        bestd = dist;
        bestpos = i;
      }

      biasdist = dist - ((bias[i]) >> (intbiasshift - netbiasshift));
      if (biasdist < bestbiasd) {
        bestbiasd = biasdist;
        bestbiaspos = i;
      }

      betafreq = (freq[i] >> betashift);
      freq[i] -= betafreq;
      bias[i] += (betafreq << gammashift);
    }

    freq[bestpos] += beta;
    bias[bestpos] -= betagamma;

    return bestbiaspos;
  }

--- END ---
[deoptimizing (DEOPT eager): begin 0x2d33a6224e91 output (opt #104) @9, FP to SP delta: 48]
            ;;; jump table entry 7: deoptimization bailout 9.
  translating output => node=63, height=0
    0x7fffb1037310: [top + 48] <- 0x2a9f42904121 ; [sp + 80] 0x2a9f42904121 <undefined>
    0x7fffb1037308: [top + 40] <- 0x10000000000 ; [sp + 72] 256
    0x7fffb1037300: [top + 32] <- 0x1128dc94d3f1 ; rbx 0x1128dc94d3f1 <a GIFEncoder with map 0x20e13f4c4f71>
    0x7fffb10372f8: [top + 24] <- 0x3eff7e45af04 ; caller's pc
    0x7fffb10372f0: [top + 16] <- 0x7fffb1037368 ; caller's fp
    0x7fffb10372e8: [top + 8] <- 0x2d33a6224b61; context
    0x7fffb10372e0: [top + 0] <- 0x2d33a6224e91; function
[deoptimizing (eager): end 0x2d33a6224e91 output @9 => node=63, pc=0x3eff7e45bbac, state=NO_REGISTERS, alignment=no padding, took 0.038 ms]
[deoptimizing (DEOPT eager): begin 0x2d33a6224d29 compress (opt #102) @27, FP to SP delta: 176]
            ;;; jump table entry 22: deoptimization bailout 27.
  translating compress => node=189, height=56
    0x7fffb1037388: [top + 104] <- 0x2a9f4290faf9 ; [sp + 48] 0x2a9f4290faf9 <JS Global Object>
    0x7fffb1037380: [top + 96] <- 0x2a9f42904121 <undefined> ; literal
    0x7fffb1037378: [top + 88] <- 0x1128dc94d3f1 ; r9 0x1128dc94d3f1 <a GIFEncoder with map 0x20e13f4c4f71>
    0x7fffb1037370: [top + 80] <- 0x3eff7e45a9ee ; caller's pc
    0x7fffb1037368: [top + 72] <- 0x7fffb10373a8 ; caller's fp
    0x7fffb1037360: [top + 64] <- 0x2d33a6224b61; context
    0x7fffb1037358: [top + 56] <- 0x2d33a6224d29; function
    0x7fffb1037350: [top + 48] <- 0x2a9f42904121 <undefined> ; literal
    0x7fffb1037348: [top + 40] <- 0x2a9f42904121 <undefined> ; literal
    0x7fffb1037340: [top + 32] <- 0x2a9f42904121 <undefined> ; literal
    0x7fffb1037338: [top + 24] <- 553 ; rdx (smi)
    0x7fffb1037330: [top + 16] <- 0x2a9f42904121 <undefined> ; literal
    0x7fffb1037328: [top + 8] <- 5003 ; rbx (smi)
    0x7fffb1037320: [top + 0] <- 4 ; [sp + 56] (smi)
[deoptimizing (eager): end 0x2d33a6224d29 compress @27 => node=189, pc=0x3eff7e45b404, state=NO_REGISTERS, alignment=no padding, took 0.027 ms]
--- FUNCTION SOURCE (compress) id{108,0} ---
(init_bits, outs) {
    var fcode, c, i, ent, disp, hsize_reg, hshift;

    // Set up the globals: g_init_bits - initial number of bits
    g_init_bits = init_bits;

    // Set up the necessary values
    clear_flg = false;
    n_bits = g_init_bits;
    maxcode = MAXCODE(n_bits);

    ClearCode = 1 << (init_bits - 1);
    EOFCode = ClearCode + 1;
    free_ent = ClearCode + 2;

    a_count = 0; // clear packet

    ent = nextPixel();

    hshift = 0;
    for (fcode = HSIZE; fcode < 65536; fcode *= 2) ++hshift;
    hshift = 8 - hshift; // set hash code range bound
    hsize_reg = HSIZE;
    cl_hash(hsize_reg); // clear hash table

    output(ClearCode, outs);

    outer_loop: while ((c = nextPixel()) != EOF) {
      fcode = (c << BITS) + ent;
      i = (c << hshift) ^ ent; // xor hashing
      if (htab[i] === fcode) {
        ent = codetab[i];
        continue;
      } else if (htab[i] >= 0) { // non-empty slot
        disp = hsize_reg - i; // secondary hash (after G. Knott)
        if (i === 0) disp = 1;
        do {
          if ((i -= disp) < 0) i += hsize_reg;
          if (htab[i] === fcode) {
            ent = codetab[i];
            continue outer_loop;
          }
        } while (htab[i] >= 0);
      }
      output(ent, outs);
      ent = c;
      if (free_ent < 1 << BITS) {
        codetab[i] = free_ent++; // code -> hashtable
        htab[i] = fcode;
      } else {
        cl_block(outs);
      }
    }

    // Put out the final code.
    output(ent, outs);
    output(EOFCode, outs);
  }

--- END ---
--- FUNCTION SOURCE (output) id{109,0} ---
(code, outs) {
    cur_accum &= masks[cur_bits];

    if (cur_bits > 0) cur_accum |= (code << cur_bits);
    else cur_accum = code;

    cur_bits += n_bits;

    while (cur_bits >= 8) {
      char_out((cur_accum & 0xff), outs);
      cur_accum >>= 8;
      cur_bits -= 8;
    }

    // If the next entry is going to be too big for the code size,
    // then increase it, if possible.
    if (free_ent > maxcode || clear_flg) {
      if (clear_flg) {
        maxcode = MAXCODE(n_bits = g_init_bits);
        clear_flg = false;
      } else {
        ++n_bits;
        if (n_bits == BITS) maxcode = 1 << BITS;
        else maxcode = MAXCODE(n_bits);
      }
    }

    if (code == EOFCode) {
      // At EOF, write the rest of the buffer.
      while (cur_bits > 0) {
        char_out((cur_accum & 0xff), outs);
        cur_accum >>= 8;
        cur_bits -= 8;
      }
      flush_char(outs);
    }
  }

--- END ---
--- FUNCTION SOURCE (learn) id{110,0} ---
() {
    var i;

    var lengthcount = pixels.length;
    var alphadec = 30 + ((samplefac - 1) / 3);
    var samplepixels = lengthcount / (3 * samplefac);
    var delta = ~~(samplepixels / ncycles);
    var alpha = initalpha;
    var radius = initradius;

    var rad = radius >> radiusbiasshift;

    if (rad <= 1) rad = 0;
    for (i = 0; i < rad; i++)
      radpower[i] = alpha * (((rad * rad - i * i) * radbias) / (rad * rad));

    var step;
    if (lengthcount < minpicturebytes) {
      samplefac = 1;
      step = 3;
    } else if ((lengthcount % prime1) !== 0) {
      step = 3 * prime1;
    } else if ((lengthcount % prime2) !== 0) {
      step = 3 * prime2;
    } else if ((lengthcount % prime3) !== 0)  {
      step = 3 * prime3;
    } else {
      step = 3 * prime4;
    }

    var b, g, r, j;
    var pix = 0; // current pixel

    i = 0;
    while (i < samplepixels) {
      b = (pixels[pix] & 0xff) << netbiasshift;
      g = (pixels[pix + 1] & 0xff) << netbiasshift;
      r = (pixels[pix + 2] & 0xff) << netbiasshift;

      j = contest(b, g, r);

      altersingle(alpha, j, b, g, r);
      if (rad !== 0) alterneigh(rad, j, b, g, r); // alter neighbours

      pix += step;
      if (pix >= lengthcount) pix -= lengthcount;

      i++;

      if (delta === 0) delta = 1;
      if (i % delta === 0) {
        alpha -= alpha / alphadec;
        radius -= radius / radiusdec;
        rad = radius >> radiusbiasshift;

        if (rad <= 1) rad = 0;
        for (j = 0; j < rad; j++)
          radpower[j] = alpha * (((rad * rad - j * j) * radbias) / (rad * rad));
      }
    }
  }

--- END ---
--- FUNCTION SOURCE (ArrayBuffer) id{111,0} ---
(a){
if(%_IsConstructCall()){
var b=ToPositiveInteger(a,'invalid_array_buffer_length');
%ArrayBufferInitialize(this,b);
}else{
throw MakeTypeError('constructor_not_function',["ArrayBuffer"]);
}
}

--- END ---
--- FUNCTION SOURCE (Float64ArrayConstructByArrayLike) id{112,0} ---
(a,b){
var c=b.length;
var d=ToPositiveInteger(c,"invalid_typed_array_length");
if(d>%_MaxSmi()){
throw MakeRangeError("invalid_typed_array_length");
}
if(!%TypedArrayInitializeFromArrayLike(a,8,b,d)){
for(var g=0;g<d;g++){
a[g]=b[g];
}
}
}

--- END ---
--- FUNCTION SOURCE (MAXCODE) id{113,0} ---
(n_bits) {
    return (1 << n_bits) - 1;
  }

--- END ---
--- FUNCTION SOURCE (cl_block) id{114,0} ---
(outs) {
    cl_hash(HSIZE);
    free_ent = ClearCode + 2;
    clear_flg = true;
    output(ClearCode, outs);
  }

--- END ---
--- FUNCTION SOURCE (Int32Array) id{115,0} ---
(a,b,c){
if(%_IsConstructCall()){
if((%_ClassOf(a)==='ArrayBuffer')){
Int32ArrayConstructByArrayBuffer(this,a,b,c);
}else if((typeof(a)==='number')||(typeof(a)==='string')||
(typeof(a)==='boolean')||(a===(void 0))){
Int32ArrayConstructByLength(this,a);
}else{
Int32ArrayConstructByArrayLike(this,a);
}
}else{
throw MakeTypeError("constructor_not_function",["Int32Array"])
}
}

--- END ---
--- FUNCTION SOURCE (Int32ArrayConstructByLength) id{116,0} ---
(a,b){
var c=(b===(void 0))?
0:ToPositiveInteger(b,"invalid_typed_array_length");
if(c>%_MaxSmi()){
throw MakeRangeError("invalid_typed_array_length");
}
var d=c*4;
if(d>%_TypedArrayMaxSizeInHeap()){
var g=new $ArrayBuffer(d);
%_TypedArrayInitialize(a,6,g,0,d);
}else{
%_TypedArrayInitialize(a,6,null,0,d);
}
}

--- END ---
--- FUNCTION SOURCE (GIFEncoder.writeShort) id{117,0} ---
(pValue) {
  this.writeByte(pValue & 0xFF);
  this.writeByte((pValue >> 8) & 0xFF);
};
--- END ---
--- FUNCTION SOURCE (ByteCapacitor.writeByte) id{117,1} ---
(val) {
  this.data.push(val);
};
--- END ---
INLINE (ByteCapacitor.writeByte) id{117,1} AS 1 AT <0:18>
INLINE (ByteCapacitor.writeByte) id{117,1} AS 2 AT <0:51>
--- FUNCTION SOURCE (isFunction) id{118,0} ---
(arg) {
  return typeof arg === 'function';
}

--- END ---
--- FUNCTION SOURCE (debugs.(anonymous function)) id{119,0} ---
() {};
--- END ---
