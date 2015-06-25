.class Lde/gdata/mobilesecurity/activities/callfilter/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# instance fields
.field final synthetic a:Lde/gdata/mobilesecurity/activities/callfilter/BlockingsFragment;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/activities/callfilter/BlockingsFragment;)V
    .locals 0

    .prologue
    .line 142
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/callfilter/d;->a:Lde/gdata/mobilesecurity/activities/callfilter/BlockingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0

    .prologue
    .line 150
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 2

    .prologue
    .line 145
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/callfilter/d;->a:Lde/gdata/mobilesecurity/activities/callfilter/BlockingsFragment;

    iput p2, v0, Lde/gdata/mobilesecurity/activities/callfilter/BlockingsFragment;->e:I

    if-nez p2, :cond_0

    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/callfilter/d;->a:Lde/gdata/mobilesecurity/activities/callfilter/BlockingsFragment;

    invoke-static {}, Lde/gdata/mobilesecurity/activities/callfilter/BlockingsFragment;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/activities/callfilter/BlockingsFragment;->loadImages(I)V

    .line 146
    :cond_0
    return-void
.end method
