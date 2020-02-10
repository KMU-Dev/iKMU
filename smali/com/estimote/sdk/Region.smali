.class public Lcom/estimote/sdk/Region;
.super Ljava/lang/Object;
.source "Region.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/estimote/sdk/Region$State;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/estimote/sdk/Region;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final identifier:Ljava/lang/String;

.field private final major:Ljava/lang/Integer;

.field private final minor:Ljava/lang/Integer;

.field private final proximityUUID:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 106
    new-instance v0, Lcom/estimote/sdk/Region$1;

    invoke-direct {v0}, Lcom/estimote/sdk/Region$1;-><init>()V

    sput-object v0, Lcom/estimote/sdk/Region;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/estimote/sdk/Region;->identifier:Ljava/lang/String;

    .line 120
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/estimote/sdk/Region;->proximityUUID:Ljava/lang/String;

    .line 121
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 122
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-ne v1, v3, :cond_0

    move-object v0, v2

    .line 125
    :cond_0
    iput-object v0, p0, Lcom/estimote/sdk/Region;->major:Ljava/lang/Integer;

    .line 126
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 127
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v3, :cond_1

    move-object p1, v2

    .line 130
    :cond_1
    iput-object p1, p0, Lcom/estimote/sdk/Region;->minor:Ljava/lang/Integer;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/estimote/sdk/Region$1;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Lcom/estimote/sdk/Region;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    invoke-static {p1}, Lcom/estimote/sdk/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/estimote/sdk/Region;->identifier:Ljava/lang/String;

    if-eqz p2, :cond_0

    .line 46
    invoke-static {p2}, Lcom/estimote/sdk/Utils;->normalizeProximityUUID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :cond_0
    iput-object p2, p0, Lcom/estimote/sdk/Region;->proximityUUID:Ljava/lang/String;

    .line 47
    iput-object p3, p0, Lcom/estimote/sdk/Region;->major:Ljava/lang/Integer;

    .line 48
    iput-object p4, p0, Lcom/estimote/sdk/Region;->minor:Ljava/lang/Integer;

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

    if-eqz p1, :cond_8

    .line 84
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_3

    .line 86
    :cond_1
    check-cast p1, Lcom/estimote/sdk/Region;

    .line 88
    iget-object v2, p0, Lcom/estimote/sdk/Region;->major:Ljava/lang/Integer;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/estimote/sdk/Region;->major:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/estimote/sdk/Region;->major:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_2
    iget-object v2, p1, Lcom/estimote/sdk/Region;->major:Ljava/lang/Integer;

    if-eqz v2, :cond_3

    :goto_0
    return v1

    .line 89
    :cond_3
    iget-object v2, p0, Lcom/estimote/sdk/Region;->minor:Ljava/lang/Integer;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/estimote/sdk/Region;->minor:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/estimote/sdk/Region;->minor:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_1

    :cond_4
    iget-object v2, p1, Lcom/estimote/sdk/Region;->minor:Ljava/lang/Integer;

    if-eqz v2, :cond_5

    :goto_1
    return v1

    .line 90
    :cond_5
    iget-object v2, p0, Lcom/estimote/sdk/Region;->proximityUUID:Ljava/lang/String;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/estimote/sdk/Region;->proximityUUID:Ljava/lang/String;

    iget-object p1, p1, Lcom/estimote/sdk/Region;->proximityUUID:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_2

    :cond_6
    iget-object p1, p1, Lcom/estimote/sdk/Region;->proximityUUID:Ljava/lang/String;

    if-eqz p1, :cond_7

    :goto_2
    return v1

    :cond_7
    return v0

    :cond_8
    :goto_3
    return v1
.end method

.method public getIdentifier()Ljava/lang/String;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/estimote/sdk/Region;->identifier:Ljava/lang/String;

    return-object v0
.end method

.method public getMajor()Ljava/lang/Integer;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/estimote/sdk/Region;->major:Ljava/lang/Integer;

    return-object v0
.end method

.method public getMinor()Ljava/lang/Integer;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/estimote/sdk/Region;->minor:Ljava/lang/Integer;

    return-object v0
.end method

.method public getProximityUUID()Ljava/lang/String;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/estimote/sdk/Region;->proximityUUID:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 98
    iget-object v0, p0, Lcom/estimote/sdk/Region;->proximityUUID:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estimote/sdk/Region;->proximityUUID:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 99
    iget-object v2, p0, Lcom/estimote/sdk/Region;->major:Ljava/lang/Integer;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/estimote/sdk/Region;->major:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 100
    iget-object v2, p0, Lcom/estimote/sdk/Region;->minor:Ljava/lang/Integer;

    if-eqz v2, :cond_2

    iget-object v1, p0, Lcom/estimote/sdk/Region;->minor:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    move-result v1

    :cond_2
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 73
    invoke-static {p0}, Lcom/estimote/sdk/internal/Objects;->toStringHelper(Ljava/lang/Object;)Lcom/estimote/sdk/internal/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "identifier"

    iget-object v2, p0, Lcom/estimote/sdk/Region;->identifier:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/estimote/sdk/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/estimote/sdk/internal/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "proximityUUID"

    iget-object v2, p0, Lcom/estimote/sdk/Region;->proximityUUID:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/estimote/sdk/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/estimote/sdk/internal/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "major"

    iget-object v2, p0, Lcom/estimote/sdk/Region;->major:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Lcom/estimote/sdk/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/estimote/sdk/internal/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "minor"

    iget-object v2, p0, Lcom/estimote/sdk/Region;->minor:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Lcom/estimote/sdk/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/estimote/sdk/internal/Objects$ToStringHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estimote/sdk/internal/Objects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 140
    iget-object p2, p0, Lcom/estimote/sdk/Region;->identifier:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 141
    iget-object p2, p0, Lcom/estimote/sdk/Region;->proximityUUID:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 142
    iget-object p2, p0, Lcom/estimote/sdk/Region;->major:Ljava/lang/Integer;

    const/4 v0, -0x1

    if-nez p2, :cond_0

    const/4 p2, -0x1

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/estimote/sdk/Region;->major:Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    :goto_0
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 143
    iget-object p2, p0, Lcom/estimote/sdk/Region;->minor:Ljava/lang/Integer;

    if-nez p2, :cond_1

    goto :goto_1

    :cond_1
    iget-object p2, p0, Lcom/estimote/sdk/Region;->minor:Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
