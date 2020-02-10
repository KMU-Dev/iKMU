.class final enum Lcom/google/android/gms/internal/places/zzgv;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/gms/internal/places/zzgv;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum zzrw:Lcom/google/android/gms/internal/places/zzgv;

.field public static final enum zzrx:Lcom/google/android/gms/internal/places/zzgv;

.field public static final enum zzry:Lcom/google/android/gms/internal/places/zzgv;

.field public static final enum zzrz:Lcom/google/android/gms/internal/places/zzgv;

.field private static final synthetic zzsb:[Lcom/google/android/gms/internal/places/zzgv;


# instance fields
.field private final zzsa:Z


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/google/android/gms/internal/places/zzgv;

    const-string v1, "SCALAR"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/gms/internal/places/zzgv;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/google/android/gms/internal/places/zzgv;->zzrw:Lcom/google/android/gms/internal/places/zzgv;

    new-instance v0, Lcom/google/android/gms/internal/places/zzgv;

    const-string v1, "VECTOR"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/google/android/gms/internal/places/zzgv;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/google/android/gms/internal/places/zzgv;->zzrx:Lcom/google/android/gms/internal/places/zzgv;

    new-instance v0, Lcom/google/android/gms/internal/places/zzgv;

    const-string v1, "PACKED_VECTOR"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v3}, Lcom/google/android/gms/internal/places/zzgv;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/google/android/gms/internal/places/zzgv;->zzry:Lcom/google/android/gms/internal/places/zzgv;

    new-instance v0, Lcom/google/android/gms/internal/places/zzgv;

    const-string v1, "MAP"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v2}, Lcom/google/android/gms/internal/places/zzgv;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/google/android/gms/internal/places/zzgv;->zzrz:Lcom/google/android/gms/internal/places/zzgv;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/google/android/gms/internal/places/zzgv;

    sget-object v1, Lcom/google/android/gms/internal/places/zzgv;->zzrw:Lcom/google/android/gms/internal/places/zzgv;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/gms/internal/places/zzgv;->zzrx:Lcom/google/android/gms/internal/places/zzgv;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/gms/internal/places/zzgv;->zzry:Lcom/google/android/gms/internal/places/zzgv;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/gms/internal/places/zzgv;->zzrz:Lcom/google/android/gms/internal/places/zzgv;

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/android/gms/internal/places/zzgv;->zzsb:[Lcom/google/android/gms/internal/places/zzgv;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-boolean p3, p0, Lcom/google/android/gms/internal/places/zzgv;->zzsa:Z

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/places/zzgv;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/places/zzgv;->zzsb:[Lcom/google/android/gms/internal/places/zzgv;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/places/zzgv;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/places/zzgv;

    return-object v0
.end method
