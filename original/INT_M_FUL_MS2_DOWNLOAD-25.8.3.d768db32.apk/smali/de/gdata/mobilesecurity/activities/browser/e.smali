.class Lde/gdata/mobilesecurity/activities/browser/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lde/gdata/mobilesecurity/activities/browser/BrowserFragment;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/activities/browser/BrowserFragment;)V
    .locals 0

    .prologue
    .line 219
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/browser/e;->a:Lde/gdata/mobilesecurity/activities/browser/BrowserFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 222
    invoke-virtual {p1}, Landroid/view/View;->showContextMenu()Z

    .line 223
    return-void
.end method
