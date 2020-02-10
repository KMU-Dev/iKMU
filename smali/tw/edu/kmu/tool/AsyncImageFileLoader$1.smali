.class Ltw/edu/kmu/tool/AsyncImageFileLoader$1;
.super Landroid/os/Handler;
.source "AsyncImageFileLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltw/edu/kmu/tool/AsyncImageFileLoader;->loadBitmap(Ljava/lang/String;IILtw/edu/kmu/tool/AsyncImageFileLoader$ImageCallback;)Landroid/graphics/Bitmap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltw/edu/kmu/tool/AsyncImageFileLoader;

.field final synthetic val$imageCallback:Ltw/edu/kmu/tool/AsyncImageFileLoader$ImageCallback;

.field final synthetic val$imageFile:Ljava/lang/String;


# direct methods
.method constructor <init>(Ltw/edu/kmu/tool/AsyncImageFileLoader;Ltw/edu/kmu/tool/AsyncImageFileLoader$ImageCallback;Ljava/lang/String;)V
    .locals 0

    .line 39
    iput-object p1, p0, Ltw/edu/kmu/tool/AsyncImageFileLoader$1;->this$0:Ltw/edu/kmu/tool/AsyncImageFileLoader;

    iput-object p2, p0, Ltw/edu/kmu/tool/AsyncImageFileLoader$1;->val$imageCallback:Ltw/edu/kmu/tool/AsyncImageFileLoader$ImageCallback;

    iput-object p3, p0, Ltw/edu/kmu/tool/AsyncImageFileLoader$1;->val$imageFile:Ljava/lang/String;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 41
    iget-object v0, p0, Ltw/edu/kmu/tool/AsyncImageFileLoader$1;->val$imageCallback:Ltw/edu/kmu/tool/AsyncImageFileLoader$ImageCallback;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/graphics/Bitmap;

    iget-object v1, p0, Ltw/edu/kmu/tool/AsyncImageFileLoader$1;->val$imageFile:Ljava/lang/String;

    invoke-interface {v0, p1, v1}, Ltw/edu/kmu/tool/AsyncImageFileLoader$ImageCallback;->imageCallback(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    return-void
.end method
