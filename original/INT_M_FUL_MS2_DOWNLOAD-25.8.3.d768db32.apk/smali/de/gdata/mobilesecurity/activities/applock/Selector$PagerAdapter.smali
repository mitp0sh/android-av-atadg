.class public Lde/gdata/mobilesecurity/activities/applock/Selector$PagerAdapter;
.super Landroid/support/v4/app/FragmentPagerAdapter;
.source "SourceFile"


# instance fields
.field a:Landroid/support/v7/app/ActionBar;

.field b:I

.field c:I

.field final synthetic d:Lde/gdata/mobilesecurity/activities/applock/Selector;


# direct methods
.method public constructor <init>(Lde/gdata/mobilesecurity/activities/applock/Selector;Landroid/support/v4/app/FragmentManager;)V
    .locals 0

    .prologue
    .line 149
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/applock/Selector$PagerAdapter;->d:Lde/gdata/mobilesecurity/activities/applock/Selector;

    .line 150
    invoke-direct {p0, p2}, Landroid/support/v4/app/FragmentPagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    .line 151
    return-void
.end method


# virtual methods
.method public finishUpdate(Landroid/view/ViewGroup;)V
    .locals 2

    .prologue
    .line 159
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentPagerAdapter;->finishUpdate(Landroid/view/ViewGroup;)V

    .line 161
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/Selector$PagerAdapter;->a:Landroid/support/v7/app/ActionBar;

    iget v1, p0, Lde/gdata/mobilesecurity/activities/applock/Selector$PagerAdapter;->b:I

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setSelectedNavigationItem(I)V

    .line 162
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 140
    iget v0, p0, Lde/gdata/mobilesecurity/activities/applock/Selector$PagerAdapter;->c:I

    return v0
.end method

.method public getItem(I)Landroid/support/v4/app/Fragment;
    .locals 2

    .prologue
    .line 174
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/Selector$PagerAdapter;->d:Lde/gdata/mobilesecurity/activities/applock/Selector;

    invoke-static {v0}, Lde/gdata/mobilesecurity/activities/applock/Selector;->a(Lde/gdata/mobilesecurity/activities/applock/Selector;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/Selector$PagerAdapter;->d:Lde/gdata/mobilesecurity/activities/applock/Selector;

    invoke-static {v0}, Lde/gdata/mobilesecurity/activities/applock/Selector;->b(Lde/gdata/mobilesecurity/activities/applock/Selector;)[I

    move-result-object v0

    aget v0, v0, p1

    invoke-static {v0}, Lde/gdata/mobilesecurity/activities/applock/SelectBlockedFragment;->a(I)Lde/gdata/mobilesecurity/activities/applock/SelectBlockedFragment;

    move-result-object v0

    .line 180
    :goto_0
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/applock/Selector$PagerAdapter;->d:Lde/gdata/mobilesecurity/activities/applock/Selector;

    invoke-static {v1}, Lde/gdata/mobilesecurity/activities/applock/Selector;->c(Lde/gdata/mobilesecurity/activities/applock/Selector;)Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Ljava/util/Vector;->add(ILjava/lang/Object;)V

    .line 182
    return-object v0

    .line 177
    :cond_0
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/Selector$PagerAdapter;->d:Lde/gdata/mobilesecurity/activities/applock/Selector;

    invoke-static {v0}, Lde/gdata/mobilesecurity/activities/applock/Selector;->b(Lde/gdata/mobilesecurity/activities/applock/Selector;)[I

    move-result-object v0

    aget v0, v0, p1

    invoke-static {v0}, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment;->a(I)Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment;

    move-result-object v0

    goto :goto_0
.end method

.method public setActionBar(Landroid/support/v7/app/ActionBar;)V
    .locals 0

    .prologue
    .line 186
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/applock/Selector$PagerAdapter;->a:Landroid/support/v7/app/ActionBar;

    .line 187
    return-void
.end method

.method public setCount(I)V
    .locals 0

    .prologue
    .line 144
    iput p1, p0, Lde/gdata/mobilesecurity/activities/applock/Selector$PagerAdapter;->c:I

    .line 145
    return-void
.end method

.method public setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0

    .prologue
    .line 166
    iput p2, p0, Lde/gdata/mobilesecurity/activities/applock/Selector$PagerAdapter;->b:I

    .line 167
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/FragmentPagerAdapter;->setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 168
    return-void
.end method

.method public startUpdate(Landroid/view/ViewGroup;)V
    .locals 0

    .prologue
    .line 155
    return-void
.end method
