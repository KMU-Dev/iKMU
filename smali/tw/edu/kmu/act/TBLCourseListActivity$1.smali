.class Ltw/edu/kmu/act/TBLCourseListActivity$1;
.super Ljava/lang/Object;
.source "TBLCourseListActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltw/edu/kmu/act/TBLCourseListActivity;->showSwitchDialog(Ljava/util/HashMap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltw/edu/kmu/act/TBLCourseListActivity;


# direct methods
.method constructor <init>(Ltw/edu/kmu/act/TBLCourseListActivity;)V
    .locals 0

    .line 76
    iput-object p1, p0, Ltw/edu/kmu/act/TBLCourseListActivity$1;->this$0:Ltw/edu/kmu/act/TBLCourseListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 81
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    return-void
.end method
