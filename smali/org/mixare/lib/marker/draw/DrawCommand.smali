.class public abstract Lorg/mixare/lib/marker/draw/DrawCommand;
.super Ljava/lang/Object;
.source "DrawCommand.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lorg/mixare/lib/marker/draw/DrawCommand;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private command:Ljava/lang/String;

.field private final properties:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 103
    new-instance v0, Lorg/mixare/lib/marker/draw/DrawCommand$1;

    invoke-direct {v0}, Lorg/mixare/lib/marker/draw/DrawCommand$1;-><init>()V

    sput-object v0, Lorg/mixare/lib/marker/draw/DrawCommand;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/mixare/lib/marker/draw/DrawCommand;->properties:Ljava/util/Map;

    .line 50
    iput-object p1, p0, Lorg/mixare/lib/marker/draw/DrawCommand;->command:Ljava/lang/String;

    return-void
.end method

.method public static buildObject(Landroid/os/Parcel;)Lorg/mixare/lib/marker/draw/DrawCommand;
    .locals 6

    .line 149
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "init"

    const/4 v2, 0x1

    .line 151
    new-array v3, v2, [Ljava/lang/Class;

    .line 152
    const-class v4, Landroid/os/Parcel;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 154
    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    .line 155
    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/mixare/lib/marker/draw/DrawCommand;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 157
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract draw(Lorg/mixare/lib/gui/PaintScreen;)V
.end method

.method getBitmapProperty(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 0

    .line 72
    invoke-virtual {p0, p1}, Lorg/mixare/lib/marker/draw/DrawCommand;->getParcelableProperty(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    return-object p1
.end method

.method getBooleanProperty(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 1

    .line 64
    iget-object v0, p0, Lorg/mixare/lib/marker/draw/DrawCommand;->properties:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    return-object p1
.end method

.method getByteArrayProperty(Ljava/lang/String;)[B
    .locals 1

    .line 92
    iget-object v0, p0, Lorg/mixare/lib/marker/draw/DrawCommand;->properties:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    return-object p1
.end method

.method getDoubleProperty(Ljava/lang/String;)Ljava/lang/Double;
    .locals 1

    .line 88
    iget-object v0, p0, Lorg/mixare/lib/marker/draw/DrawCommand;->properties:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Double;

    return-object p1
.end method

.method getFloatProperty(Ljava/lang/String;)Ljava/lang/Float;
    .locals 1

    .line 80
    iget-object v0, p0, Lorg/mixare/lib/marker/draw/DrawCommand;->properties:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    return-object p1
.end method

.method getIntegerProperty(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 1

    .line 84
    iget-object v0, p0, Lorg/mixare/lib/marker/draw/DrawCommand;->properties:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    return-object p1
.end method

.method getMixVectorProperty(Ljava/lang/String;)Lorg/mixare/lib/render/MixVector;
    .locals 0

    .line 68
    invoke-virtual {p0, p1}, Lorg/mixare/lib/marker/draw/DrawCommand;->getParcelableProperty(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lorg/mixare/lib/render/MixVector;

    return-object p1
.end method

.method getParcelableProperty(Ljava/lang/String;)Landroid/os/Parcelable;
    .locals 1

    .line 96
    iget-object v0, p0, Lorg/mixare/lib/marker/draw/DrawCommand;->properties:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Parcelable;

    .line 97
    instance-of v0, p1, Lorg/mixare/lib/marker/draw/ParcelableProperty;

    if-eqz v0, :cond_0

    .line 98
    check-cast p1, Lorg/mixare/lib/marker/draw/ParcelableProperty;

    invoke-virtual {p1}, Lorg/mixare/lib/marker/draw/ParcelableProperty;->getObject()Landroid/os/Parcelable;

    move-result-object p1

    return-object p1

    :cond_0
    return-object p1
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 58
    iget-object v0, p0, Lorg/mixare/lib/marker/draw/DrawCommand;->properties:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method getStringProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 76
    iget-object v0, p0, Lorg/mixare/lib/marker/draw/DrawCommand;->properties:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method protected setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 54
    iget-object v0, p0, Lorg/mixare/lib/marker/draw/DrawCommand;->properties:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 120
    iget-object p2, p0, Lorg/mixare/lib/marker/draw/DrawCommand;->command:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 121
    iget-object p2, p0, Lorg/mixare/lib/marker/draw/DrawCommand;->properties:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 123
    iget-object v1, p0, Lorg/mixare/lib/marker/draw/DrawCommand;->properties:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 124
    invoke-virtual {p0, v0}, Lorg/mixare/lib/marker/draw/DrawCommand;->getStringProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 126
    :cond_2
    iget-object v1, p0, Lorg/mixare/lib/marker/draw/DrawCommand;->properties:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/Boolean;

    if-eqz v1, :cond_3

    .line 127
    invoke-virtual {p0, v0}, Lorg/mixare/lib/marker/draw/DrawCommand;->getBooleanProperty(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 129
    :cond_3
    iget-object v1, p0, Lorg/mixare/lib/marker/draw/DrawCommand;->properties:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/Float;

    if-eqz v1, :cond_4

    .line 130
    invoke-virtual {p0, v0}, Lorg/mixare/lib/marker/draw/DrawCommand;->getFloatProperty(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    goto :goto_0

    .line 132
    :cond_4
    iget-object v1, p0, Lorg/mixare/lib/marker/draw/DrawCommand;->properties:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/Integer;

    if-eqz v1, :cond_5

    .line 133
    invoke-virtual {p0, v0}, Lorg/mixare/lib/marker/draw/DrawCommand;->getIntegerProperty(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 135
    :cond_5
    iget-object v1, p0, Lorg/mixare/lib/marker/draw/DrawCommand;->properties:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/Double;

    if-eqz v1, :cond_6

    .line 136
    invoke-virtual {p0, v0}, Lorg/mixare/lib/marker/draw/DrawCommand;->getDoubleProperty(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    goto :goto_0

    .line 138
    :cond_6
    iget-object v1, p0, Lorg/mixare/lib/marker/draw/DrawCommand;->properties:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, [Ljava/lang/Byte;

    if-eqz v1, :cond_7

    .line 139
    invoke-virtual {p0, v0}, Lorg/mixare/lib/marker/draw/DrawCommand;->getByteArrayProperty(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    goto/16 :goto_0

    .line 141
    :cond_7
    iget-object v1, p0, Lorg/mixare/lib/marker/draw/DrawCommand;->properties:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lorg/mixare/lib/marker/draw/ParcelableProperty;

    if-eqz v1, :cond_0

    .line 142
    iget-object v1, p0, Lorg/mixare/lib/marker/draw/DrawCommand;->properties:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mixare/lib/marker/draw/ParcelableProperty;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    goto/16 :goto_0
.end method
