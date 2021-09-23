.class Ltw/edu/kmu/view/KWebViewClient$2;
.super Ljava/lang/Object;
.source "KWebViewClient.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltw/edu/kmu/view/KWebViewClient;->onReceivedHttpAuthRequest(Landroid/webkit/WebView;Landroid/webkit/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltw/edu/kmu/view/KWebViewClient;

.field final synthetic val$dialogLayout:Landroid/widget/LinearLayout;

.field final synthetic val$temphandler:Landroid/webkit/HttpAuthHandler;


# direct methods
.method constructor <init>(Ltw/edu/kmu/view/KWebViewClient;Landroid/widget/LinearLayout;Landroid/webkit/HttpAuthHandler;)V
    .locals 0

    .line 63
    iput-object p1, p0, Ltw/edu/kmu/view/KWebViewClient$2;->this$0:Ltw/edu/kmu/view/KWebViewClient;

    iput-object p2, p0, Ltw/edu/kmu/view/KWebViewClient$2;->val$dialogLayout:Landroid/widget/LinearLayout;

    iput-object p3, p0, Ltw/edu/kmu/view/KWebViewClient$2;->val$temphandler:Landroid/webkit/HttpAuthHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 67
    iget-object p1, p0, Ltw/edu/kmu/view/KWebViewClient$2;->this$0:Ltw/edu/kmu/view/KWebViewClient;

    iget-object p2, p0, Ltw/edu/kmu/view/KWebViewClient$2;->val$dialogLayout:Landroid/widget/LinearLayout;

    const v0, 0x7f0800e7

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Ltw/edu/kmu/view/KWebViewClient;->access$002(Ltw/edu/kmu/view/KWebViewClient;Ljava/lang/String;)Ljava/lang/String;

    .line 68
    iget-object p1, p0, Ltw/edu/kmu/view/KWebViewClient$2;->this$0:Ltw/edu/kmu/view/KWebViewClient;

    iget-object p2, p0, Ltw/edu/kmu/view/KWebViewClient$2;->val$dialogLayout:Landroid/widget/LinearLayout;

    const v0, 0x7f0800e6

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Ltw/edu/kmu/view/KWebViewClient;->access$102(Ltw/edu/kmu/view/KWebViewClient;Ljava/lang/String;)Ljava/lang/String;

    .line 69
    iget-object p1, p0, Ltw/edu/kmu/view/KWebViewClient$2;->val$temphandler:Landroid/webkit/HttpAuthHandler;

    iget-object p2, p0, Ltw/edu/kmu/view/KWebViewClient$2;->this$0:Ltw/edu/kmu/view/KWebViewClient;

    invoke-static {p2}, Ltw/edu/kmu/view/KWebViewClient;->access$000(Ltw/edu/kmu/view/KWebViewClient;)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Ltw/edu/kmu/view/KWebViewClient$2;->this$0:Ltw/edu/kmu/view/KWebViewClient;

    invoke-static {v0}, Ltw/edu/kmu/view/KWebViewClient;->access$100(Ltw/edu/kmu/view/KWebViewClient;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroid/webkit/HttpAuthHandler;->proceed(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "\u767b\u5165"

    .line 70
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Ltw/edu/kmu/view/KWebViewClient$2;->this$0:Ltw/edu/kmu/view/KWebViewClient;

    invoke-static {v0}, Ltw/edu/kmu/view/KWebViewClient;->access$000(Ltw/edu/kmu/view/KWebViewClient;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Ltw/edu/kmu/view/KWebViewClient$2;->this$0:Ltw/edu/kmu/view/KWebViewClient;

    invoke-static {v0}, Ltw/edu/kmu/view/KWebViewClient;->access$100(Ltw/edu/kmu/view/KWebViewClient;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
