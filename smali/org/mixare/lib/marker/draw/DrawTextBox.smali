.class public Lorg/mixare/lib/marker/draw/DrawTextBox;
.super Lorg/mixare/lib/marker/draw/DrawCommand;
.source "DrawTextBox.java"


# static fields
.field private static CLASS_NAME:Ljava/lang/String; = "org.mixare.lib.marker.draw.DrawTextBox"

.field private static PROPERTY_NAME_DISTANCE:Ljava/lang/String; = "distance"

.field private static PROPERTY_NAME_SIGNMARKER:Ljava/lang/String; = "signmarker"

.field private static PROPERTY_NAME_TEXTBLOCK:Ljava/lang/String; = "textblock"

.field private static PROPERTY_NAME_TEXTLAB:Ljava/lang/String; = "textlab"

.field private static PROPERTY_NAME_TITLE:Ljava/lang/String; = "title"

.field private static PROPERTY_NAME_UNDERLINE:Ljava/lang/String; = "underline"

.field private static PROPERTY_NAME_VISIBLE:Ljava/lang/String; = "visible"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/Boolean;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/Boolean;Lorg/mixare/lib/gui/TextObj;Lorg/mixare/lib/gui/Label;Lorg/mixare/lib/render/MixVector;)V
    .locals 1

    .line 62
    sget-object v0, Lorg/mixare/lib/marker/draw/DrawTextBox;->CLASS_NAME:Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/mixare/lib/marker/draw/DrawCommand;-><init>(Ljava/lang/String;)V

    .line 63
    sget-object v0, Lorg/mixare/lib/marker/draw/DrawTextBox;->PROPERTY_NAME_VISIBLE:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lorg/mixare/lib/marker/draw/DrawTextBox;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 64
    sget-object p1, Lorg/mixare/lib/marker/draw/DrawTextBox;->PROPERTY_NAME_DISTANCE:Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lorg/mixare/lib/marker/draw/DrawTextBox;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 65
    sget-object p1, Lorg/mixare/lib/marker/draw/DrawTextBox;->PROPERTY_NAME_TITLE:Ljava/lang/String;

    invoke-virtual {p0, p1, p3}, Lorg/mixare/lib/marker/draw/DrawTextBox;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 66
    sget-object p1, Lorg/mixare/lib/marker/draw/DrawTextBox;->PROPERTY_NAME_UNDERLINE:Ljava/lang/String;

    invoke-virtual {p0, p1, p4}, Lorg/mixare/lib/marker/draw/DrawTextBox;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 67
    sget-object p1, Lorg/mixare/lib/marker/draw/DrawTextBox;->PROPERTY_NAME_TEXTBLOCK:Ljava/lang/String;

    new-instance p2, Lorg/mixare/lib/marker/draw/ParcelableProperty;

    const-string p3, "org.mixare.lib.gui.TextObj"

    invoke-direct {p2, p3, p5}, Lorg/mixare/lib/marker/draw/ParcelableProperty;-><init>(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {p0, p1, p2}, Lorg/mixare/lib/marker/draw/DrawTextBox;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 68
    sget-object p1, Lorg/mixare/lib/marker/draw/DrawTextBox;->PROPERTY_NAME_TEXTLAB:Ljava/lang/String;

    new-instance p2, Lorg/mixare/lib/marker/draw/ParcelableProperty;

    const-string p3, "org.mixare.lib.gui.Label"

    invoke-direct {p2, p3, p6}, Lorg/mixare/lib/marker/draw/ParcelableProperty;-><init>(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {p0, p1, p2}, Lorg/mixare/lib/marker/draw/DrawTextBox;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 69
    sget-object p1, Lorg/mixare/lib/marker/draw/DrawTextBox;->PROPERTY_NAME_SIGNMARKER:Ljava/lang/String;

    new-instance p2, Lorg/mixare/lib/marker/draw/ParcelableProperty;

    const-string p3, "org.mixare.lib.render.MixVector"

    invoke-direct {p2, p3, p7}, Lorg/mixare/lib/marker/draw/ParcelableProperty;-><init>(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {p0, p1, p2}, Lorg/mixare/lib/marker/draw/DrawTextBox;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static init(Landroid/os/Parcel;)Lorg/mixare/lib/marker/draw/DrawTextBox;
    .locals 10

    .line 50
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    .line 51
    invoke-virtual {p0}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    .line 52
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 53
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v5

    .line 54
    const-class v0, Lorg/mixare/lib/marker/draw/ParcelableProperty;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lorg/mixare/lib/marker/draw/ParcelableProperty;

    .line 55
    const-class v1, Lorg/mixare/lib/marker/draw/ParcelableProperty;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lorg/mixare/lib/marker/draw/ParcelableProperty;

    .line 56
    const-class v6, Lorg/mixare/lib/marker/draw/ParcelableProperty;

    invoke-virtual {v6}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    invoke-virtual {p0, v6}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Lorg/mixare/lib/marker/draw/ParcelableProperty;

    .line 57
    new-instance v9, Lorg/mixare/lib/marker/draw/DrawTextBox;

    invoke-virtual {v0}, Lorg/mixare/lib/marker/draw/ParcelableProperty;->getObject()Landroid/os/Parcelable;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lorg/mixare/lib/gui/TextObj;

    .line 58
    invoke-virtual {v1}, Lorg/mixare/lib/marker/draw/ParcelableProperty;->getObject()Landroid/os/Parcelable;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lorg/mixare/lib/gui/Label;

    invoke-virtual {p0}, Lorg/mixare/lib/marker/draw/ParcelableProperty;->getObject()Landroid/os/Parcelable;

    move-result-object p0

    move-object v8, p0

    check-cast v8, Lorg/mixare/lib/render/MixVector;

    move-object v1, v9

    .line 57
    invoke-direct/range {v1 .. v8}, Lorg/mixare/lib/marker/draw/DrawTextBox;-><init>(Ljava/lang/Boolean;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/Boolean;Lorg/mixare/lib/gui/TextObj;Lorg/mixare/lib/gui/Label;Lorg/mixare/lib/render/MixVector;)V

    return-object v9
.end method


# virtual methods
.method public draw(Lorg/mixare/lib/gui/PaintScreen;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    .line 75
    sget-object v1, Lorg/mixare/lib/marker/draw/DrawTextBox;->PROPERTY_NAME_DISTANCE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/mixare/lib/marker/draw/DrawTextBox;->getDoubleProperty(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    .line 76
    sget-object v3, Lorg/mixare/lib/marker/draw/DrawTextBox;->PROPERTY_NAME_TITLE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lorg/mixare/lib/marker/draw/DrawTextBox;->getStringProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 77
    sget-object v4, Lorg/mixare/lib/marker/draw/DrawTextBox;->PROPERTY_NAME_TEXTBLOCK:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lorg/mixare/lib/marker/draw/DrawTextBox;->getParcelableProperty(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Lorg/mixare/lib/gui/TextObj;

    .line 78
    sget-object v4, Lorg/mixare/lib/marker/draw/DrawTextBox;->PROPERTY_NAME_UNDERLINE:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lorg/mixare/lib/marker/draw/DrawTextBox;->getBooleanProperty(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v4

    .line 79
    sget-object v5, Lorg/mixare/lib/marker/draw/DrawTextBox;->PROPERTY_NAME_VISIBLE:Ljava/lang/String;

    invoke-virtual {v0, v5}, Lorg/mixare/lib/marker/draw/DrawTextBox;->getBooleanProperty(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v8

    .line 80
    sget-object v5, Lorg/mixare/lib/marker/draw/DrawTextBox;->PROPERTY_NAME_SIGNMARKER:Ljava/lang/String;

    invoke-virtual {v0, v5}, Lorg/mixare/lib/marker/draw/DrawTextBox;->getMixVectorProperty(Ljava/lang/String;)Lorg/mixare/lib/render/MixVector;

    move-result-object v9

    .line 81
    sget-object v5, Lorg/mixare/lib/marker/draw/DrawTextBox;->PROPERTY_NAME_TEXTLAB:Ljava/lang/String;

    invoke-virtual {v0, v5}, Lorg/mixare/lib/marker/draw/DrawTextBox;->getParcelableProperty(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Lorg/mixare/lib/gui/Label;

    if-nez v5, :cond_0

    .line 84
    new-instance v5, Lorg/mixare/lib/gui/Label;

    invoke-direct {v5}, Lorg/mixare/lib/gui/Label;-><init>()V

    :cond_0
    move-object v10, v5

    .line 87
    invoke-virtual/range {p1 .. p1}, Lorg/mixare/lib/gui/PaintScreen;->getHeight()I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x41200000    # 10.0f

    div-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    const/4 v11, 0x1

    add-int/2addr v5, v11

    int-to-float v12, v5

    .line 91
    new-instance v5, Ljava/text/DecimalFormat;

    const-string v6, "@#"

    invoke-direct {v5, v6}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    const-wide v13, 0x408f400000000000L    # 1000.0

    cmpg-double v6, v1, v13

    if-gez v6, :cond_1

    .line 93
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v6, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " ("

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1, v2}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "m)"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_0
    move-wide v13, v1

    move-object v2, v3

    goto :goto_1

    :cond_1
    div-double/2addr v1, v13

    .line 96
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v6, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " ("

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1, v2}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "km)"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 99
    :goto_1
    new-instance v15, Lorg/mixare/lib/gui/TextObj;

    const/high16 v16, 0x40000000    # 2.0f

    div-float v1, v12, v16

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    add-int/2addr v1, v11

    int-to-float v3, v1

    const/high16 v5, 0x437a0000    # 250.0f

    .line 100
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    move-object v1, v15

    move v4, v5

    move-object/from16 v5, p1

    .line 99
    invoke-direct/range {v1 .. v6}, Lorg/mixare/lib/gui/TextObj;-><init>(Ljava/lang/String;FFLorg/mixare/lib/gui/PaintScreen;Z)V

    .line 102
    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    const-wide/high16 v1, 0x4059000000000000L    # 100.0

    const/16 v3, 0x80

    const/16 v4, 0xff

    cmpg-double v5, v13, v1

    if-gez v5, :cond_2

    const/16 v1, 0x34

    .line 105
    invoke-static {v3, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v15, v1}, Lorg/mixare/lib/gui/TextObj;->setBgColor(I)V

    const/16 v1, 0x68

    const/16 v2, 0x5b

    .line 106
    invoke-static {v4, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {v15, v1}, Lorg/mixare/lib/gui/TextObj;->setBorderColor(I)V

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    .line 108
    invoke-static {v3, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v15, v1}, Lorg/mixare/lib/gui/TextObj;->setBgColor(I)V

    .line 109
    invoke-static {v4, v4, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {v15, v1}, Lorg/mixare/lib/gui/TextObj;->setBorderColor(I)V

    .line 112
    :goto_2
    invoke-virtual {v10, v15}, Lorg/mixare/lib/gui/Label;->prepare(Lorg/mixare/lib/gui/ScreenObj;)V

    const/high16 v1, 0x3f800000    # 1.0f

    .line 114
    invoke-virtual {v7, v1}, Lorg/mixare/lib/gui/PaintScreen;->setStrokeWidth(F)V

    .line 115
    invoke-virtual {v7, v11}, Lorg/mixare/lib/gui/PaintScreen;->setFill(Z)V

    .line 116
    iget v1, v9, Lorg/mixare/lib/render/MixVector;->x:F

    .line 117
    invoke-virtual {v10}, Lorg/mixare/lib/gui/Label;->getWidth()F

    move-result v2

    div-float v2, v2, v16

    sub-float v3, v1, v2

    iget v1, v9, Lorg/mixare/lib/render/MixVector;->y:F

    add-float v4, v1, v12

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    move-object/from16 v1, p1

    move-object v2, v10

    .line 116
    invoke-virtual/range {v1 .. v6}, Lorg/mixare/lib/gui/PaintScreen;->paintObj(Lorg/mixare/lib/gui/ScreenObj;FFFF)V

    :cond_3
    return-void
.end method
