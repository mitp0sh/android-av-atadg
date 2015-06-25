.class public Lde/gdata/mobilesecurity/activities/browser/ObservableScrollView;
.super Landroid/widget/ScrollView;
.source "SourceFile"


# instance fields
.field private a:Lde/gdata/mobilesecurity/activities/browser/ObservableScrollView$Callbacks;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    return-void
.end method


# virtual methods
.method public computeVerticalScrollRange()I
    .locals 1

    .prologue
    .line 60
    invoke-super {p0}, Landroid/widget/ScrollView;->computeVerticalScrollRange()I

    move-result v0

    return v0
.end method

.method protected onScrollChanged(IIII)V
    .locals 1

    .prologue
    .line 36
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ScrollView;->onScrollChanged(IIII)V

    .line 37
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/browser/ObservableScrollView;->a:Lde/gdata/mobilesecurity/activities/browser/ObservableScrollView$Callbacks;

    if-eqz v0, :cond_0

    .line 38
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/browser/ObservableScrollView;->a:Lde/gdata/mobilesecurity/activities/browser/ObservableScrollView$Callbacks;

    invoke-interface {v0, p2}, Lde/gdata/mobilesecurity/activities/browser/ObservableScrollView$Callbacks;->onScrollChanged(I)V

    .line 40
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/browser/ObservableScrollView;->a:Lde/gdata/mobilesecurity/activities/browser/ObservableScrollView$Callbacks;

    if-eqz v0, :cond_0

    .line 45
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 55
    :cond_0
    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 47
    :pswitch_1
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/browser/ObservableScrollView;->a:Lde/gdata/mobilesecurity/activities/browser/ObservableScrollView$Callbacks;

    invoke-interface {v0}, Lde/gdata/mobilesecurity/activities/browser/ObservableScrollView$Callbacks;->onDownMotionEvent()V

    goto :goto_0

    .line 51
    :pswitch_2
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/browser/ObservableScrollView;->a:Lde/gdata/mobilesecurity/activities/browser/ObservableScrollView$Callbacks;

    invoke-interface {v0}, Lde/gdata/mobilesecurity/activities/browser/ObservableScrollView$Callbacks;->onUpOrCancelMotionEvent()V

    goto :goto_0

    .line 45
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public setCallbacks(Lde/gdata/mobilesecurity/activities/browser/ObservableScrollView$Callbacks;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/browser/ObservableScrollView;->a:Lde/gdata/mobilesecurity/activities/browser/ObservableScrollView$Callbacks;

    .line 65
    return-void
.end method
