.class final Lcom/google/android/gms/internal/places/zzie;
.super Ljava/lang/Object;


# static fields
.field private static final zzux:Lcom/google/android/gms/internal/places/zzic;

.field private static final zzuy:Lcom/google/android/gms/internal/places/zzic;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/places/zzie;->zzeu()Lcom/google/android/gms/internal/places/zzic;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/places/zzie;->zzux:Lcom/google/android/gms/internal/places/zzic;

    new-instance v0, Lcom/google/android/gms/internal/places/zzid;

    invoke-direct {v0}, Lcom/google/android/gms/internal/places/zzid;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/places/zzie;->zzuy:Lcom/google/android/gms/internal/places/zzic;

    return-void
.end method

.method static zzes()Lcom/google/android/gms/internal/places/zzic;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/places/zzie;->zzux:Lcom/google/android/gms/internal/places/zzic;

    return-object v0
.end method

.method static zzet()Lcom/google/android/gms/internal/places/zzic;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/places/zzie;->zzuy:Lcom/google/android/gms/internal/places/zzic;

    return-object v0
.end method

.method private static zzeu()Lcom/google/android/gms/internal/places/zzic;
    .locals 3

    :try_start_0
    const-string v0, "com.google.protobuf.MapFieldSchemaFull"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/places/zzic;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method
