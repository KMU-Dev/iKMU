.class Ltw/edu/kmu/tool/AsyncImageFileLoader$2;
.super Ljava/lang/Thread;
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

.field final synthetic val$handler:Landroid/os/Handler;

.field final synthetic val$imageFile:Ljava/lang/String;

.field final synthetic val$show_height:I

.field final synthetic val$show_width:I


# direct methods
.method constructor <init>(Ltw/edu/kmu/tool/AsyncImageFileLoader;Ljava/lang/String;IILandroid/os/Handler;)V
    .locals 0

    .line 45
    iput-object p1, p0, Ltw/edu/kmu/tool/AsyncImageFileLoader$2;->this$0:Ltw/edu/kmu/tool/AsyncImageFileLoader;

    iput-object p2, p0, Ltw/edu/kmu/tool/AsyncImageFileLoader$2;->val$imageFile:Ljava/lang/String;

    iput p3, p0, Ltw/edu/kmu/tool/AsyncImageFileLoader$2;->val$show_width:I

    iput p4, p0, Ltw/edu/kmu/tool/AsyncImageFileLoader$2;->val$show_height:I

    iput-object p5, p0, Ltw/edu/kmu/tool/AsyncImageFileLoader$2;->val$handler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const-wide/16 v0, 0x1f4

    .line 51
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 54
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 56
    :goto_0
    iget-object v0, p0, Ltw/edu/kmu/tool/AsyncImageFileLoader$2;->this$0:Ltw/edu/kmu/tool/AsyncImageFileLoader;

    iget-object v1, p0, Ltw/edu/kmu/tool/AsyncImageFileLoader$2;->val$imageFile:Ljava/lang/String;

    iget v2, p0, Ltw/edu/kmu/tool/AsyncImageFileLoader$2;->val$show_width:I

    iget v3, p0, Ltw/edu/kmu/tool/AsyncImageFileLoader$2;->val$show_height:I

    invoke-virtual {v0, v1, v2, v3}, Ltw/edu/kmu/tool/AsyncImageFileLoader;->loadImageFromFile(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 57
    iget-object v1, p0, Ltw/edu/kmu/tool/AsyncImageFileLoader$2;->this$0:Ltw/edu/kmu/tool/AsyncImageFileLoader;

    invoke-static {v1}, Ltw/edu/kmu/tool/AsyncImageFileLoader;->access$000(Ltw/edu/kmu/tool/AsyncImageFileLoader;)Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, p0, Ltw/edu/kmu/tool/AsyncImageFileLoader$2;->val$imageFile:Ljava/lang/String;

    new-instance v3, Ljava/lang/ref/SoftReference;

    invoke-direct {v3, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    iget-object v1, p0, Ltw/edu/kmu/tool/AsyncImageFileLoader$2;->val$handler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 59
    iget-object v1, p0, Ltw/edu/kmu/tool/AsyncImageFileLoader$2;->val$handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
