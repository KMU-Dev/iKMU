.class abstract Lcom/google/android/gms/internal/places/zzhr;
.super Ljava/lang/Object;


# static fields
.field private static final zzul:Lcom/google/android/gms/internal/places/zzhr;

.field private static final zzum:Lcom/google/android/gms/internal/places/zzhr;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/places/zzht;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/places/zzht;-><init>(Lcom/google/android/gms/internal/places/zzhs;)V

    sput-object v0, Lcom/google/android/gms/internal/places/zzhr;->zzul:Lcom/google/android/gms/internal/places/zzhr;

    new-instance v0, Lcom/google/android/gms/internal/places/zzhu;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/places/zzhu;-><init>(Lcom/google/android/gms/internal/places/zzhs;)V

    sput-object v0, Lcom/google/android/gms/internal/places/zzhr;->zzum:Lcom/google/android/gms/internal/places/zzhr;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/places/zzhs;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/places/zzhr;-><init>()V

    return-void
.end method

.method static zzem()Lcom/google/android/gms/internal/places/zzhr;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/places/zzhr;->zzul:Lcom/google/android/gms/internal/places/zzhr;

    return-object v0
.end method

.method static zzen()Lcom/google/android/gms/internal/places/zzhr;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/places/zzhr;->zzum:Lcom/google/android/gms/internal/places/zzhr;

    return-object v0
.end method


# virtual methods
.method abstract zzb(Ljava/lang/Object;J)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<",
            "L:Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "J)",
            "Ljava/util/List<",
            "T",
            "L;",
            ">;"
        }
    .end annotation
.end method

.method abstract zzb(Ljava/lang/Object;Ljava/lang/Object;J)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<",
            "L:Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "J)V"
        }
    .end annotation
.end method

.method abstract zzc(Ljava/lang/Object;J)V
.end method
