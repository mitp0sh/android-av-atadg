.class Lde/gdata/mobilesecurity/activities/browser/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Landroid/widget/LinearLayout;

.field final synthetic b:Lde/gdata/mobilesecurity/activities/browser/BrowserMenuArrayAdapter;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/activities/browser/BrowserMenuArrayAdapter;Landroid/widget/LinearLayout;)V
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/browser/j;->b:Lde/gdata/mobilesecurity/activities/browser/BrowserMenuArrayAdapter;

    iput-object p2, p0, Lde/gdata/mobilesecurity/activities/browser/j;->a:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/browser/j;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->performClick()Z

    .line 108
    return-void
.end method
