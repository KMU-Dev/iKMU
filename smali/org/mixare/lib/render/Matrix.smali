.class public Lorg/mixare/lib/render/Matrix;
.super Ljava/lang/Object;
.source "Matrix.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lorg/mixare/lib/render/Matrix;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a1:F

.field public a2:F

.field public a3:F

.field public b1:F

.field public b2:F

.field public b3:F

.field public c1:F

.field public c2:F

.field public c3:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 44
    new-instance v0, Lorg/mixare/lib/render/Matrix$1;

    invoke-direct {v0}, Lorg/mixare/lib/render/Matrix$1;-><init>()V

    sput-object v0, Lorg/mixare/lib/render/Matrix;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    invoke-virtual {p0, p1}, Lorg/mixare/lib/render/Matrix;->readParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method private det2x2(FFFF)F
    .locals 0

    mul-float p1, p1, p4

    mul-float p2, p2, p3

    sub-float/2addr p1, p2

    return p1
.end method


# virtual methods
.method public add(Lorg/mixare/lib/render/Matrix;)V
    .locals 2

    .line 211
    iget v0, p0, Lorg/mixare/lib/render/Matrix;->a1:F

    iget v1, p1, Lorg/mixare/lib/render/Matrix;->a1:F

    add-float/2addr v0, v1

    iput v0, p0, Lorg/mixare/lib/render/Matrix;->a1:F

    .line 212
    iget v0, p0, Lorg/mixare/lib/render/Matrix;->a2:F

    iget v1, p1, Lorg/mixare/lib/render/Matrix;->a2:F

    add-float/2addr v0, v1

    iput v0, p0, Lorg/mixare/lib/render/Matrix;->a2:F

    .line 213
    iget v0, p0, Lorg/mixare/lib/render/Matrix;->a3:F

    iget v1, p1, Lorg/mixare/lib/render/Matrix;->a3:F

    add-float/2addr v0, v1

    iput v0, p0, Lorg/mixare/lib/render/Matrix;->a3:F

    .line 215
    iget v0, p0, Lorg/mixare/lib/render/Matrix;->b1:F

    iget v1, p1, Lorg/mixare/lib/render/Matrix;->b1:F

    add-float/2addr v0, v1

    iput v0, p0, Lorg/mixare/lib/render/Matrix;->b1:F

    .line 216
    iget v0, p0, Lorg/mixare/lib/render/Matrix;->b2:F

    iget v1, p1, Lorg/mixare/lib/render/Matrix;->b2:F

    add-float/2addr v0, v1

    iput v0, p0, Lorg/mixare/lib/render/Matrix;->b2:F

    .line 217
    iget v0, p0, Lorg/mixare/lib/render/Matrix;->b3:F

    iget v1, p1, Lorg/mixare/lib/render/Matrix;->b3:F

    add-float/2addr v0, v1

    iput v0, p0, Lorg/mixare/lib/render/Matrix;->b3:F

    .line 219
    iget v0, p0, Lorg/mixare/lib/render/Matrix;->c1:F

    iget v1, p1, Lorg/mixare/lib/render/Matrix;->c1:F

    add-float/2addr v0, v1

    iput v0, p0, Lorg/mixare/lib/render/Matrix;->c1:F

    .line 220
    iget v0, p0, Lorg/mixare/lib/render/Matrix;->c2:F

    iget v1, p1, Lorg/mixare/lib/render/Matrix;->c2:F

    add-float/2addr v0, v1

    iput v0, p0, Lorg/mixare/lib/render/Matrix;->c2:F

    .line 221
    iget v0, p0, Lorg/mixare/lib/render/Matrix;->c3:F

    iget p1, p1, Lorg/mixare/lib/render/Matrix;->c3:F

    add-float/2addr v0, p1

    iput v0, p0, Lorg/mixare/lib/render/Matrix;->c3:F

    return-void
.end method

.method public adj()V
    .locals 10

    .line 129
    iget v0, p0, Lorg/mixare/lib/render/Matrix;->a1:F

    .line 130
    iget v1, p0, Lorg/mixare/lib/render/Matrix;->a2:F

    .line 131
    iget v2, p0, Lorg/mixare/lib/render/Matrix;->a3:F

    .line 133
    iget v3, p0, Lorg/mixare/lib/render/Matrix;->b1:F

    .line 134
    iget v4, p0, Lorg/mixare/lib/render/Matrix;->b2:F

    .line 135
    iget v5, p0, Lorg/mixare/lib/render/Matrix;->b3:F

    .line 137
    iget v6, p0, Lorg/mixare/lib/render/Matrix;->c1:F

    .line 138
    iget v7, p0, Lorg/mixare/lib/render/Matrix;->c2:F

    .line 139
    iget v8, p0, Lorg/mixare/lib/render/Matrix;->c3:F

    .line 141
    invoke-direct {p0, v4, v5, v7, v8}, Lorg/mixare/lib/render/Matrix;->det2x2(FFFF)F

    move-result v9

    iput v9, p0, Lorg/mixare/lib/render/Matrix;->a1:F

    .line 142
    invoke-direct {p0, v2, v1, v8, v7}, Lorg/mixare/lib/render/Matrix;->det2x2(FFFF)F

    move-result v9

    iput v9, p0, Lorg/mixare/lib/render/Matrix;->a2:F

    .line 143
    invoke-direct {p0, v1, v2, v4, v5}, Lorg/mixare/lib/render/Matrix;->det2x2(FFFF)F

    move-result v9

    iput v9, p0, Lorg/mixare/lib/render/Matrix;->a3:F

    .line 145
    invoke-direct {p0, v5, v3, v8, v6}, Lorg/mixare/lib/render/Matrix;->det2x2(FFFF)F

    move-result v9

    iput v9, p0, Lorg/mixare/lib/render/Matrix;->b1:F

    .line 146
    invoke-direct {p0, v0, v2, v6, v8}, Lorg/mixare/lib/render/Matrix;->det2x2(FFFF)F

    move-result v8

    iput v8, p0, Lorg/mixare/lib/render/Matrix;->b2:F

    .line 147
    invoke-direct {p0, v2, v0, v5, v3}, Lorg/mixare/lib/render/Matrix;->det2x2(FFFF)F

    move-result v2

    iput v2, p0, Lorg/mixare/lib/render/Matrix;->b3:F

    .line 149
    invoke-direct {p0, v3, v4, v6, v7}, Lorg/mixare/lib/render/Matrix;->det2x2(FFFF)F

    move-result v2

    iput v2, p0, Lorg/mixare/lib/render/Matrix;->c1:F

    .line 150
    invoke-direct {p0, v1, v0, v7, v6}, Lorg/mixare/lib/render/Matrix;->det2x2(FFFF)F

    move-result v2

    iput v2, p0, Lorg/mixare/lib/render/Matrix;->c2:F

    .line 151
    invoke-direct {p0, v0, v1, v3, v4}, Lorg/mixare/lib/render/Matrix;->det2x2(FFFF)F

    move-result v0

    iput v0, p0, Lorg/mixare/lib/render/Matrix;->c3:F

    return-void
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public det()F
    .locals 3

    .line 192
    iget v0, p0, Lorg/mixare/lib/render/Matrix;->a1:F

    iget v1, p0, Lorg/mixare/lib/render/Matrix;->b2:F

    mul-float v0, v0, v1

    iget v1, p0, Lorg/mixare/lib/render/Matrix;->c3:F

    mul-float v0, v0, v1

    iget v1, p0, Lorg/mixare/lib/render/Matrix;->a1:F

    iget v2, p0, Lorg/mixare/lib/render/Matrix;->b3:F

    mul-float v1, v1, v2

    iget v2, p0, Lorg/mixare/lib/render/Matrix;->c2:F

    mul-float v1, v1, v2

    sub-float/2addr v0, v1

    iget v1, p0, Lorg/mixare/lib/render/Matrix;->a2:F

    iget v2, p0, Lorg/mixare/lib/render/Matrix;->b1:F

    mul-float v1, v1, v2

    iget v2, p0, Lorg/mixare/lib/render/Matrix;->c3:F

    mul-float v1, v1, v2

    sub-float/2addr v0, v1

    .line 193
    iget v1, p0, Lorg/mixare/lib/render/Matrix;->a2:F

    iget v2, p0, Lorg/mixare/lib/render/Matrix;->b3:F

    mul-float v1, v1, v2

    iget v2, p0, Lorg/mixare/lib/render/Matrix;->c1:F

    mul-float v1, v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/mixare/lib/render/Matrix;->a3:F

    iget v2, p0, Lorg/mixare/lib/render/Matrix;->b1:F

    mul-float v1, v1, v2

    iget v2, p0, Lorg/mixare/lib/render/Matrix;->c2:F

    mul-float v1, v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/mixare/lib/render/Matrix;->a3:F

    iget v2, p0, Lorg/mixare/lib/render/Matrix;->b2:F

    mul-float v1, v1, v2

    iget v2, p0, Lorg/mixare/lib/render/Matrix;->c1:F

    mul-float v1, v1, v2

    sub-float/2addr v0, v1

    return v0
.end method

.method public invert()V
    .locals 2

    .line 155
    invoke-virtual {p0}, Lorg/mixare/lib/render/Matrix;->det()F

    move-result v0

    .line 157
    invoke-virtual {p0}, Lorg/mixare/lib/render/Matrix;->adj()V

    const/high16 v1, 0x3f800000    # 1.0f

    div-float/2addr v1, v0

    .line 158
    invoke-virtual {p0, v1}, Lorg/mixare/lib/render/Matrix;->mult(F)V

    return-void
.end method

.method public mult(F)V
    .locals 1

    .line 197
    iget v0, p0, Lorg/mixare/lib/render/Matrix;->a1:F

    mul-float v0, v0, p1

    iput v0, p0, Lorg/mixare/lib/render/Matrix;->a1:F

    .line 198
    iget v0, p0, Lorg/mixare/lib/render/Matrix;->a2:F

    mul-float v0, v0, p1

    iput v0, p0, Lorg/mixare/lib/render/Matrix;->a2:F

    .line 199
    iget v0, p0, Lorg/mixare/lib/render/Matrix;->a3:F

    mul-float v0, v0, p1

    iput v0, p0, Lorg/mixare/lib/render/Matrix;->a3:F

    .line 201
    iget v0, p0, Lorg/mixare/lib/render/Matrix;->b1:F

    mul-float v0, v0, p1

    iput v0, p0, Lorg/mixare/lib/render/Matrix;->b1:F

    .line 202
    iget v0, p0, Lorg/mixare/lib/render/Matrix;->b2:F

    mul-float v0, v0, p1

    iput v0, p0, Lorg/mixare/lib/render/Matrix;->b2:F

    .line 203
    iget v0, p0, Lorg/mixare/lib/render/Matrix;->b3:F

    mul-float v0, v0, p1

    iput v0, p0, Lorg/mixare/lib/render/Matrix;->b3:F

    .line 205
    iget v0, p0, Lorg/mixare/lib/render/Matrix;->c1:F

    mul-float v0, v0, p1

    iput v0, p0, Lorg/mixare/lib/render/Matrix;->c1:F

    .line 206
    iget v0, p0, Lorg/mixare/lib/render/Matrix;->c2:F

    mul-float v0, v0, p1

    iput v0, p0, Lorg/mixare/lib/render/Matrix;->c2:F

    .line 207
    iget v0, p0, Lorg/mixare/lib/render/Matrix;->c3:F

    mul-float v0, v0, p1

    iput v0, p0, Lorg/mixare/lib/render/Matrix;->c3:F

    return-void
.end method

.method public prod(Lorg/mixare/lib/render/Matrix;)V
    .locals 4

    .line 225
    new-instance v0, Lorg/mixare/lib/render/Matrix;

    invoke-direct {v0}, Lorg/mixare/lib/render/Matrix;-><init>()V

    .line 226
    invoke-virtual {v0, p0}, Lorg/mixare/lib/render/Matrix;->set(Lorg/mixare/lib/render/Matrix;)V

    .line 228
    iget v1, v0, Lorg/mixare/lib/render/Matrix;->a1:F

    iget v2, p1, Lorg/mixare/lib/render/Matrix;->a1:F

    mul-float v1, v1, v2

    iget v2, v0, Lorg/mixare/lib/render/Matrix;->a2:F

    iget v3, p1, Lorg/mixare/lib/render/Matrix;->b1:F

    mul-float v2, v2, v3

    add-float/2addr v1, v2

    iget v2, v0, Lorg/mixare/lib/render/Matrix;->a3:F

    iget v3, p1, Lorg/mixare/lib/render/Matrix;->c1:F

    mul-float v2, v2, v3

    add-float/2addr v1, v2

    iput v1, p0, Lorg/mixare/lib/render/Matrix;->a1:F

    .line 229
    iget v1, v0, Lorg/mixare/lib/render/Matrix;->a1:F

    iget v2, p1, Lorg/mixare/lib/render/Matrix;->a2:F

    mul-float v1, v1, v2

    iget v2, v0, Lorg/mixare/lib/render/Matrix;->a2:F

    iget v3, p1, Lorg/mixare/lib/render/Matrix;->b2:F

    mul-float v2, v2, v3

    add-float/2addr v1, v2

    iget v2, v0, Lorg/mixare/lib/render/Matrix;->a3:F

    iget v3, p1, Lorg/mixare/lib/render/Matrix;->c2:F

    mul-float v2, v2, v3

    add-float/2addr v1, v2

    iput v1, p0, Lorg/mixare/lib/render/Matrix;->a2:F

    .line 230
    iget v1, v0, Lorg/mixare/lib/render/Matrix;->a1:F

    iget v2, p1, Lorg/mixare/lib/render/Matrix;->a3:F

    mul-float v1, v1, v2

    iget v2, v0, Lorg/mixare/lib/render/Matrix;->a2:F

    iget v3, p1, Lorg/mixare/lib/render/Matrix;->b3:F

    mul-float v2, v2, v3

    add-float/2addr v1, v2

    iget v2, v0, Lorg/mixare/lib/render/Matrix;->a3:F

    iget v3, p1, Lorg/mixare/lib/render/Matrix;->c3:F

    mul-float v2, v2, v3

    add-float/2addr v1, v2

    iput v1, p0, Lorg/mixare/lib/render/Matrix;->a3:F

    .line 232
    iget v1, v0, Lorg/mixare/lib/render/Matrix;->b1:F

    iget v2, p1, Lorg/mixare/lib/render/Matrix;->a1:F

    mul-float v1, v1, v2

    iget v2, v0, Lorg/mixare/lib/render/Matrix;->b2:F

    iget v3, p1, Lorg/mixare/lib/render/Matrix;->b1:F

    mul-float v2, v2, v3

    add-float/2addr v1, v2

    iget v2, v0, Lorg/mixare/lib/render/Matrix;->b3:F

    iget v3, p1, Lorg/mixare/lib/render/Matrix;->c1:F

    mul-float v2, v2, v3

    add-float/2addr v1, v2

    iput v1, p0, Lorg/mixare/lib/render/Matrix;->b1:F

    .line 233
    iget v1, v0, Lorg/mixare/lib/render/Matrix;->b1:F

    iget v2, p1, Lorg/mixare/lib/render/Matrix;->a2:F

    mul-float v1, v1, v2

    iget v2, v0, Lorg/mixare/lib/render/Matrix;->b2:F

    iget v3, p1, Lorg/mixare/lib/render/Matrix;->b2:F

    mul-float v2, v2, v3

    add-float/2addr v1, v2

    iget v2, v0, Lorg/mixare/lib/render/Matrix;->b3:F

    iget v3, p1, Lorg/mixare/lib/render/Matrix;->c2:F

    mul-float v2, v2, v3

    add-float/2addr v1, v2

    iput v1, p0, Lorg/mixare/lib/render/Matrix;->b2:F

    .line 234
    iget v1, v0, Lorg/mixare/lib/render/Matrix;->b1:F

    iget v2, p1, Lorg/mixare/lib/render/Matrix;->a3:F

    mul-float v1, v1, v2

    iget v2, v0, Lorg/mixare/lib/render/Matrix;->b2:F

    iget v3, p1, Lorg/mixare/lib/render/Matrix;->b3:F

    mul-float v2, v2, v3

    add-float/2addr v1, v2

    iget v2, v0, Lorg/mixare/lib/render/Matrix;->b3:F

    iget v3, p1, Lorg/mixare/lib/render/Matrix;->c3:F

    mul-float v2, v2, v3

    add-float/2addr v1, v2

    iput v1, p0, Lorg/mixare/lib/render/Matrix;->b3:F

    .line 236
    iget v1, v0, Lorg/mixare/lib/render/Matrix;->c1:F

    iget v2, p1, Lorg/mixare/lib/render/Matrix;->a1:F

    mul-float v1, v1, v2

    iget v2, v0, Lorg/mixare/lib/render/Matrix;->c2:F

    iget v3, p1, Lorg/mixare/lib/render/Matrix;->b1:F

    mul-float v2, v2, v3

    add-float/2addr v1, v2

    iget v2, v0, Lorg/mixare/lib/render/Matrix;->c3:F

    iget v3, p1, Lorg/mixare/lib/render/Matrix;->c1:F

    mul-float v2, v2, v3

    add-float/2addr v1, v2

    iput v1, p0, Lorg/mixare/lib/render/Matrix;->c1:F

    .line 237
    iget v1, v0, Lorg/mixare/lib/render/Matrix;->c1:F

    iget v2, p1, Lorg/mixare/lib/render/Matrix;->a2:F

    mul-float v1, v1, v2

    iget v2, v0, Lorg/mixare/lib/render/Matrix;->c2:F

    iget v3, p1, Lorg/mixare/lib/render/Matrix;->b2:F

    mul-float v2, v2, v3

    add-float/2addr v1, v2

    iget v2, v0, Lorg/mixare/lib/render/Matrix;->c3:F

    iget v3, p1, Lorg/mixare/lib/render/Matrix;->c2:F

    mul-float v2, v2, v3

    add-float/2addr v1, v2

    iput v1, p0, Lorg/mixare/lib/render/Matrix;->c2:F

    .line 238
    iget v1, v0, Lorg/mixare/lib/render/Matrix;->c1:F

    iget v2, p1, Lorg/mixare/lib/render/Matrix;->a3:F

    mul-float v1, v1, v2

    iget v2, v0, Lorg/mixare/lib/render/Matrix;->c2:F

    iget v3, p1, Lorg/mixare/lib/render/Matrix;->b3:F

    mul-float v2, v2, v3

    add-float/2addr v1, v2

    iget v0, v0, Lorg/mixare/lib/render/Matrix;->c3:F

    iget p1, p1, Lorg/mixare/lib/render/Matrix;->c3:F

    mul-float v0, v0, p1

    add-float/2addr v1, v0

    iput v1, p0, Lorg/mixare/lib/render/Matrix;->c3:F

    return-void
.end method

.method public readParcel(Landroid/os/Parcel;)V
    .locals 1

    .line 266
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lorg/mixare/lib/render/Matrix;->a1:F

    .line 267
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lorg/mixare/lib/render/Matrix;->a2:F

    .line 268
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lorg/mixare/lib/render/Matrix;->a3:F

    .line 269
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lorg/mixare/lib/render/Matrix;->b1:F

    .line 270
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lorg/mixare/lib/render/Matrix;->b2:F

    .line 271
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lorg/mixare/lib/render/Matrix;->b3:F

    .line 272
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lorg/mixare/lib/render/Matrix;->c1:F

    .line 273
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lorg/mixare/lib/render/Matrix;->c2:F

    .line 274
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result p1

    iput p1, p0, Lorg/mixare/lib/render/Matrix;->c3:F

    return-void
.end method

.method public set(FFFFFFFFF)V
    .locals 0

    .line 56
    iput p1, p0, Lorg/mixare/lib/render/Matrix;->a1:F

    .line 57
    iput p2, p0, Lorg/mixare/lib/render/Matrix;->a2:F

    .line 58
    iput p3, p0, Lorg/mixare/lib/render/Matrix;->a3:F

    .line 60
    iput p4, p0, Lorg/mixare/lib/render/Matrix;->b1:F

    .line 61
    iput p5, p0, Lorg/mixare/lib/render/Matrix;->b2:F

    .line 62
    iput p6, p0, Lorg/mixare/lib/render/Matrix;->b3:F

    .line 64
    iput p7, p0, Lorg/mixare/lib/render/Matrix;->c1:F

    .line 65
    iput p8, p0, Lorg/mixare/lib/render/Matrix;->c2:F

    .line 66
    iput p9, p0, Lorg/mixare/lib/render/Matrix;->c3:F

    return-void
.end method

.method public set(Lorg/mixare/lib/render/Matrix;)V
    .locals 1

    .line 70
    iget v0, p1, Lorg/mixare/lib/render/Matrix;->a1:F

    iput v0, p0, Lorg/mixare/lib/render/Matrix;->a1:F

    .line 71
    iget v0, p1, Lorg/mixare/lib/render/Matrix;->a2:F

    iput v0, p0, Lorg/mixare/lib/render/Matrix;->a2:F

    .line 72
    iget v0, p1, Lorg/mixare/lib/render/Matrix;->a3:F

    iput v0, p0, Lorg/mixare/lib/render/Matrix;->a3:F

    .line 74
    iget v0, p1, Lorg/mixare/lib/render/Matrix;->b1:F

    iput v0, p0, Lorg/mixare/lib/render/Matrix;->b1:F

    .line 75
    iget v0, p1, Lorg/mixare/lib/render/Matrix;->b2:F

    iput v0, p0, Lorg/mixare/lib/render/Matrix;->b2:F

    .line 76
    iget v0, p1, Lorg/mixare/lib/render/Matrix;->b3:F

    iput v0, p0, Lorg/mixare/lib/render/Matrix;->b3:F

    .line 78
    iget v0, p1, Lorg/mixare/lib/render/Matrix;->c1:F

    iput v0, p0, Lorg/mixare/lib/render/Matrix;->c1:F

    .line 79
    iget v0, p1, Lorg/mixare/lib/render/Matrix;->c2:F

    iput v0, p0, Lorg/mixare/lib/render/Matrix;->c2:F

    .line 80
    iget p1, p1, Lorg/mixare/lib/render/Matrix;->c3:F

    iput p1, p0, Lorg/mixare/lib/render/Matrix;->c3:F

    return-void
.end method

.method public toAt(Lorg/mixare/lib/render/MixVector;Lorg/mixare/lib/render/MixVector;)V
    .locals 12

    .line 109
    new-instance v0, Lorg/mixare/lib/render/MixVector;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v1}, Lorg/mixare/lib/render/MixVector;-><init>(FFF)V

    .line 111
    new-instance v1, Lorg/mixare/lib/render/MixVector;

    invoke-direct {v1}, Lorg/mixare/lib/render/MixVector;-><init>()V

    .line 112
    invoke-virtual {v1, p2}, Lorg/mixare/lib/render/MixVector;->set(Lorg/mixare/lib/render/MixVector;)V

    .line 113
    invoke-virtual {v1, p1}, Lorg/mixare/lib/render/MixVector;->sub(Lorg/mixare/lib/render/MixVector;)V

    const/high16 p1, -0x40800000    # -1.0f

    .line 114
    invoke-virtual {v1, p1}, Lorg/mixare/lib/render/MixVector;->mult(F)V

    .line 115
    invoke-virtual {v1}, Lorg/mixare/lib/render/MixVector;->norm()V

    .line 117
    new-instance p1, Lorg/mixare/lib/render/MixVector;

    invoke-direct {p1}, Lorg/mixare/lib/render/MixVector;-><init>()V

    .line 118
    invoke-virtual {p1, v0, v1}, Lorg/mixare/lib/render/MixVector;->cross(Lorg/mixare/lib/render/MixVector;Lorg/mixare/lib/render/MixVector;)V

    .line 119
    invoke-virtual {p1}, Lorg/mixare/lib/render/MixVector;->norm()V

    .line 121
    new-instance p2, Lorg/mixare/lib/render/MixVector;

    invoke-direct {p2}, Lorg/mixare/lib/render/MixVector;-><init>()V

    .line 122
    invoke-virtual {p2, v1, p1}, Lorg/mixare/lib/render/MixVector;->cross(Lorg/mixare/lib/render/MixVector;Lorg/mixare/lib/render/MixVector;)V

    .line 123
    invoke-virtual {p2}, Lorg/mixare/lib/render/MixVector;->norm()V

    .line 125
    iget v3, p1, Lorg/mixare/lib/render/MixVector;->x:F

    iget v4, p1, Lorg/mixare/lib/render/MixVector;->y:F

    iget v5, p1, Lorg/mixare/lib/render/MixVector;->z:F

    iget v6, p2, Lorg/mixare/lib/render/MixVector;->x:F

    iget v7, p2, Lorg/mixare/lib/render/MixVector;->y:F

    iget v8, p2, Lorg/mixare/lib/render/MixVector;->z:F

    iget v9, v1, Lorg/mixare/lib/render/MixVector;->x:F

    iget v10, v1, Lorg/mixare/lib/render/MixVector;->y:F

    iget v11, v1, Lorg/mixare/lib/render/MixVector;->z:F

    move-object v2, p0

    invoke-virtual/range {v2 .. v11}, Lorg/mixare/lib/render/Matrix;->set(FFFFFFFFF)V

    return-void
.end method

.method public toIdentity()V
    .locals 10

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    move-object v0, p0

    .line 84
    invoke-virtual/range {v0 .. v9}, Lorg/mixare/lib/render/Matrix;->set(FFFFFFFFF)V

    return-void
.end method

.method public toScale(F)V
    .locals 10

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move v1, p1

    move v5, p1

    move v9, p1

    .line 105
    invoke-virtual/range {v0 .. v9}, Lorg/mixare/lib/render/Matrix;->set(FFFFFFFFF)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 243
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[ ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lorg/mixare/lib/render/Matrix;->a1:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/mixare/lib/render/Matrix;->a2:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/mixare/lib/render/Matrix;->a3:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ") ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/mixare/lib/render/Matrix;->b1:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/mixare/lib/render/Matrix;->b2:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    iget v1, p0, Lorg/mixare/lib/render/Matrix;->b3:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ") ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/mixare/lib/render/Matrix;->c1:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/mixare/lib/render/Matrix;->c2:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/mixare/lib/render/Matrix;->c3:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ") ]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toXRot(F)V
    .locals 10

    .line 88
    invoke-static {p1}, Landroid/util/FloatMath;->cos(F)F

    move-result v5

    .line 89
    invoke-static {p1}, Landroid/util/FloatMath;->sin(F)F

    move-result v0

    neg-float v6, v0

    invoke-static {p1}, Landroid/util/FloatMath;->sin(F)F

    move-result v8

    .line 90
    invoke-static {p1}, Landroid/util/FloatMath;->cos(F)F

    move-result v9

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    .line 88
    invoke-virtual/range {v0 .. v9}, Lorg/mixare/lib/render/Matrix;->set(FFFFFFFFF)V

    return-void
.end method

.method public toYRot(F)V
    .locals 10

    .line 94
    invoke-static {p1}, Landroid/util/FloatMath;->cos(F)F

    move-result v1

    invoke-static {p1}, Landroid/util/FloatMath;->sin(F)F

    move-result v3

    .line 95
    invoke-static {p1}, Landroid/util/FloatMath;->sin(F)F

    move-result v0

    neg-float v7, v0

    invoke-static {p1}, Landroid/util/FloatMath;->cos(F)F

    move-result v9

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    .line 94
    invoke-virtual/range {v0 .. v9}, Lorg/mixare/lib/render/Matrix;->set(FFFFFFFFF)V

    return-void
.end method

.method public toZRot(F)V
    .locals 10

    .line 99
    invoke-static {p1}, Landroid/util/FloatMath;->cos(F)F

    move-result v1

    invoke-static {p1}, Landroid/util/FloatMath;->sin(F)F

    move-result v0

    neg-float v2, v0

    .line 100
    invoke-static {p1}, Landroid/util/FloatMath;->sin(F)F

    move-result v4

    invoke-static {p1}, Landroid/util/FloatMath;->cos(F)F

    move-result v5

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    move-object v0, p0

    .line 99
    invoke-virtual/range {v0 .. v9}, Lorg/mixare/lib/render/Matrix;->set(FFFFFFFFF)V

    return-void
.end method

.method public transpose()V
    .locals 9

    .line 162
    iget v0, p0, Lorg/mixare/lib/render/Matrix;->a1:F

    .line 163
    iget v1, p0, Lorg/mixare/lib/render/Matrix;->a2:F

    .line 164
    iget v2, p0, Lorg/mixare/lib/render/Matrix;->a3:F

    .line 166
    iget v3, p0, Lorg/mixare/lib/render/Matrix;->b1:F

    .line 167
    iget v4, p0, Lorg/mixare/lib/render/Matrix;->b2:F

    .line 168
    iget v5, p0, Lorg/mixare/lib/render/Matrix;->b3:F

    .line 170
    iget v6, p0, Lorg/mixare/lib/render/Matrix;->c1:F

    .line 171
    iget v7, p0, Lorg/mixare/lib/render/Matrix;->c2:F

    .line 172
    iget v8, p0, Lorg/mixare/lib/render/Matrix;->c3:F

    .line 174
    iput v1, p0, Lorg/mixare/lib/render/Matrix;->b1:F

    .line 175
    iput v3, p0, Lorg/mixare/lib/render/Matrix;->a2:F

    .line 176
    iput v7, p0, Lorg/mixare/lib/render/Matrix;->b3:F

    .line 177
    iput v5, p0, Lorg/mixare/lib/render/Matrix;->c2:F

    .line 178
    iput v2, p0, Lorg/mixare/lib/render/Matrix;->c1:F

    .line 179
    iput v6, p0, Lorg/mixare/lib/render/Matrix;->a3:F

    .line 181
    iput v0, p0, Lorg/mixare/lib/render/Matrix;->a1:F

    .line 182
    iput v4, p0, Lorg/mixare/lib/render/Matrix;->b2:F

    .line 183
    iput v8, p0, Lorg/mixare/lib/render/Matrix;->c3:F

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 254
    iget p2, p0, Lorg/mixare/lib/render/Matrix;->a1:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 255
    iget p2, p0, Lorg/mixare/lib/render/Matrix;->a2:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 256
    iget p2, p0, Lorg/mixare/lib/render/Matrix;->a3:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 257
    iget p2, p0, Lorg/mixare/lib/render/Matrix;->b1:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 258
    iget p2, p0, Lorg/mixare/lib/render/Matrix;->b2:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 259
    iget p2, p0, Lorg/mixare/lib/render/Matrix;->b3:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 260
    iget p2, p0, Lorg/mixare/lib/render/Matrix;->c1:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 261
    iget p2, p0, Lorg/mixare/lib/render/Matrix;->c2:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 262
    iget p2, p0, Lorg/mixare/lib/render/Matrix;->c3:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    return-void
.end method
