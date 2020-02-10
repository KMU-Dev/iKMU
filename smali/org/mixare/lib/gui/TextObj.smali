.class public Lorg/mixare/lib/gui/TextObj;
.super Ljava/lang/Object;
.source "TextObj.java"

# interfaces
.implements Lorg/mixare/lib/gui/ScreenObj;
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lorg/mixare/lib/gui/TextObj;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field areaHeight:F

.field areaWidth:F

.field bgColor:I

.field borderColor:I

.field fontSize:F

.field height:F

.field lineHeight:F

.field lineWidths:[F

.field lines:[Ljava/lang/String;

.field maxLineWidth:F

.field pad:F

.field textColor:I

.field textShadowColor:I

.field txt:Ljava/lang/String;

.field underline:Z

.field width:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 72
    new-instance v0, Lorg/mixare/lib/gui/TextObj$1;

    invoke-direct {v0}, Lorg/mixare/lib/gui/TextObj$1;-><init>()V

    sput-object v0, Lorg/mixare/lib/gui/TextObj;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    invoke-virtual {p0, p1}, Lorg/mixare/lib/gui/TextObj;->readParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;FFIIIIFLorg/mixare/lib/gui/PaintScreen;Z)V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput p4, p0, Lorg/mixare/lib/gui/TextObj;->borderColor:I

    .line 58
    iput p5, p0, Lorg/mixare/lib/gui/TextObj;->bgColor:I

    .line 59
    iput p6, p0, Lorg/mixare/lib/gui/TextObj;->textColor:I

    .line 60
    iput p7, p0, Lorg/mixare/lib/gui/TextObj;->textShadowColor:I

    .line 61
    iput p8, p0, Lorg/mixare/lib/gui/TextObj;->pad:F

    .line 62
    iput-boolean p10, p0, Lorg/mixare/lib/gui/TextObj;->underline:Z

    .line 65
    :try_start_0
    invoke-direct {p0, p1, p2, p3, p9}, Lorg/mixare/lib/gui/TextObj;->prepTxt(Ljava/lang/String;FFLorg/mixare/lib/gui/PaintScreen;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 67
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const-string p1, "TEXT PARSE ERROR"

    const/high16 p2, 0x41400000    # 12.0f

    const/high16 p3, 0x43480000    # 200.0f

    .line 68
    invoke-direct {p0, p1, p2, p3, p9}, Lorg/mixare/lib/gui/TextObj;->prepTxt(Ljava/lang/String;FFLorg/mixare/lib/gui/PaintScreen;)V

    :goto_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;FFLorg/mixare/lib/gui/PaintScreen;Z)V
    .locals 12

    const/16 v0, 0xff

    .line 48
    invoke-static {v0, v0, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result v5

    const/4 v1, 0x0

    const/16 v2, 0x80

    .line 49
    invoke-static {v2, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v6

    invoke-static {v0, v0, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result v7

    const/16 v0, 0x40

    invoke-static {v0, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v8

    .line 50
    invoke-virtual/range {p4 .. p4}, Lorg/mixare/lib/gui/PaintScreen;->getTextAsc()F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float v9, v0, v1

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object/from16 v10, p4

    move/from16 v11, p5

    invoke-direct/range {v1 .. v11}, Lorg/mixare/lib/gui/TextObj;-><init>(Ljava/lang/String;FFIIIIFLorg/mixare/lib/gui/PaintScreen;Z)V

    return-void
.end method

.method private prepTxt(Ljava/lang/String;FFLorg/mixare/lib/gui/PaintScreen;)V
    .locals 7

    .line 88
    invoke-virtual {p4, p2}, Lorg/mixare/lib/gui/PaintScreen;->setFontSize(F)V

    .line 90
    iput-object p1, p0, Lorg/mixare/lib/gui/TextObj;->txt:Ljava/lang/String;

    .line 91
    iput p2, p0, Lorg/mixare/lib/gui/TextObj;->fontSize:F

    .line 92
    iget p1, p0, Lorg/mixare/lib/gui/TextObj;->pad:F

    const/high16 p2, 0x40000000    # 2.0f

    mul-float p1, p1, p2

    sub-float/2addr p3, p1

    iput p3, p0, Lorg/mixare/lib/gui/TextObj;->areaWidth:F

    .line 93
    invoke-virtual {p4}, Lorg/mixare/lib/gui/PaintScreen;->getTextAsc()F

    move-result p1

    invoke-virtual {p4}, Lorg/mixare/lib/gui/PaintScreen;->getTextDesc()F

    move-result p3

    add-float/2addr p1, p3

    .line 94
    invoke-virtual {p4}, Lorg/mixare/lib/gui/PaintScreen;->getTextLead()F

    move-result p3

    add-float/2addr p1, p3

    .line 93
    iput p1, p0, Lorg/mixare/lib/gui/TextObj;->lineHeight:F

    .line 96
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 98
    invoke-static {}, Ljava/text/BreakIterator;->getWordInstance()Ljava/text/BreakIterator;

    move-result-object p3

    .line 99
    iget-object v0, p0, Lorg/mixare/lib/gui/TextObj;->txt:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/text/BreakIterator;->setText(Ljava/lang/String;)V

    .line 101
    invoke-virtual {p3}, Ljava/text/BreakIterator;->first()I

    move-result v0

    .line 102
    invoke-virtual {p3}, Ljava/text/BreakIterator;->next()I

    move-result v1

    move v2, v0

    move v0, v1

    move v1, v2

    :goto_0
    const/4 v3, -0x1

    if-ne v0, v3, :cond_2

    .line 121
    iget-object p3, p0, Lorg/mixare/lib/gui/TextObj;->txt:Ljava/lang/String;

    invoke-virtual {p3, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p3

    .line 122
    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 124
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p3

    new-array p3, p3, [Ljava/lang/String;

    iput-object p3, p0, Lorg/mixare/lib/gui/TextObj;->lines:[Ljava/lang/String;

    .line 125
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p3

    new-array p3, p3, [F

    iput-object p3, p0, Lorg/mixare/lib/gui/TextObj;->lineWidths:[F

    .line 126
    iget-object p3, p0, Lorg/mixare/lib/gui/TextObj;->lines:[Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    const/4 p1, 0x0

    .line 128
    iput p1, p0, Lorg/mixare/lib/gui/TextObj;->maxLineWidth:F

    const/4 p1, 0x0

    .line 129
    :goto_1
    iget-object p3, p0, Lorg/mixare/lib/gui/TextObj;->lines:[Ljava/lang/String;

    array-length p3, p3

    if-lt p1, p3, :cond_0

    .line 134
    iget p1, p0, Lorg/mixare/lib/gui/TextObj;->maxLineWidth:F

    iput p1, p0, Lorg/mixare/lib/gui/TextObj;->areaWidth:F

    .line 135
    iget p1, p0, Lorg/mixare/lib/gui/TextObj;->lineHeight:F

    iget-object p3, p0, Lorg/mixare/lib/gui/TextObj;->lines:[Ljava/lang/String;

    array-length p3, p3

    int-to-float p3, p3

    mul-float p1, p1, p3

    iput p1, p0, Lorg/mixare/lib/gui/TextObj;->areaHeight:F

    .line 137
    iget p1, p0, Lorg/mixare/lib/gui/TextObj;->areaWidth:F

    iget p3, p0, Lorg/mixare/lib/gui/TextObj;->pad:F

    mul-float p3, p3, p2

    add-float/2addr p1, p3

    iput p1, p0, Lorg/mixare/lib/gui/TextObj;->width:F

    .line 138
    iget p1, p0, Lorg/mixare/lib/gui/TextObj;->areaHeight:F

    iget p3, p0, Lorg/mixare/lib/gui/TextObj;->pad:F

    mul-float p3, p3, p2

    add-float/2addr p1, p3

    iput p1, p0, Lorg/mixare/lib/gui/TextObj;->height:F

    return-void

    .line 130
    :cond_0
    iget-object p3, p0, Lorg/mixare/lib/gui/TextObj;->lineWidths:[F

    iget-object v0, p0, Lorg/mixare/lib/gui/TextObj;->lines:[Ljava/lang/String;

    aget-object v0, v0, p1

    invoke-virtual {p4, v0}, Lorg/mixare/lib/gui/PaintScreen;->getTextWidth(Ljava/lang/String;)F

    move-result v0

    aput v0, p3, p1

    .line 131
    iget p3, p0, Lorg/mixare/lib/gui/TextObj;->maxLineWidth:F

    iget-object v0, p0, Lorg/mixare/lib/gui/TextObj;->lineWidths:[F

    aget v0, v0, p1

    cmpg-float p3, p3, v0

    if-gez p3, :cond_1

    .line 132
    iget-object p3, p0, Lorg/mixare/lib/gui/TextObj;->lineWidths:[F

    aget p3, p3, p1

    iput p3, p0, Lorg/mixare/lib/gui/TextObj;->maxLineWidth:F

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 105
    :cond_2
    iget-object v3, p0, Lorg/mixare/lib/gui/TextObj;->txt:Ljava/lang/String;

    invoke-virtual {v3, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 106
    iget-object v4, p0, Lorg/mixare/lib/gui/TextObj;->txt:Ljava/lang/String;

    invoke-virtual {v4, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 107
    invoke-virtual {p4, v3}, Lorg/mixare/lib/gui/PaintScreen;->getTextWidth(Ljava/lang/String;)F

    move-result v3

    .line 109
    iget v5, p0, Lorg/mixare/lib/gui/TextObj;->areaWidth:F

    cmpl-float v3, v3, v5

    if-lez v3, :cond_4

    .line 112
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_3

    .line 113
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    move v1, v2

    .line 119
    :cond_4
    invoke-virtual {p3}, Ljava/text/BreakIterator;->next()I

    move-result v2

    move v6, v2

    move v2, v0

    move v0, v6

    goto/16 :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getHeight()F
    .locals 1

    .line 178
    iget v0, p0, Lorg/mixare/lib/gui/TextObj;->height:F

    return v0
.end method

.method public getWidth()F
    .locals 1

    .line 174
    iget v0, p0, Lorg/mixare/lib/gui/TextObj;->width:F

    return v0
.end method

.method public paint(Lorg/mixare/lib/gui/PaintScreen;)V
    .locals 8

    .line 142
    iget v0, p0, Lorg/mixare/lib/gui/TextObj;->fontSize:F

    invoke-virtual {p1, v0}, Lorg/mixare/lib/gui/PaintScreen;->setFontSize(F)V

    const/4 v0, 0x1

    .line 144
    invoke-virtual {p1, v0}, Lorg/mixare/lib/gui/PaintScreen;->setFill(Z)V

    .line 145
    iget v1, p0, Lorg/mixare/lib/gui/TextObj;->bgColor:I

    invoke-virtual {p1, v1}, Lorg/mixare/lib/gui/PaintScreen;->setColor(I)V

    .line 146
    iget v1, p0, Lorg/mixare/lib/gui/TextObj;->width:F

    iget v2, p0, Lorg/mixare/lib/gui/TextObj;->height:F

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v3, v1, v2}, Lorg/mixare/lib/gui/PaintScreen;->paintRect(FFFF)V

    const/4 v1, 0x0

    .line 148
    invoke-virtual {p1, v1}, Lorg/mixare/lib/gui/PaintScreen;->setFill(Z)V

    .line 149
    iget v2, p0, Lorg/mixare/lib/gui/TextObj;->borderColor:I

    invoke-virtual {p1, v2}, Lorg/mixare/lib/gui/PaintScreen;->setColor(I)V

    .line 150
    iget v2, p0, Lorg/mixare/lib/gui/TextObj;->width:F

    iget v4, p0, Lorg/mixare/lib/gui/TextObj;->height:F

    invoke-virtual {p1, v3, v3, v2, v4}, Lorg/mixare/lib/gui/PaintScreen;->paintRect(FFFF)V

    .line 153
    :goto_0
    iget-object v2, p0, Lorg/mixare/lib/gui/TextObj;->lines:[Ljava/lang/String;

    array-length v2, v2

    if-lt v1, v2, :cond_0

    return-void

    .line 154
    :cond_0
    iget-object v2, p0, Lorg/mixare/lib/gui/TextObj;->lines:[Ljava/lang/String;

    aget-object v2, v2, v1

    .line 165
    invoke-virtual {p1, v0}, Lorg/mixare/lib/gui/PaintScreen;->setFill(Z)V

    .line 166
    invoke-virtual {p1, v3}, Lorg/mixare/lib/gui/PaintScreen;->setStrokeWidth(F)V

    .line 167
    iget v4, p0, Lorg/mixare/lib/gui/TextObj;->textColor:I

    invoke-virtual {p1, v4}, Lorg/mixare/lib/gui/PaintScreen;->setColor(I)V

    .line 168
    iget v4, p0, Lorg/mixare/lib/gui/TextObj;->pad:F

    iget v5, p0, Lorg/mixare/lib/gui/TextObj;->pad:F

    iget v6, p0, Lorg/mixare/lib/gui/TextObj;->lineHeight:F

    int-to-float v7, v1

    mul-float v6, v6, v7

    add-float/2addr v5, v6

    invoke-virtual {p1}, Lorg/mixare/lib/gui/PaintScreen;->getTextAsc()F

    move-result v6

    add-float/2addr v5, v6

    iget-boolean v6, p0, Lorg/mixare/lib/gui/TextObj;->underline:Z

    invoke-virtual {p1, v4, v5, v2, v6}, Lorg/mixare/lib/gui/PaintScreen;->paintText(FFLjava/lang/String;Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public readParcel(Landroid/os/Parcel;)V
    .locals 1

    .line 214
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/mixare/lib/gui/TextObj;->txt:Ljava/lang/String;

    .line 215
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lorg/mixare/lib/gui/TextObj;->fontSize:F

    .line 216
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lorg/mixare/lib/gui/TextObj;->width:F

    .line 217
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lorg/mixare/lib/gui/TextObj;->height:F

    .line 218
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lorg/mixare/lib/gui/TextObj;->areaWidth:F

    .line 219
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lorg/mixare/lib/gui/TextObj;->areaHeight:F

    .line 220
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/mixare/lib/gui/TextObj;->lines:[Ljava/lang/String;

    .line 221
    invoke-virtual {p1}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object v0

    iput-object v0, p0, Lorg/mixare/lib/gui/TextObj;->lineWidths:[F

    .line 222
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lorg/mixare/lib/gui/TextObj;->lineHeight:F

    .line 223
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lorg/mixare/lib/gui/TextObj;->maxLineWidth:F

    .line 224
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lorg/mixare/lib/gui/TextObj;->pad:F

    .line 225
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lorg/mixare/lib/gui/TextObj;->borderColor:I

    .line 226
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lorg/mixare/lib/gui/TextObj;->bgColor:I

    .line 227
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lorg/mixare/lib/gui/TextObj;->textColor:I

    .line 228
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lorg/mixare/lib/gui/TextObj;->textShadowColor:I

    .line 229
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lorg/mixare/lib/gui/TextObj;->underline:Z

    return-void
.end method

.method public setBgColor(I)V
    .locals 0

    .line 184
    iput p1, p0, Lorg/mixare/lib/gui/TextObj;->bgColor:I

    return-void
.end method

.method public setBorderColor(I)V
    .locals 0

    .line 181
    iput p1, p0, Lorg/mixare/lib/gui/TextObj;->borderColor:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 195
    iget-object p2, p0, Lorg/mixare/lib/gui/TextObj;->txt:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 196
    iget p2, p0, Lorg/mixare/lib/gui/TextObj;->fontSize:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 197
    iget p2, p0, Lorg/mixare/lib/gui/TextObj;->width:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 198
    iget p2, p0, Lorg/mixare/lib/gui/TextObj;->height:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 199
    iget p2, p0, Lorg/mixare/lib/gui/TextObj;->areaWidth:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 200
    iget p2, p0, Lorg/mixare/lib/gui/TextObj;->areaHeight:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 201
    iget-object p2, p0, Lorg/mixare/lib/gui/TextObj;->lines:[Ljava/lang/String;

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    const/4 p2, 0x1

    .line 202
    new-array p2, p2, [[F

    iget-object v0, p0, Lorg/mixare/lib/gui/TextObj;->lineWidths:[F

    const/4 v1, 0x0

    aput-object v0, p2, v1

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 203
    iget p2, p0, Lorg/mixare/lib/gui/TextObj;->lineHeight:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 204
    iget p2, p0, Lorg/mixare/lib/gui/TextObj;->maxLineWidth:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 205
    iget p2, p0, Lorg/mixare/lib/gui/TextObj;->pad:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 206
    iget p2, p0, Lorg/mixare/lib/gui/TextObj;->borderColor:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 207
    iget p2, p0, Lorg/mixare/lib/gui/TextObj;->bgColor:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 208
    iget p2, p0, Lorg/mixare/lib/gui/TextObj;->textColor:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 209
    iget p2, p0, Lorg/mixare/lib/gui/TextObj;->textShadowColor:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 210
    iget-boolean p2, p0, Lorg/mixare/lib/gui/TextObj;->underline:Z

    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
