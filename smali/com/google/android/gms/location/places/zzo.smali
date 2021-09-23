.class public final Lcom/google/android/gms/location/places/zzo;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# annotations
.annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Class;
    creator = "UserDataTypeCreator"
.end annotation

.annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Reserved;
    value = {
        0x3e8
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/location/places/zzo;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzff:Lcom/google/android/gms/location/places/zzo;

.field private static final zzfg:Lcom/google/android/gms/location/places/zzo;

.field private static final zzfh:Lcom/google/android/gms/location/places/zzo;

.field private static final zzfi:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/android/gms/location/places/zzo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final type:Ljava/lang/String;
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        id = 0x1
    .end annotation
.end field

.field private final zzfj:I
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        id = 0x2
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "test_type"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/gms/location/places/zzo;->zzb(Ljava/lang/String;I)Lcom/google/android/gms/location/places/zzo;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/location/places/zzo;->zzff:Lcom/google/android/gms/location/places/zzo;

    const-string v0, "labeled_place"

    const/4 v1, 0x6

    invoke-static {v0, v1}, Lcom/google/android/gms/location/places/zzo;->zzb(Ljava/lang/String;I)Lcom/google/android/gms/location/places/zzo;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/location/places/zzo;->zzfg:Lcom/google/android/gms/location/places/zzo;

    const-string v0, "here_content"

    const/4 v1, 0x7

    invoke-static {v0, v1}, Lcom/google/android/gms/location/places/zzo;->zzb(Ljava/lang/String;I)Lcom/google/android/gms/location/places/zzo;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/location/places/zzo;->zzfh:Lcom/google/android/gms/location/places/zzo;

    sget-object v0, Lcom/google/android/gms/location/places/zzo;->zzff:Lcom/google/android/gms/location/places/zzo;

    sget-object v1, Lcom/google/android/gms/location/places/zzo;->zzfg:Lcom/google/android/gms/location/places/zzo;

    sget-object v2, Lcom/google/android/gms/location/places/zzo;->zzfh:Lcom/google/android/gms/location/places/zzo;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/common/util/CollectionUtils;->setOf(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/location/places/zzo;->zzfi:Ljava/util/Set;

    new-instance v0, Lcom/google/android/gms/location/places/zzp;

    invoke-direct {v0}, Lcom/google/android/gms/location/places/zzp;-><init>()V

    sput-object v0, Lcom/google/android/gms/location/places/zzo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x1
        .end annotation
    .end param
    .param p2    # I
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x2
        .end annotation
    .end param
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Constructor;
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/location/places/zzo;->type:Ljava/lang/String;

    iput p2, p0, Lcom/google/android/gms/location/places/zzo;->zzfj:I

    return-void
.end method

.method private static zzb(Ljava/lang/String;I)Lcom/google/android/gms/location/places/zzo;
    .locals 1

    new-instance v0, Lcom/google/android/gms/location/places/zzo;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/location/places/zzo;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/location/places/zzo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/google/android/gms/location/places/zzo;

    iget-object v1, p0, Lcom/google/android/gms/location/places/zzo;->type:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/location/places/zzo;->type:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/google/android/gms/location/places/zzo;->zzfj:I

    iget p1, p1, Lcom/google/android/gms/location/places/zzo;->zzfj:I

    if-ne v1, p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/location/places/zzo;->type:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/location/places/zzo;->type:Ljava/lang/String;

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    move-result p2

    iget-object v0, p0, Lcom/google/android/gms/location/places/zzo;->type:Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p1, v1, v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget v0, p0, Lcom/google/android/gms/location/places/zzo;->zzfj:I

    const/4 v1, 0x2

    invoke-static {p1, v1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    invoke-static {p1, p2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    return-void
.end method
