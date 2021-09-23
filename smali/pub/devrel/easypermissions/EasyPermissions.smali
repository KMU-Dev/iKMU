.class public Lpub/devrel/easypermissions/EasyPermissions;
.super Ljava/lang/Object;
.source "EasyPermissions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lpub/devrel/easypermissions/EasyPermissions$PermissionCallbacks;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "EasyPermissions"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs hasPermissions(Landroid/content/Context;[Ljava/lang/String;)Z
    .locals 5
    .param p1    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 67
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/16 v2, 0x17

    if-ge v0, v2, :cond_0

    const-string p0, "EasyPermissions"

    const-string p1, "hasPermissions: API version < M, returning true by default"

    .line 68
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    if-eqz p0, :cond_3

    .line 80
    array-length v0, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_2

    aget-object v4, p1, v3

    .line 81
    invoke-static {p0, v4}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_1

    return v2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v1

    .line 77
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Can\'t check permissions for null context"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static isUsingAndroidAnnotations(Ljava/lang/Object;)Z
    .locals 2
    .param p0    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 402
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    const-string v0, "org.androidannotations.api.view.HasViews"

    .line 406
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 407
    invoke-virtual {v0, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    return v1
.end method

.method private static notifyAlreadyHasPermissions(Ljava/lang/Object;I[Ljava/lang/String;)V
    .locals 4
    .param p0    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 346
    array-length v0, p2

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 347
    :goto_0
    array-length v3, p2

    if-ge v2, v3, :cond_0

    .line 348
    aput v1, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    .line 351
    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v1

    invoke-static {p1, p2, v0, v2}, Lpub/devrel/easypermissions/EasyPermissions;->onRequestPermissionsResult(I[Ljava/lang/String;[I[Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs onRequestPermissionsResult(I[Ljava/lang/String;[I[Ljava/lang/Object;)V
    .locals 6
    .param p1    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # [I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # [Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 211
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 212
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 213
    :goto_0
    array-length v4, p1

    if-ge v3, v4, :cond_1

    .line 214
    aget-object v4, p1, v3

    .line 215
    aget v5, p2, v3

    if-nez v5, :cond_0

    .line 216
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 218
    :cond_0
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 223
    :cond_1
    array-length p1, p3

    :goto_2
    if-ge v2, p1, :cond_5

    aget-object p2, p3, v2

    .line 225
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 226
    instance-of v3, p2, Lpub/devrel/easypermissions/EasyPermissions$PermissionCallbacks;

    if-eqz v3, :cond_2

    .line 227
    move-object v3, p2

    check-cast v3, Lpub/devrel/easypermissions/EasyPermissions$PermissionCallbacks;

    invoke-interface {v3, p0, v0}, Lpub/devrel/easypermissions/EasyPermissions$PermissionCallbacks;->onPermissionsGranted(ILjava/util/List;)V

    .line 232
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    .line 233
    instance-of v3, p2, Lpub/devrel/easypermissions/EasyPermissions$PermissionCallbacks;

    if-eqz v3, :cond_3

    .line 234
    move-object v3, p2

    check-cast v3, Lpub/devrel/easypermissions/EasyPermissions$PermissionCallbacks;

    invoke-interface {v3, p0, v1}, Lpub/devrel/easypermissions/EasyPermissions$PermissionCallbacks;->onPermissionsDenied(ILjava/util/List;)V

    .line 239
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 240
    invoke-static {p2, p0}, Lpub/devrel/easypermissions/EasyPermissions;->runAnnotatedMethods(Ljava/lang/Object;I)V

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    return-void
.end method

.method public static permissionPermanentlyDenied(Landroid/app/Activity;Ljava/lang/String;)Z
    .locals 0
    .param p0    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 287
    invoke-static {p0}, Lpub/devrel/easypermissions/helper/PermissionHelper;->newInstance(Landroid/app/Activity;)Lpub/devrel/easypermissions/helper/PermissionHelper;

    move-result-object p0

    invoke-virtual {p0, p1}, Lpub/devrel/easypermissions/helper/PermissionHelper;->permissionPermanentlyDenied(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static permissionPermanentlyDenied(Landroid/app/Fragment;Ljava/lang/String;)Z
    .locals 0
    .param p0    # Landroid/app/Fragment;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 303
    invoke-static {p0}, Lpub/devrel/easypermissions/helper/PermissionHelper;->newInstance(Landroid/app/Fragment;)Lpub/devrel/easypermissions/helper/PermissionHelper;

    move-result-object p0

    invoke-virtual {p0, p1}, Lpub/devrel/easypermissions/helper/PermissionHelper;->permissionPermanentlyDenied(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static permissionPermanentlyDenied(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Z
    .locals 0
    .param p0    # Landroid/support/v4/app/Fragment;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 295
    invoke-static {p0}, Lpub/devrel/easypermissions/helper/PermissionHelper;->newInstance(Landroid/support/v4/app/Fragment;)Lpub/devrel/easypermissions/helper/PermissionHelper;

    move-result-object p0

    invoke-virtual {p0, p1}, Lpub/devrel/easypermissions/helper/PermissionHelper;->permissionPermanentlyDenied(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static varargs requestPermissions(Landroid/app/Activity;Ljava/lang/String;III[Ljava/lang/String;)V
    .locals 6
    .param p0    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .param p5    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 144
    invoke-static {p0}, Lpub/devrel/easypermissions/helper/PermissionHelper;->newInstance(Landroid/app/Activity;)Lpub/devrel/easypermissions/helper/PermissionHelper;

    move-result-object v0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Lpub/devrel/easypermissions/EasyPermissions;->requestPermissions(Lpub/devrel/easypermissions/helper/PermissionHelper;Ljava/lang/String;III[Ljava/lang/String;)V

    return-void
.end method

.method public static varargs requestPermissions(Landroid/app/Activity;Ljava/lang/String;I[Ljava/lang/String;)V
    .locals 6
    .param p0    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const v2, 0x104000a

    const/high16 v3, 0x1040000

    move-object v0, p0

    move-object v1, p1

    move v4, p2

    move-object v5, p3

    .line 98
    invoke-static/range {v0 .. v5}, Lpub/devrel/easypermissions/EasyPermissions;->requestPermissions(Landroid/app/Activity;Ljava/lang/String;III[Ljava/lang/String;)V

    return-void
.end method

.method public static varargs requestPermissions(Landroid/app/Fragment;Ljava/lang/String;III[Ljava/lang/String;)V
    .locals 6
    .param p0    # Landroid/app/Fragment;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .param p5    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 170
    invoke-static {p0}, Lpub/devrel/easypermissions/helper/PermissionHelper;->newInstance(Landroid/app/Fragment;)Lpub/devrel/easypermissions/helper/PermissionHelper;

    move-result-object v0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Lpub/devrel/easypermissions/EasyPermissions;->requestPermissions(Lpub/devrel/easypermissions/helper/PermissionHelper;Ljava/lang/String;III[Ljava/lang/String;)V

    return-void
.end method

.method public static varargs requestPermissions(Landroid/app/Fragment;Ljava/lang/String;I[Ljava/lang/String;)V
    .locals 6
    .param p0    # Landroid/app/Fragment;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const v2, 0x104000a

    const/high16 v3, 0x1040000

    move-object v0, p0

    move-object v1, p1

    move v4, p2

    move-object v5, p3

    .line 124
    invoke-static/range {v0 .. v5}, Lpub/devrel/easypermissions/EasyPermissions;->requestPermissions(Landroid/app/Fragment;Ljava/lang/String;III[Ljava/lang/String;)V

    return-void
.end method

.method public static varargs requestPermissions(Landroid/support/v4/app/Fragment;Ljava/lang/String;III[Ljava/lang/String;)V
    .locals 6
    .param p0    # Landroid/support/v4/app/Fragment;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .param p5    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 158
    invoke-static {p0}, Lpub/devrel/easypermissions/helper/PermissionHelper;->newInstance(Landroid/support/v4/app/Fragment;)Lpub/devrel/easypermissions/helper/PermissionHelper;

    move-result-object v0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Lpub/devrel/easypermissions/EasyPermissions;->requestPermissions(Lpub/devrel/easypermissions/helper/PermissionHelper;Ljava/lang/String;III[Ljava/lang/String;)V

    return-void
.end method

.method public static varargs requestPermissions(Landroid/support/v4/app/Fragment;Ljava/lang/String;I[Ljava/lang/String;)V
    .locals 6
    .param p0    # Landroid/support/v4/app/Fragment;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const v2, 0x104000a

    const/high16 v3, 0x1040000

    move-object v0, p0

    move-object v1, p1

    move v4, p2

    move-object v5, p3

    .line 111
    invoke-static/range {v0 .. v5}, Lpub/devrel/easypermissions/EasyPermissions;->requestPermissions(Landroid/support/v4/app/Fragment;Ljava/lang/String;III[Ljava/lang/String;)V

    return-void
.end method

.method private static varargs requestPermissions(Lpub/devrel/easypermissions/helper/PermissionHelper;Ljava/lang/String;III[Ljava/lang/String;)V
    .locals 1
    .param p0    # Lpub/devrel/easypermissions/helper/PermissionHelper;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .param p5    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 181
    invoke-virtual {p0}, Lpub/devrel/easypermissions/helper/PermissionHelper;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p5}, Lpub/devrel/easypermissions/EasyPermissions;->hasPermissions(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 182
    invoke-virtual {p0}, Lpub/devrel/easypermissions/helper/PermissionHelper;->getHost()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0, p4, p5}, Lpub/devrel/easypermissions/EasyPermissions;->notifyAlreadyHasPermissions(Ljava/lang/Object;I[Ljava/lang/String;)V

    return-void

    .line 187
    :cond_0
    invoke-virtual/range {p0 .. p5}, Lpub/devrel/easypermissions/helper/PermissionHelper;->requestPermissions(Ljava/lang/String;III[Ljava/lang/String;)V

    return-void
.end method

.method private static runAnnotatedMethods(Ljava/lang/Object;I)V
    .locals 8
    .param p0    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 362
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 363
    invoke-static {p0}, Lpub/devrel/easypermissions/EasyPermissions;->isUsingAndroidAnnotations(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 364
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    :cond_0
    :goto_0
    if-eqz v0, :cond_5

    .line 368
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v2, :cond_4

    aget-object v5, v1, v4

    .line 369
    const-class v6, Lpub/devrel/easypermissions/AfterPermissionGranted;

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v6

    check-cast v6, Lpub/devrel/easypermissions/AfterPermissionGranted;

    if-eqz v6, :cond_3

    .line 372
    invoke-interface {v6}, Lpub/devrel/easypermissions/AfterPermissionGranted;->value()I

    move-result v6

    if-ne v6, p1, :cond_3

    .line 374
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v6

    array-length v6, v6

    if-gtz v6, :cond_2

    .line 381
    :try_start_0
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->isAccessible()Z

    move-result v6

    if-nez v6, :cond_1

    const/4 v6, 0x1

    .line 382
    invoke-virtual {v5, v6}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 384
    :cond_1
    new-array v6, v3, [Ljava/lang/Object;

    invoke-virtual {v5, p0, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v5

    const-string v6, "EasyPermissions"

    const-string v7, "runDefaultMethod:InvocationTargetException"

    .line 388
    invoke-static {v6, v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    :catch_1
    move-exception v5

    const-string v6, "EasyPermissions"

    const-string v7, "runDefaultMethod:IllegalAccessException"

    .line 386
    invoke-static {v6, v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 375
    :cond_2
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Cannot execute method "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 376
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " because it is non-void method and/or has input parameters."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 394
    :cond_4
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    :cond_5
    return-void
.end method

.method public static varargs somePermissionDenied(Landroid/app/Activity;[Ljava/lang/String;)Z
    .locals 0
    .param p0    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 316
    invoke-static {p0}, Lpub/devrel/easypermissions/helper/PermissionHelper;->newInstance(Landroid/app/Activity;)Lpub/devrel/easypermissions/helper/PermissionHelper;

    move-result-object p0

    invoke-virtual {p0, p1}, Lpub/devrel/easypermissions/helper/PermissionHelper;->somePermissionDenied([Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static varargs somePermissionDenied(Landroid/app/Fragment;[Ljava/lang/String;)Z
    .locals 0
    .param p0    # Landroid/app/Fragment;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 332
    invoke-static {p0}, Lpub/devrel/easypermissions/helper/PermissionHelper;->newInstance(Landroid/app/Fragment;)Lpub/devrel/easypermissions/helper/PermissionHelper;

    move-result-object p0

    invoke-virtual {p0, p1}, Lpub/devrel/easypermissions/helper/PermissionHelper;->somePermissionDenied([Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static varargs somePermissionDenied(Landroid/support/v4/app/Fragment;[Ljava/lang/String;)Z
    .locals 0
    .param p0    # Landroid/support/v4/app/Fragment;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 324
    invoke-static {p0}, Lpub/devrel/easypermissions/helper/PermissionHelper;->newInstance(Landroid/support/v4/app/Fragment;)Lpub/devrel/easypermissions/helper/PermissionHelper;

    move-result-object p0

    invoke-virtual {p0, p1}, Lpub/devrel/easypermissions/helper/PermissionHelper;->somePermissionDenied([Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static somePermissionPermanentlyDenied(Landroid/app/Activity;Ljava/util/List;)Z
    .locals 0
    .param p0    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 256
    invoke-static {p0}, Lpub/devrel/easypermissions/helper/PermissionHelper;->newInstance(Landroid/app/Activity;)Lpub/devrel/easypermissions/helper/PermissionHelper;

    move-result-object p0

    .line 257
    invoke-virtual {p0, p1}, Lpub/devrel/easypermissions/helper/PermissionHelper;->somePermissionPermanentlyDenied(Ljava/util/List;)Z

    move-result p0

    return p0
.end method

.method public static somePermissionPermanentlyDenied(Landroid/app/Fragment;Ljava/util/List;)Z
    .locals 0
    .param p0    # Landroid/app/Fragment;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Fragment;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 274
    invoke-static {p0}, Lpub/devrel/easypermissions/helper/PermissionHelper;->newInstance(Landroid/app/Fragment;)Lpub/devrel/easypermissions/helper/PermissionHelper;

    move-result-object p0

    .line 275
    invoke-virtual {p0, p1}, Lpub/devrel/easypermissions/helper/PermissionHelper;->somePermissionPermanentlyDenied(Ljava/util/List;)Z

    move-result p0

    return p0
.end method

.method public static somePermissionPermanentlyDenied(Landroid/support/v4/app/Fragment;Ljava/util/List;)Z
    .locals 0
    .param p0    # Landroid/support/v4/app/Fragment;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/Fragment;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 265
    invoke-static {p0}, Lpub/devrel/easypermissions/helper/PermissionHelper;->newInstance(Landroid/support/v4/app/Fragment;)Lpub/devrel/easypermissions/helper/PermissionHelper;

    move-result-object p0

    .line 266
    invoke-virtual {p0, p1}, Lpub/devrel/easypermissions/helper/PermissionHelper;->somePermissionPermanentlyDenied(Ljava/util/List;)Z

    move-result p0

    return p0
.end method
