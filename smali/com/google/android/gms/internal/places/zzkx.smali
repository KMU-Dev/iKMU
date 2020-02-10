.class public final Lcom/google/android/gms/internal/places/zzkx;
.super Ljava/lang/Object;


# static fields
.field private static final zzaaq:I = 0xb

.field private static final zzaar:I = 0xc

.field private static final zzaas:I = 0x10

.field private static final zzaat:I = 0x1a

.field public static final zzaau:[I

.field private static final zzaav:[J

.field private static final zzaaw:[F

.field private static final zzaax:[D

.field private static final zzaay:[Z

.field public static final zzaaz:[Ljava/lang/String;

.field public static final zzaba:[[B

.field public static final zzabb:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    new-array v1, v0, [I

    sput-object v1, Lcom/google/android/gms/internal/places/zzkx;->zzaau:[I

    new-array v1, v0, [J

    sput-object v1, Lcom/google/android/gms/internal/places/zzkx;->zzaav:[J

    new-array v1, v0, [F

    sput-object v1, Lcom/google/android/gms/internal/places/zzkx;->zzaaw:[F

    new-array v1, v0, [D

    sput-object v1, Lcom/google/android/gms/internal/places/zzkx;->zzaax:[D

    new-array v1, v0, [Z

    sput-object v1, Lcom/google/android/gms/internal/places/zzkx;->zzaay:[Z

    new-array v1, v0, [Ljava/lang/String;

    sput-object v1, Lcom/google/android/gms/internal/places/zzkx;->zzaaz:[Ljava/lang/String;

    new-array v1, v0, [[B

    sput-object v1, Lcom/google/android/gms/internal/places/zzkx;->zzaba:[[B

    new-array v0, v0, [B

    sput-object v0, Lcom/google/android/gms/internal/places/zzkx;->zzabb:[B

    return-void
.end method

.method public static final zzc(Lcom/google/android/gms/internal/places/zzkl;I)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/places/zzkl;->getPosition()I

    move-result v0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/places/zzkl;->zzai(I)Z

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/places/zzkl;->zzcj()I

    move-result v2

    if-ne v2, p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/places/zzkl;->zzai(I)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/places/zzkl;->zzu(II)V

    return v1
.end method
