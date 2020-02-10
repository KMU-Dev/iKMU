.class public interface abstract Lorg/mixare/lib/marker/Marker;
.super Ljava/lang/Object;
.source "Marker.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lorg/mixare/lib/marker/Marker;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract calcPaint(Lorg/mixare/lib/render/Camera;FF)V
.end method

.method public abstract draw(Lorg/mixare/lib/gui/PaintScreen;)V
.end method

.method public abstract fClick(FFLorg/mixare/lib/MixContextInterface;Lorg/mixare/lib/MixStateInterface;)Z
.end method

.method public abstract getAltitude()D
.end method

.method public abstract getColour()I
.end method

.method public abstract getDistance()D
.end method

.method public abstract getID()Ljava/lang/String;
.end method

.method public abstract getLatitude()D
.end method

.method public abstract getLocationVector()Lorg/mixare/lib/render/MixVector;
.end method

.method public abstract getLongitude()D
.end method

.method public abstract getMaxObjects()I
.end method

.method public abstract getTitle()Ljava/lang/String;
.end method

.method public abstract getTxtLab()Lorg/mixare/lib/gui/Label;
.end method

.method public abstract getURL()Ljava/lang/String;
.end method

.method public abstract isActive()Z
.end method

.method public abstract setActive(Z)V
.end method

.method public abstract setDistance(D)V
.end method

.method public abstract setExtras(Ljava/lang/String;Lorg/mixare/lib/marker/draw/ParcelableProperty;)V
.end method

.method public abstract setExtras(Ljava/lang/String;Lorg/mixare/lib/marker/draw/PrimitiveProperty;)V
.end method

.method public abstract setID(Ljava/lang/String;)V
.end method

.method public abstract setTxtLab(Lorg/mixare/lib/gui/Label;)V
.end method

.method public abstract update(Landroid/location/Location;)V
.end method
