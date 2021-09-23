.class public Lorg/mixare/lib/marker/draw/DrawImage;
.super Lorg/mixare/lib/marker/draw/DrawCommand;
.source "DrawImage.java"


# static fields
.field private static CLASS_NAME:Ljava/lang/String; = "org.mixare.lib.marker.draw.DrawImage"

.field private static PROPERTY_NAME_IMAGE:Ljava/lang/String; = "image"

.field private static PROPERTY_NAME_SIGNMARKER:Ljava/lang/String; = "signMarker"

.field private static PROPERTY_NAME_VISIBLE:Ljava/lang/String; = "visible"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(ZLorg/mixare/lib/render/MixVector;Landroid/graphics/Bitmap;)V
    .locals 2

    .line 51
    sget-object v0, Lorg/mixare/lib/marker/draw/DrawImage;->CLASS_NAME:Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/mixare/lib/marker/draw/DrawCommand;-><init>(Ljava/lang/String;)V

    .line 52
    sget-object v0, Lorg/mixare/lib/marker/draw/DrawImage;->PROPERTY_NAME_VISIBLE:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lorg/mixare/lib/marker/draw/DrawImage;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 53
    sget-object p1, Lorg/mixare/lib/marker/draw/DrawImage;->PROPERTY_NAME_SIGNMARKER:Ljava/lang/String;

    new-instance v0, Lorg/mixare/lib/marker/draw/ParcelableProperty;

    const-string v1, "org.mixare.lib.render.MixVector"

    invoke-direct {v0, v1, p2}, Lorg/mixare/lib/marker/draw/ParcelableProperty;-><init>(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {p0, p1, v0}, Lorg/mixare/lib/marker/draw/DrawImage;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 54
    sget-object p1, Lorg/mixare/lib/marker/draw/DrawImage;->PROPERTY_NAME_IMAGE:Ljava/lang/String;

    new-instance p2, Lorg/mixare/lib/marker/draw/ParcelableProperty;

    const-string v0, "android.graphics.Bitmap"

    invoke-direct {p2, v0, p3}, Lorg/mixare/lib/marker/draw/ParcelableProperty;-><init>(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {p0, p1, p2}, Lorg/mixare/lib/marker/draw/DrawImage;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static init(Landroid/os/Parcel;)Lorg/mixare/lib/marker/draw/DrawImage;
    .locals 3

    .line 44
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    .line 45
    const-class v1, Lorg/mixare/lib/marker/draw/ParcelableProperty;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lorg/mixare/lib/marker/draw/ParcelableProperty;

    .line 46
    const-class v2, Lorg/mixare/lib/marker/draw/ParcelableProperty;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Lorg/mixare/lib/marker/draw/ParcelableProperty;

    .line 47
    new-instance v2, Lorg/mixare/lib/marker/draw/DrawImage;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v1}, Lorg/mixare/lib/marker/draw/ParcelableProperty;->getObject()Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lorg/mixare/lib/render/MixVector;

    invoke-virtual {p0}, Lorg/mixare/lib/marker/draw/ParcelableProperty;->getObject()Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Landroid/graphics/Bitmap;

    invoke-direct {v2, v0, v1, p0}, Lorg/mixare/lib/marker/draw/DrawImage;-><init>(ZLorg/mixare/lib/render/MixVector;Landroid/graphics/Bitmap;)V

    return-object v2
.end method


# virtual methods
.method public draw(Lorg/mixare/lib/gui/PaintScreen;)V
    .locals 4

    .line 59
    sget-object v0, Lorg/mixare/lib/marker/draw/DrawImage;->PROPERTY_NAME_VISIBLE:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/mixare/lib/marker/draw/DrawImage;->getBooleanProperty(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 60
    sget-object v0, Lorg/mixare/lib/marker/draw/DrawImage;->PROPERTY_NAME_SIGNMARKER:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/mixare/lib/marker/draw/DrawImage;->getMixVectorProperty(Ljava/lang/String;)Lorg/mixare/lib/render/MixVector;

    move-result-object v0

    .line 61
    sget-object v1, Lorg/mixare/lib/marker/draw/DrawImage;->PROPERTY_NAME_IMAGE:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lorg/mixare/lib/marker/draw/DrawImage;->getBitmapProperty(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    const/16 v2, 0x9b

    const/16 v3, 0xff

    .line 63
    invoke-static {v2, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-virtual {p1, v2}, Lorg/mixare/lib/gui/PaintScreen;->setColor(I)V

    if-nez v1, :cond_0

    const-string p1, "mixare-lib"

    const-string v0, "bitmap = null"

    .line 65
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 68
    :cond_0
    iget v2, v0, Lorg/mixare/lib/render/MixVector;->x:F

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iget v0, v0, Lorg/mixare/lib/render/MixVector;->y:F

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sub-float/2addr v0, v3

    invoke-virtual {p1, v1, v2, v0}, Lorg/mixare/lib/gui/PaintScreen;->paintBitmap(Landroid/graphics/Bitmap;FF)V

    :cond_1
    return-void
.end method
