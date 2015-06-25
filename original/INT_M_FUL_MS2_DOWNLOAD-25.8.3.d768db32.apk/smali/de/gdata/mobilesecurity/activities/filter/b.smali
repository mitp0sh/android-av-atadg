.class Lde/gdata/mobilesecurity/activities/filter/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# instance fields
.field final synthetic a:Lde/gdata/mobilesecurity/activities/filter/ContactSelectionFragment;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/activities/filter/ContactSelectionFragment;)V
    .locals 0

    .prologue
    .line 313
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/filter/b;->a:Lde/gdata/mobilesecurity/activities/filter/ContactSelectionFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0

    .prologue
    .line 321
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 2

    .prologue
    .line 316
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/b;->a:Lde/gdata/mobilesecurity/activities/filter/ContactSelectionFragment;

    iput p2, v0, Lde/gdata/mobilesecurity/activities/filter/ContactSelectionFragment;->c:I

    if-nez p2, :cond_0

    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/b;->a:Lde/gdata/mobilesecurity/activities/filter/ContactSelectionFragment;

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/filter/b;->a:Lde/gdata/mobilesecurity/activities/filter/ContactSelectionFragment;

    invoke-static {v1}, Lde/gdata/mobilesecurity/activities/filter/ContactSelectionFragment;->c(Lde/gdata/mobilesecurity/activities/filter/ContactSelectionFragment;)I

    move-result v1

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/activities/filter/ContactSelectionFragment;->loadImages(I)V

    .line 317
    :cond_0
    return-void
.end method
