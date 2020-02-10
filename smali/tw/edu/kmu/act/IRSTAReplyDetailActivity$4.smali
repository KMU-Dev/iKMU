.class Ltw/edu/kmu/act/IRSTAReplyDetailActivity$4;
.super Ljava/lang/Object;
.source "IRSTAReplyDetailActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltw/edu/kmu/act/IRSTAReplyDetailActivity;->initPhotoDialog(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltw/edu/kmu/act/IRSTAReplyDetailActivity;

.field final synthetic val$listStr:[Ljava/lang/String;


# direct methods
.method constructor <init>(Ltw/edu/kmu/act/IRSTAReplyDetailActivity;[Ljava/lang/String;)V
    .locals 0

    .line 278
    iput-object p1, p0, Ltw/edu/kmu/act/IRSTAReplyDetailActivity$4;->this$0:Ltw/edu/kmu/act/IRSTAReplyDetailActivity;

    iput-object p2, p0, Ltw/edu/kmu/act/IRSTAReplyDetailActivity$4;->val$listStr:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    const-string p1, "\u62cd\u7167"

    .line 281
    iget-object v0, p0, Ltw/edu/kmu/act/IRSTAReplyDetailActivity$4;->val$listStr:[Ljava/lang/String;

    aget-object v0, v0, p2

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    .line 282
    new-instance p1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object p2

    const-string v1, "app_report_upload.jpg"

    invoke-direct {p1, p2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 283
    iget-object p2, p0, Ltw/edu/kmu/act/IRSTAReplyDetailActivity$4;->this$0:Ltw/edu/kmu/act/IRSTAReplyDetailActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Ltw/edu/kmu/act/IRSTAReplyDetailActivity$4;->this$0:Ltw/edu/kmu/act/IRSTAReplyDetailActivity;

    invoke-virtual {v2}, Ltw/edu/kmu/act/IRSTAReplyDetailActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".fileprovider"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1, p1}, Landroid/support/v4/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    .line 284
    new-instance p2, Landroid/content/Intent;

    const-string v1, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {p2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 285
    invoke-virtual {p2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v0, "output"

    .line 286
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 288
    iget-object v0, p0, Ltw/edu/kmu/act/IRSTAReplyDetailActivity$4;->this$0:Ltw/edu/kmu/act/IRSTAReplyDetailActivity;

    invoke-virtual {v0}, Ltw/edu/kmu/act/IRSTAReplyDetailActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/high16 v1, 0x10000

    invoke-virtual {v0, p2, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 289
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 290
    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 291
    iget-object v2, p0, Ltw/edu/kmu/act/IRSTAReplyDetailActivity$4;->this$0:Ltw/edu/kmu/act/IRSTAReplyDetailActivity;

    const/4 v3, 0x3

    invoke-virtual {v2, v1, p1, v3}, Ltw/edu/kmu/act/IRSTAReplyDetailActivity;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    goto :goto_0

    .line 293
    :cond_0
    iget-object p1, p0, Ltw/edu/kmu/act/IRSTAReplyDetailActivity$4;->this$0:Ltw/edu/kmu/act/IRSTAReplyDetailActivity;

    invoke-static {}, Ltw/edu/kmu/act/IRSTAReplyDetailActivity;->access$800()I

    move-result v0

    invoke-virtual {p1, p2, v0}, Ltw/edu/kmu/act/IRSTAReplyDetailActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    :cond_1
    const-string p1, "\u5f9e\u76f8\u7c3f\u9078\u53d6"

    .line 294
    iget-object v1, p0, Ltw/edu/kmu/act/IRSTAReplyDetailActivity$4;->val$listStr:[Ljava/lang/String;

    aget-object p2, v1, p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 315
    sget-object p1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 316
    iget-object p2, p0, Ltw/edu/kmu/act/IRSTAReplyDetailActivity$4;->this$0:Ltw/edu/kmu/act/IRSTAReplyDetailActivity;

    invoke-virtual {p2}, Ltw/edu/kmu/act/IRSTAReplyDetailActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    .line 317
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.PICK"

    invoke-direct {v1, v2, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 318
    invoke-virtual {p2, v1, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p2

    .line 319
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_2

    .line 320
    new-instance p2, Landroid/content/Intent;

    const-string v0, "android.intent.action.PICK"

    invoke-direct {p2, v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string p1, "\u9078\u53d6\u7167\u7247"

    .line 322
    invoke-static {p2, p1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p1

    .line 323
    iget-object p2, p0, Ltw/edu/kmu/act/IRSTAReplyDetailActivity$4;->this$0:Ltw/edu/kmu/act/IRSTAReplyDetailActivity;

    invoke-static {}, Ltw/edu/kmu/act/IRSTAReplyDetailActivity;->access$900()I

    move-result v0

    invoke-virtual {p2, p1, v0}, Ltw/edu/kmu/act/IRSTAReplyDetailActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_2
    :goto_1
    return-void
.end method
