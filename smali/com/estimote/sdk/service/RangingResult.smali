.class public final Lcom/estimote/sdk/service/RangingResult;
.super Ljava/lang/Object;
.source "RangingResult.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/estimote/sdk/service/RangingResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final beacons:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/estimote/sdk/Beacon;",
            ">;"
        }
    .end annotation
.end field

.field public final region:Lcom/estimote/sdk/Region;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 65
    new-instance v0, Lcom/estimote/sdk/service/RangingResult$1;

    invoke-direct {v0}, Lcom/estimote/sdk/service/RangingResult$1;-><init>()V

    sput-object v0, Lcom/estimote/sdk/service/RangingResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lcom/estimote/sdk/Region;Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/estimote/sdk/Region;",
            "Ljava/util/Collection<",
            "Lcom/estimote/sdk/Beacon;",
            ">;)V"
        }
    .end annotation

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "region cannot be null"

    .line 30
    invoke-static {p1, v0}, Lcom/estimote/sdk/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/estimote/sdk/Region;

    iput-object p1, p0, Lcom/estimote/sdk/service/RangingResult;->region:Lcom/estimote/sdk/Region;

    .line 31
    new-instance p1, Ljava/util/ArrayList;

    const-string v0, "beacons cannot be null"

    invoke-static {p2, v0}, Lcom/estimote/sdk/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Collection;

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/estimote/sdk/service/RangingResult;->beacons:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_4

    .line 38
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 40
    :cond_1
    check-cast p1, Lcom/estimote/sdk/service/RangingResult;

    .line 42
    iget-object v2, p0, Lcom/estimote/sdk/service/RangingResult;->beacons:Ljava/util/List;

    iget-object v3, p1, Lcom/estimote/sdk/service/RangingResult;->beacons:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    .line 43
    :cond_2
    iget-object v2, p0, Lcom/estimote/sdk/service/RangingResult;->region:Lcom/estimote/sdk/Region;

    iget-object p1, p1, Lcom/estimote/sdk/service/RangingResult;->region:Lcom/estimote/sdk/Region;

    invoke-virtual {v2, p1}, Lcom/estimote/sdk/Region;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v1

    :cond_3
    return v0

    :cond_4
    :goto_0
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 50
    iget-object v0, p0, Lcom/estimote/sdk/service/RangingResult;->region:Lcom/estimote/sdk/Region;

    invoke-virtual {v0}, Lcom/estimote/sdk/Region;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 51
    iget-object v1, p0, Lcom/estimote/sdk/service/RangingResult;->beacons:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 57
    invoke-static {p0}, Lcom/estimote/sdk/internal/Objects;->toStringHelper(Ljava/lang/Object;)Lcom/estimote/sdk/internal/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "region"

    iget-object v2, p0, Lcom/estimote/sdk/service/RangingResult;->region:Lcom/estimote/sdk/Region;

    invoke-virtual {v0, v1, v2}, Lcom/estimote/sdk/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/estimote/sdk/internal/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "beacons"

    iget-object v2, p0, Lcom/estimote/sdk/service/RangingResult;->beacons:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/estimote/sdk/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/estimote/sdk/internal/Objects$ToStringHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estimote/sdk/internal/Objects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/estimote/sdk/service/RangingResult;->region:Lcom/estimote/sdk/Region;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 89
    iget-object p2, p0, Lcom/estimote/sdk/service/RangingResult;->beacons:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    return-void
.end method
