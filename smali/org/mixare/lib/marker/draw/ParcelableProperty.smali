.class public Lorg/mixare/lib/marker/draw/ParcelableProperty;
.super Ljava/lang/Object;
.source "ParcelableProperty.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lorg/mixare/lib/marker/draw/ParcelableProperty;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private className:Ljava/lang/String;

.field private object:Landroid/os/Parcelable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 40
    new-instance v0, Lorg/mixare/lib/marker/draw/ParcelableProperty$1;

    invoke-direct {v0}, Lorg/mixare/lib/marker/draw/ParcelableProperty$1;-><init>()V

    sput-object v0, Lorg/mixare/lib/marker/draw/ParcelableProperty;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/mixare/lib/marker/draw/ParcelableProperty;->className:Ljava/lang/String;

    .line 52
    invoke-virtual {p0}, Lorg/mixare/lib/marker/draw/ParcelableProperty;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    iput-object p1, p0, Lorg/mixare/lib/marker/draw/ParcelableProperty;->object:Landroid/os/Parcelable;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lorg/mixare/lib/marker/draw/ParcelableProperty;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Lorg/mixare/lib/marker/draw/ParcelableProperty;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/os/Parcelable;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lorg/mixare/lib/marker/draw/ParcelableProperty;->className:Ljava/lang/String;

    .line 37
    iput-object p2, p0, Lorg/mixare/lib/marker/draw/ParcelableProperty;->object:Landroid/os/Parcelable;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    .line 57
    :try_start_0
    iget-object v0, p0, Lorg/mixare/lib/marker/draw/ParcelableProperty;->className:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 59
    :catch_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public getObject()Landroid/os/Parcelable;
    .locals 1

    .line 64
    iget-object v0, p0, Lorg/mixare/lib/marker/draw/ParcelableProperty;->object:Landroid/os/Parcelable;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 74
    iget-object p2, p0, Lorg/mixare/lib/marker/draw/ParcelableProperty;->className:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 75
    iget-object p2, p0, Lorg/mixare/lib/marker/draw/ParcelableProperty;->object:Landroid/os/Parcelable;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
