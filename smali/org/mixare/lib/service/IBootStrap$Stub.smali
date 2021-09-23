.class public abstract Lorg/mixare/lib/service/IBootStrap$Stub;
.super Landroid/os/Binder;
.source "IBootStrap.java"

# interfaces
.implements Lorg/mixare/lib/service/IBootStrap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mixare/lib/service/IBootStrap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mixare/lib/service/IBootStrap$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "org.mixare.lib.service.IBootStrap"

.field static final TRANSACTION_getActivityName:I = 0x4

.field static final TRANSACTION_getActivityPackage:I = 0x3

.field static final TRANSACTION_getActivityRequestCode:I = 0x5

.field static final TRANSACTION_getPluginName:I = 0x2

.field static final TRANSACTION_getZIndex:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "org.mixare.lib.service.IBootStrap"

    .line 15
    invoke-virtual {p0, p0, v0}, Lorg/mixare/lib/service/IBootStrap$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lorg/mixare/lib/service/IBootStrap;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "org.mixare.lib.service.IBootStrap"

    .line 26
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 27
    instance-of v1, v0, Lorg/mixare/lib/service/IBootStrap;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lorg/mixare/lib/service/IBootStrap;

    return-object v0

    .line 30
    :cond_1
    new-instance v0, Lorg/mixare/lib/service/IBootStrap$Stub$Proxy;

    invoke-direct {v0, p0}, Lorg/mixare/lib/service/IBootStrap$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const v0, 0x5f4e5446

    const/4 v1, 0x1

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    .line 86
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    :pswitch_0
    const-string p1, "org.mixare.lib.service.IBootStrap"

    .line 79
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p0}, Lorg/mixare/lib/service/IBootStrap$Stub;->getActivityRequestCode()I

    move-result p1

    .line 81
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 82
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    :pswitch_1
    const-string p1, "org.mixare.lib.service.IBootStrap"

    .line 71
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p0}, Lorg/mixare/lib/service/IBootStrap$Stub;->getActivityName()Ljava/lang/String;

    move-result-object p1

    .line 73
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 74
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :pswitch_2
    const-string p1, "org.mixare.lib.service.IBootStrap"

    .line 63
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p0}, Lorg/mixare/lib/service/IBootStrap$Stub;->getActivityPackage()Ljava/lang/String;

    move-result-object p1

    .line 65
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 66
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :pswitch_3
    const-string p1, "org.mixare.lib.service.IBootStrap"

    .line 55
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p0}, Lorg/mixare/lib/service/IBootStrap$Stub;->getPluginName()Ljava/lang/String;

    move-result-object p1

    .line 57
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 58
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :pswitch_4
    const-string p1, "org.mixare.lib.service.IBootStrap"

    .line 47
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0}, Lorg/mixare/lib/service/IBootStrap$Stub;->getZIndex()I

    move-result p1

    .line 49
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 50
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    :cond_0
    const-string p1, "org.mixare.lib.service.IBootStrap"

    .line 42
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
