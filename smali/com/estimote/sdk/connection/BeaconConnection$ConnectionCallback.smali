.class public interface abstract Lcom/estimote/sdk/connection/BeaconConnection$ConnectionCallback;
.super Ljava/lang/Object;
.source "BeaconConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/estimote/sdk/connection/BeaconConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ConnectionCallback"
.end annotation


# virtual methods
.method public abstract onAuthenticated(Lcom/estimote/sdk/connection/BeaconConnection$BeaconCharacteristics;)V
.end method

.method public abstract onAuthenticationError()V
.end method

.method public abstract onDisconnected()V
.end method
