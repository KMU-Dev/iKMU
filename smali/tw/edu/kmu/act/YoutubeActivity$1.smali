.class Ltw/edu/kmu/act/YoutubeActivity$1;
.super Ljava/lang/Object;
.source "YoutubeActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltw/edu/kmu/act/YoutubeActivity;->showList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltw/edu/kmu/act/YoutubeActivity;


# direct methods
.method constructor <init>(Ltw/edu/kmu/act/YoutubeActivity;)V
    .locals 0

    .line 80
    iput-object p1, p0, Ltw/edu/kmu/act/YoutubeActivity$1;->this$0:Ltw/edu/kmu/act/YoutubeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 85
    iget-object p1, p0, Ltw/edu/kmu/act/YoutubeActivity$1;->this$0:Ltw/edu/kmu/act/YoutubeActivity;

    invoke-static {p1}, Ltw/edu/kmu/act/YoutubeActivity;->access$100(Ltw/edu/kmu/act/YoutubeActivity;)Landroid/widget/ListView;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    const-string p2, "type"

    .line 86
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    const-string p2, "link"

    .line 87
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 88
    iget-object p2, p0, Ltw/edu/kmu/act/YoutubeActivity$1;->this$0:Ltw/edu/kmu/act/YoutubeActivity;

    invoke-static {p2, p1}, Ltw/edu/kmu/act/YoutubeActivity;->access$200(Ltw/edu/kmu/act/YoutubeActivity;Ljava/lang/String;)V

    return-void
.end method
