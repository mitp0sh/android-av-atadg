.class public Lde/gdata/mobilesecurity/util/ActionTabManger;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v7/app/ActionBar$TabListener;


# instance fields
.field private a:Landroid/support/v7/app/ActionBarActivity;

.field private b:I

.field private c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lde/gdata/mobilesecurity/util/ActionTabManger$TabInfo;",
            ">;"
        }
    .end annotation
.end field

.field private d:Landroid/widget/TabHost$OnTabChangeListener;

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/support/v7/app/ActionBarActivity;I)V
    .locals 1

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lde/gdata/mobilesecurity/util/ActionTabManger;->c:Ljava/util/Map;

    .line 73
    iput-object p1, p0, Lde/gdata/mobilesecurity/util/ActionTabManger;->a:Landroid/support/v7/app/ActionBarActivity;

    .line 74
    iput p2, p0, Lde/gdata/mobilesecurity/util/ActionTabManger;->b:I

    .line 75
    iget-object v0, p0, Lde/gdata/mobilesecurity/util/ActionTabManger;->a:Landroid/support/v7/app/ActionBarActivity;

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBarActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 76
    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->removeAllTabs()V

    .line 77
    return-void
.end method


# virtual methods
.method public addTab(Lde/gdata/mobilesecurity/util/ActionTabManger$TabInfo;)Z
    .locals 3

    .prologue
    .line 80
    iget-object v0, p0, Lde/gdata/mobilesecurity/util/ActionTabManger;->c:Ljava/util/Map;

    invoke-static {p1}, Lde/gdata/mobilesecurity/util/ActionTabManger$TabInfo;->a(Lde/gdata/mobilesecurity/util/ActionTabManger$TabInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    const/4 v0, 0x0

    .line 95
    :goto_0
    return v0

    .line 83
    :cond_0
    iget-object v0, p0, Lde/gdata/mobilesecurity/util/ActionTabManger;->c:Ljava/util/Map;

    invoke-static {p1}, Lde/gdata/mobilesecurity/util/ActionTabManger$TabInfo;->a(Lde/gdata/mobilesecurity/util/ActionTabManger$TabInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    iget-object v0, p0, Lde/gdata/mobilesecurity/util/ActionTabManger;->a:Landroid/support/v7/app/ActionBarActivity;

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBarActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 85
    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->newTab()Landroid/support/v7/app/ActionBar$Tab;

    move-result-object v1

    invoke-static {p1}, Lde/gdata/mobilesecurity/util/ActionTabManger$TabInfo;->a(Lde/gdata/mobilesecurity/util/ActionTabManger$TabInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v7/app/ActionBar$Tab;->setTag(Ljava/lang/Object;)Landroid/support/v7/app/ActionBar$Tab;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/support/v7/app/ActionBar$Tab;->setTabListener(Landroid/support/v7/app/ActionBar$TabListener;)Landroid/support/v7/app/ActionBar$Tab;

    move-result-object v1

    .line 87
    invoke-static {p1}, Lde/gdata/mobilesecurity/util/ActionTabManger$TabInfo;->b(Lde/gdata/mobilesecurity/util/ActionTabManger$TabInfo;)I

    move-result v2

    if-eqz v2, :cond_1

    .line 88
    invoke-static {p1}, Lde/gdata/mobilesecurity/util/ActionTabManger$TabInfo;->b(Lde/gdata/mobilesecurity/util/ActionTabManger$TabInfo;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/support/v7/app/ActionBar$Tab;->setIcon(I)Landroid/support/v7/app/ActionBar$Tab;

    .line 90
    :cond_1
    invoke-static {p1}, Lde/gdata/mobilesecurity/util/ActionTabManger$TabInfo;->c(Lde/gdata/mobilesecurity/util/ActionTabManger$TabInfo;)I

    move-result v2

    if-eqz v2, :cond_2

    .line 91
    invoke-static {p1}, Lde/gdata/mobilesecurity/util/ActionTabManger$TabInfo;->c(Lde/gdata/mobilesecurity/util/ActionTabManger$TabInfo;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/support/v7/app/ActionBar$Tab;->setText(I)Landroid/support/v7/app/ActionBar$Tab;

    .line 93
    :cond_2
    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->addTab(Landroid/support/v7/app/ActionBar$Tab;)V

    .line 94
    invoke-static {p1, v1}, Lde/gdata/mobilesecurity/util/ActionTabManger$TabInfo;->a(Lde/gdata/mobilesecurity/util/ActionTabManger$TabInfo;Landroid/support/v7/app/ActionBar$Tab;)Landroid/support/v7/app/ActionBar$Tab;

    .line 95
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getActiveTab()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lde/gdata/mobilesecurity/util/ActionTabManger;->e:Ljava/lang/String;

    return-object v0
.end method

.method public onTabReselected(Landroid/support/v7/app/ActionBar$Tab;Landroid/support/v4/app/FragmentTransaction;)V
    .locals 0

    .prologue
    .line 125
    invoke-virtual {p0, p1, p2}, Lde/gdata/mobilesecurity/util/ActionTabManger;->onTabSelected(Landroid/support/v7/app/ActionBar$Tab;Landroid/support/v4/app/FragmentTransaction;)V

    .line 126
    return-void
.end method

.method public onTabSelected(Landroid/support/v7/app/ActionBar$Tab;Landroid/support/v4/app/FragmentTransaction;)V
    .locals 5

    .prologue
    .line 100
    invoke-virtual {p1}, Landroid/support/v7/app/ActionBar$Tab;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 101
    iget-object v1, p0, Lde/gdata/mobilesecurity/util/ActionTabManger;->c:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 117
    :cond_0
    :goto_0
    return-void

    .line 104
    :cond_1
    iget-object v1, p0, Lde/gdata/mobilesecurity/util/ActionTabManger;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 108
    iget-object v1, p0, Lde/gdata/mobilesecurity/util/ActionTabManger;->c:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lde/gdata/mobilesecurity/util/ActionTabManger$TabInfo;

    .line 110
    invoke-static {v1}, Lde/gdata/mobilesecurity/util/ActionTabManger$TabInfo;->d(Lde/gdata/mobilesecurity/util/ActionTabManger$TabInfo;)Landroid/support/v4/app/Fragment;

    move-result-object v2

    if-nez v2, :cond_2

    .line 111
    iget-object v2, p0, Lde/gdata/mobilesecurity/util/ActionTabManger;->a:Landroid/support/v7/app/ActionBarActivity;

    invoke-static {v1}, Lde/gdata/mobilesecurity/util/ActionTabManger$TabInfo;->e(Lde/gdata/mobilesecurity/util/ActionTabManger$TabInfo;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1}, Lde/gdata/mobilesecurity/util/ActionTabManger$TabInfo;->f(Lde/gdata/mobilesecurity/util/ActionTabManger$TabInfo;)Landroid/os/Bundle;

    move-result-object v4

    invoke-static {v2, v3, v4}, Landroid/support/v4/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/support/v4/app/Fragment;

    move-result-object v2

    invoke-static {v1, v2}, Lde/gdata/mobilesecurity/util/ActionTabManger$TabInfo;->a(Lde/gdata/mobilesecurity/util/ActionTabManger$TabInfo;Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/Fragment;

    .line 113
    :cond_2
    iget v2, p0, Lde/gdata/mobilesecurity/util/ActionTabManger;->b:I

    invoke-static {v1}, Lde/gdata/mobilesecurity/util/ActionTabManger$TabInfo;->d(Lde/gdata/mobilesecurity/util/ActionTabManger$TabInfo;)Landroid/support/v4/app/Fragment;

    move-result-object v3

    invoke-static {v1}, Lde/gdata/mobilesecurity/util/ActionTabManger$TabInfo;->a(Lde/gdata/mobilesecurity/util/ActionTabManger$TabInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v2, v3, v1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 115
    iput-object v0, p0, Lde/gdata/mobilesecurity/util/ActionTabManger;->e:Ljava/lang/String;

    .line 116
    iget-object v0, p0, Lde/gdata/mobilesecurity/util/ActionTabManger;->d:Landroid/widget/TabHost$OnTabChangeListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lde/gdata/mobilesecurity/util/ActionTabManger;->d:Landroid/widget/TabHost$OnTabChangeListener;

    iget-object v1, p0, Lde/gdata/mobilesecurity/util/ActionTabManger;->e:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/widget/TabHost$OnTabChangeListener;->onTabChanged(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onTabUnselected(Landroid/support/v7/app/ActionBar$Tab;Landroid/support/v4/app/FragmentTransaction;)V
    .locals 0

    .prologue
    .line 121
    return-void
.end method

.method public selectTab(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 134
    iget-object v0, p0, Lde/gdata/mobilesecurity/util/ActionTabManger;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 141
    :goto_0
    return-void

    .line 138
    :cond_0
    iget-object v0, p0, Lde/gdata/mobilesecurity/util/ActionTabManger;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/gdata/mobilesecurity/util/ActionTabManger$TabInfo;

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/ActionTabManger$TabInfo;->g(Lde/gdata/mobilesecurity/util/ActionTabManger$TabInfo;)Landroid/support/v7/app/ActionBar$Tab;

    move-result-object v0

    .line 139
    iget-object v1, p0, Lde/gdata/mobilesecurity/util/ActionTabManger;->a:Landroid/support/v7/app/ActionBarActivity;

    invoke-virtual {v1}, Landroid/support/v7/app/ActionBarActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v7/app/ActionBar;->selectTab(Landroid/support/v7/app/ActionBar$Tab;)V

    goto :goto_0
.end method

.method public setOnTabChangeListener(Landroid/widget/TabHost$OnTabChangeListener;)V
    .locals 0

    .prologue
    .line 129
    iput-object p1, p0, Lde/gdata/mobilesecurity/util/ActionTabManger;->d:Landroid/widget/TabHost$OnTabChangeListener;

    .line 131
    return-void
.end method
