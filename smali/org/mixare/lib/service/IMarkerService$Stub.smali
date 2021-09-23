.class public abstract Lorg/mixare/lib/service/IMarkerService$Stub;
.super Landroid/os/Binder;
.source "IMarkerService.java"

# interfaces
.implements Lorg/mixare/lib/service/IMarkerService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mixare/lib/service/IMarkerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mixare/lib/service/IMarkerService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "org.mixare.lib.service.IMarkerService"

.field static final TRANSACTION_buildMarker:I = 0x2

.field static final TRANSACTION_calcPaint:I = 0xc

.field static final TRANSACTION_fClick:I = 0x16

.field static final TRANSACTION_getAltitude:I = 0x9

.field static final TRANSACTION_getCMarker:I = 0x1a

.field static final TRANSACTION_getColour:I = 0x14

.field static final TRANSACTION_getDistance:I = 0xe

.field static final TRANSACTION_getID:I = 0x10

.field static final TRANSACTION_getLatitude:I = 0x7

.field static final TRANSACTION_getLocationVector:I = 0xa

.field static final TRANSACTION_getLongitude:I = 0x8

.field static final TRANSACTION_getMaxObjects:I = 0x15

.field static final TRANSACTION_getPid:I = 0x1

.field static final TRANSACTION_getPluginName:I = 0x4

.field static final TRANSACTION_getSignMarker:I = 0x1b

.field static final TRANSACTION_getTitle:I = 0x5

.field static final TRANSACTION_getTxtLab:I = 0x1e

.field static final TRANSACTION_getURL:I = 0x6

.field static final TRANSACTION_getUnderline:I = 0x1c

.field static final TRANSACTION_isActive:I = 0x12

.field static final TRANSACTION_isVisible:I = 0x17

.field static final TRANSACTION_remoteDraw:I = 0xd

.field static final TRANSACTION_removeMarker:I = 0x3

.field static final TRANSACTION_setActive:I = 0x13

.field static final TRANSACTION_setDistance:I = 0xf

.field static final TRANSACTION_setExtrasParc:I = 0x18

.field static final TRANSACTION_setExtrasPrim:I = 0x19

.field static final TRANSACTION_setID:I = 0x11

.field static final TRANSACTION_setTxtLab:I = 0x1d

.field static final TRANSACTION_update:I = 0xb


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "org.mixare.lib.service.IMarkerService"

    .line 19
    invoke-virtual {p0, p0, v0}, Lorg/mixare/lib/service/IMarkerService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lorg/mixare/lib/service/IMarkerService;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "org.mixare.lib.service.IMarkerService"

    .line 30
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 31
    instance-of v1, v0, Lorg/mixare/lib/service/IMarkerService;

    if-eqz v1, :cond_1

    .line 32
    check-cast v0, Lorg/mixare/lib/service/IMarkerService;

    return-object v0

    .line 34
    :cond_1
    new-instance v0, Lorg/mixare/lib/service/IMarkerService$Stub$Proxy;

    invoke-direct {v0, p0}, Lorg/mixare/lib/service/IMarkerService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v12, p0

    move/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v13, p3

    const v2, 0x5f4e5446

    const/4 v14, 0x1

    if-eq v0, v2, :cond_b

    const/4 v2, 0x0

    const/4 v3, 0x0

    packed-switch v0, :pswitch_data_0

    .line 430
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    :pswitch_0
    const-string v0, "org.mixare.lib.service.IMarkerService"

    .line 415
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 417
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 418
    invoke-virtual {v12, v0}, Lorg/mixare/lib/service/IMarkerService$Stub;->getTxtLab(Ljava/lang/String;)Lorg/mixare/lib/gui/Label;

    move-result-object v0

    .line 419
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_0

    .line 421
    invoke-virtual {v13, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 422
    invoke-virtual {v0, v13, v14}, Lorg/mixare/lib/gui/Label;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 425
    :cond_0
    invoke-virtual {v13, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    return v14

    :pswitch_1
    const-string v0, "org.mixare.lib.service.IMarkerService"

    .line 399
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 401
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 403
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    .line 404
    sget-object v2, Lorg/mixare/lib/gui/Label;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lorg/mixare/lib/gui/Label;

    .line 409
    :cond_1
    invoke-virtual {v12, v0, v2}, Lorg/mixare/lib/service/IMarkerService$Stub;->setTxtLab(Ljava/lang/String;Lorg/mixare/lib/gui/Label;)V

    .line 410
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v14

    :pswitch_2
    const-string v0, "org.mixare.lib.service.IMarkerService"

    .line 389
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 391
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 392
    invoke-virtual {v12, v0}, Lorg/mixare/lib/service/IMarkerService$Stub;->getUnderline(Ljava/lang/String;)Z

    move-result v0

    .line 393
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 394
    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v14

    :pswitch_3
    const-string v0, "org.mixare.lib.service.IMarkerService"

    .line 373
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 375
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 376
    invoke-virtual {v12, v0}, Lorg/mixare/lib/service/IMarkerService$Stub;->getSignMarker(Ljava/lang/String;)Lorg/mixare/lib/render/MixVector;

    move-result-object v0

    .line 377
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_2

    .line 379
    invoke-virtual {v13, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 380
    invoke-virtual {v0, v13, v14}, Lorg/mixare/lib/render/MixVector;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 383
    :cond_2
    invoke-virtual {v13, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1
    return v14

    :pswitch_4
    const-string v0, "org.mixare.lib.service.IMarkerService"

    .line 357
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 359
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 360
    invoke-virtual {v12, v0}, Lorg/mixare/lib/service/IMarkerService$Stub;->getCMarker(Ljava/lang/String;)Lorg/mixare/lib/render/MixVector;

    move-result-object v0

    .line 361
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_3

    .line 363
    invoke-virtual {v13, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 364
    invoke-virtual {v0, v13, v14}, Lorg/mixare/lib/render/MixVector;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_2

    .line 367
    :cond_3
    invoke-virtual {v13, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_2
    return v14

    :pswitch_5
    const-string v0, "org.mixare.lib.service.IMarkerService"

    .line 339
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 341
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 343
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 345
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_4

    .line 346
    sget-object v2, Lorg/mixare/lib/marker/draw/PrimitiveProperty;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lorg/mixare/lib/marker/draw/PrimitiveProperty;

    .line 351
    :cond_4
    invoke-virtual {v12, v0, v3, v2}, Lorg/mixare/lib/service/IMarkerService$Stub;->setExtrasPrim(Ljava/lang/String;Ljava/lang/String;Lorg/mixare/lib/marker/draw/PrimitiveProperty;)V

    .line 352
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v14

    :pswitch_6
    const-string v0, "org.mixare.lib.service.IMarkerService"

    .line 321
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 323
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 325
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 327
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_5

    .line 328
    sget-object v2, Lorg/mixare/lib/marker/draw/ParcelableProperty;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lorg/mixare/lib/marker/draw/ParcelableProperty;

    .line 333
    :cond_5
    invoke-virtual {v12, v0, v3, v2}, Lorg/mixare/lib/service/IMarkerService$Stub;->setExtrasParc(Ljava/lang/String;Ljava/lang/String;Lorg/mixare/lib/marker/draw/ParcelableProperty;)V

    .line 334
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v14

    :pswitch_7
    const-string v0, "org.mixare.lib.service.IMarkerService"

    .line 311
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 313
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 314
    invoke-virtual {v12, v0}, Lorg/mixare/lib/service/IMarkerService$Stub;->isVisible(Ljava/lang/String;)Z

    move-result v0

    .line 315
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 316
    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v14

    :pswitch_8
    const-string v0, "org.mixare.lib.service.IMarkerService"

    .line 295
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 297
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 298
    invoke-virtual {v12, v0}, Lorg/mixare/lib/service/IMarkerService$Stub;->fClick(Ljava/lang/String;)Lorg/mixare/lib/marker/draw/ClickHandler;

    move-result-object v0

    .line 299
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_6

    .line 301
    invoke-virtual {v13, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 302
    invoke-virtual {v0, v13, v14}, Lorg/mixare/lib/marker/draw/ClickHandler;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_3

    .line 305
    :cond_6
    invoke-virtual {v13, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_3
    return v14

    :pswitch_9
    const-string v0, "org.mixare.lib.service.IMarkerService"

    .line 285
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 287
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 288
    invoke-virtual {v12, v0}, Lorg/mixare/lib/service/IMarkerService$Stub;->getMaxObjects(Ljava/lang/String;)I

    move-result v0

    .line 289
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 290
    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v14

    :pswitch_a
    const-string v0, "org.mixare.lib.service.IMarkerService"

    .line 275
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 277
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 278
    invoke-virtual {v12, v0}, Lorg/mixare/lib/service/IMarkerService$Stub;->getColour(Ljava/lang/String;)I

    move-result v0

    .line 279
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 280
    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v14

    :pswitch_b
    const-string v0, "org.mixare.lib.service.IMarkerService"

    .line 264
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 266
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 268
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_7

    const/4 v3, 0x1

    .line 269
    :cond_7
    invoke-virtual {v12, v0, v3}, Lorg/mixare/lib/service/IMarkerService$Stub;->setActive(Ljava/lang/String;Z)V

    .line 270
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v14

    :pswitch_c
    const-string v0, "org.mixare.lib.service.IMarkerService"

    .line 254
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 256
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 257
    invoke-virtual {v12, v0}, Lorg/mixare/lib/service/IMarkerService$Stub;->isActive(Ljava/lang/String;)Z

    move-result v0

    .line 258
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 259
    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v14

    :pswitch_d
    const-string v0, "org.mixare.lib.service.IMarkerService"

    .line 243
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 245
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 247
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 248
    invoke-virtual {v12, v0, v1}, Lorg/mixare/lib/service/IMarkerService$Stub;->setID(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v14

    :pswitch_e
    const-string v0, "org.mixare.lib.service.IMarkerService"

    .line 233
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 235
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 236
    invoke-virtual {v12, v0}, Lorg/mixare/lib/service/IMarkerService$Stub;->getID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 237
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 238
    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v14

    :pswitch_f
    const-string v0, "org.mixare.lib.service.IMarkerService"

    .line 222
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 224
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 226
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v1

    .line 227
    invoke-virtual {v12, v0, v1, v2}, Lorg/mixare/lib/service/IMarkerService$Stub;->setDistance(Ljava/lang/String;D)V

    .line 228
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v14

    :pswitch_10
    const-string v0, "org.mixare.lib.service.IMarkerService"

    .line 212
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 214
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 215
    invoke-virtual {v12, v0}, Lorg/mixare/lib/service/IMarkerService$Stub;->getDistance(Ljava/lang/String;)D

    move-result-wide v0

    .line 216
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 217
    invoke-virtual {v13, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    return v14

    :pswitch_11
    const-string v0, "org.mixare.lib.service.IMarkerService"

    .line 202
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 204
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 205
    invoke-virtual {v12, v0}, Lorg/mixare/lib/service/IMarkerService$Stub;->remoteDraw(Ljava/lang/String;)[Lorg/mixare/lib/marker/draw/DrawCommand;

    move-result-object v0

    .line 206
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 207
    invoke-virtual {v13, v0, v14}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    return v14

    :pswitch_12
    const-string v0, "org.mixare.lib.service.IMarkerService"

    .line 182
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 184
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 186
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_8

    .line 187
    sget-object v2, Lorg/mixare/lib/render/Camera;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/mixare/lib/render/Camera;

    .line 193
    :cond_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v3

    .line 195
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    .line 196
    invoke-virtual {v12, v0, v2, v3, v1}, Lorg/mixare/lib/service/IMarkerService$Stub;->calcPaint(Ljava/lang/String;Lorg/mixare/lib/render/Camera;FF)V

    .line 197
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v14

    :pswitch_13
    const-string v0, "org.mixare.lib.service.IMarkerService"

    .line 166
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 168
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 170
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_9

    .line 171
    sget-object v2, Landroid/location/Location;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroid/location/Location;

    .line 176
    :cond_9
    invoke-virtual {v12, v0, v2}, Lorg/mixare/lib/service/IMarkerService$Stub;->update(Ljava/lang/String;Landroid/location/Location;)V

    .line 177
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v14

    :pswitch_14
    const-string v0, "org.mixare.lib.service.IMarkerService"

    .line 150
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 152
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 153
    invoke-virtual {v12, v0}, Lorg/mixare/lib/service/IMarkerService$Stub;->getLocationVector(Ljava/lang/String;)Lorg/mixare/lib/render/MixVector;

    move-result-object v0

    .line 154
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_a

    .line 156
    invoke-virtual {v13, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 157
    invoke-virtual {v0, v13, v14}, Lorg/mixare/lib/render/MixVector;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_4

    .line 160
    :cond_a
    invoke-virtual {v13, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_4
    return v14

    :pswitch_15
    const-string v0, "org.mixare.lib.service.IMarkerService"

    .line 140
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 142
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 143
    invoke-virtual {v12, v0}, Lorg/mixare/lib/service/IMarkerService$Stub;->getAltitude(Ljava/lang/String;)D

    move-result-wide v0

    .line 144
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 145
    invoke-virtual {v13, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    return v14

    :pswitch_16
    const-string v0, "org.mixare.lib.service.IMarkerService"

    .line 130
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 132
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 133
    invoke-virtual {v12, v0}, Lorg/mixare/lib/service/IMarkerService$Stub;->getLongitude(Ljava/lang/String;)D

    move-result-wide v0

    .line 134
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 135
    invoke-virtual {v13, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    return v14

    :pswitch_17
    const-string v0, "org.mixare.lib.service.IMarkerService"

    .line 120
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 122
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 123
    invoke-virtual {v12, v0}, Lorg/mixare/lib/service/IMarkerService$Stub;->getLatitude(Ljava/lang/String;)D

    move-result-wide v0

    .line 124
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 125
    invoke-virtual {v13, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    return v14

    :pswitch_18
    const-string v0, "org.mixare.lib.service.IMarkerService"

    .line 110
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 112
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 113
    invoke-virtual {v12, v0}, Lorg/mixare/lib/service/IMarkerService$Stub;->getURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 114
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 115
    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v14

    :pswitch_19
    const-string v0, "org.mixare.lib.service.IMarkerService"

    .line 100
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 102
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 103
    invoke-virtual {v12, v0}, Lorg/mixare/lib/service/IMarkerService$Stub;->getTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 104
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 105
    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v14

    :pswitch_1a
    const-string v0, "org.mixare.lib.service.IMarkerService"

    .line 92
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 93
    invoke-virtual/range {p0 .. p0}, Lorg/mixare/lib/service/IMarkerService$Stub;->getPluginName()Ljava/lang/String;

    move-result-object v0

    .line 94
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 95
    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v14

    :pswitch_1b
    const-string v0, "org.mixare.lib.service.IMarkerService"

    .line 83
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 85
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 86
    invoke-virtual {v12, v0}, Lorg/mixare/lib/service/IMarkerService$Stub;->removeMarker(Ljava/lang/String;)V

    .line 87
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v14

    :pswitch_1c
    const-string v0, "org.mixare.lib.service.IMarkerService"

    .line 59
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 61
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 63
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 65
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v4

    .line 67
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v6

    .line 69
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v8

    .line 71
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 73
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 75
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    move-object/from16 v0, p0

    move v1, v2

    move-object v2, v3

    move-wide v3, v4

    move-wide v5, v6

    move-wide v7, v8

    move-object v9, v10

    move v10, v11

    move v11, v15

    .line 76
    invoke-virtual/range {v0 .. v11}, Lorg/mixare/lib/service/IMarkerService$Stub;->buildMarker(ILjava/lang/String;DDDLjava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    .line 77
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 78
    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v14

    :pswitch_1d
    const-string v0, "org.mixare.lib.service.IMarkerService"

    .line 51
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual/range {p0 .. p0}, Lorg/mixare/lib/service/IMarkerService$Stub;->getPid()I

    move-result v0

    .line 53
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 54
    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v14

    :cond_b
    const-string v0, "org.mixare.lib.service.IMarkerService"

    .line 46
    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v14

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
