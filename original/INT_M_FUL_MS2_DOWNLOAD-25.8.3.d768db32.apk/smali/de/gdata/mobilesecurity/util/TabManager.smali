.class public Lde/gdata/mobilesecurity/util/TabManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/TabHost$OnTabChangeListener;


# instance fields
.field private a:Landroid/support/v4/app/FragmentActivity;

.field private b:Landroid/widget/TabHost;

.field private c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lde/gdata/mobilesecurity/util/q;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lde/gdata/mobilesecurity/util/q;

.field private final e:I

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/widget/TabHost$OnTabChangeListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/support/v4/app/FragmentActivity;Landroid/widget/TabHost;I)V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lde/gdata/mobilesecurity/util/TabManager;->c:Ljava/util/HashMap;

    .line 22
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lde/gdata/mobilesecurity/util/TabManager;->f:Ljava/util/List;

    .line 53
    iput-object p1, p0, Lde/gdata/mobilesecurity/util/TabManager;->a:Landroid/support/v4/app/FragmentActivity;

    .line 54
    iput-object p2, p0, Lde/gdata/mobilesecurity/util/TabManager;->b:Landroid/widget/TabHost;

    .line 55
    iput p3, p0, Lde/gdata/mobilesecurity/util/TabManager;->e:I

    .line 56
    iget-object v0, p0, Lde/gdata/mobilesecurity/util/TabManager;->b:Landroid/widget/TabHost;

    invoke-virtual {v0, p0}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    .line 57
    return-void
.end method


# virtual methods
.method public addOnTabChangeListener(Landroid/widget/TabHost$OnTabChangeListener;)V
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lde/gdata/mobilesecurity/util/TabManager;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 26
    return-void
.end method

.method public addTab(Landroid/widget/TabHost$TabSpec;Landroid/support/v4/app/Fragment;)V
    .locals 4

    .prologue
    .line 96
    new-instance v0, Lde/gdata/mobilesecurity/util/p;

    iget-object v1, p0, Lde/gdata/mobilesecurity/util/TabManager;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-direct {v0, v1}, Lde/gdata/mobilesecurity/util/p;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/widget/TabHost$TabContentFactory;)Landroid/widget/TabHost$TabSpec;

    .line 97
    invoke-virtual {p1}, Landroid/widget/TabHost$TabSpec;->getTag()Ljava/lang/String;

    move-result-object v0

    .line 99
    new-instance v1, Lde/gdata/mobilesecurity/util/q;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v0, v2, v3}, Lde/gdata/mobilesecurity/util/q;-><init>(Ljava/lang/String;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 100
    invoke-static {v1, p2}, Lde/gdata/mobilesecurity/util/q;->a(Lde/gdata/mobilesecurity/util/q;Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/Fragment;

    .line 102
    iget-object v2, p0, Lde/gdata/mobilesecurity/util/TabManager;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v2

    .line 103
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/support/v4/app/Fragment;->isDetached()Z

    move-result v3

    if-nez v3, :cond_0

    .line 104
    iget-object v3, p0, Lde/gdata/mobilesecurity/util/TabManager;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v3

    .line 105
    invoke-virtual {v3, v2}, Landroid/support/v4/app/FragmentTransaction;->detach(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 106
    invoke-virtual {v3}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 109
    :cond_0
    iget-object v2, p0, Lde/gdata/mobilesecurity/util/TabManager;->c:Ljava/util/HashMap;

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    iget-object v0, p0, Lde/gdata/mobilesecurity/util/TabManager;->b:Landroid/widget/TabHost;

    invoke-virtual {v0, p1}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 111
    return-void
.end method

.method public addTab(Landroid/widget/TabHost$TabSpec;Ljava/lang/Class;Landroid/os/Bundle;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/TabHost$TabSpec;",
            "Ljava/lang/Class",
            "<*>;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .prologue
    .line 76
    new-instance v0, Lde/gdata/mobilesecurity/util/p;

    iget-object v1, p0, Lde/gdata/mobilesecurity/util/TabManager;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-direct {v0, v1}, Lde/gdata/mobilesecurity/util/p;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/widget/TabHost$TabContentFactory;)Landroid/widget/TabHost$TabSpec;

    .line 77
    invoke-virtual {p1}, Landroid/widget/TabHost$TabSpec;->getTag()Ljava/lang/String;

    move-result-object v0

    .line 79
    new-instance v1, Lde/gdata/mobilesecurity/util/q;

    invoke-direct {v1, v0, p2, p3}, Lde/gdata/mobilesecurity/util/q;-><init>(Ljava/lang/String;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 84
    iget-object v2, p0, Lde/gdata/mobilesecurity/util/TabManager;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v2

    .line 85
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/support/v4/app/Fragment;->isDetached()Z

    move-result v3

    if-nez v3, :cond_0

    .line 86
    iget-object v3, p0, Lde/gdata/mobilesecurity/util/TabManager;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v3

    .line 87
    invoke-virtual {v3, v2}, Landroid/support/v4/app/FragmentTransaction;->detach(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 88
    invoke-virtual {v3}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 91
    :cond_0
    iget-object v2, p0, Lde/gdata/mobilesecurity/util/TabManager;->c:Ljava/util/HashMap;

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    iget-object v0, p0, Lde/gdata/mobilesecurity/util/TabManager;->b:Landroid/widget/TabHost;

    invoke-virtual {v0, p1}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 93
    return-void
.end method

.method public getCurrentTab()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lde/gdata/mobilesecurity/util/TabManager;->d:Lde/gdata/mobilesecurity/util/q;

    if-eqz v0, :cond_0

    .line 34
    iget-object v0, p0, Lde/gdata/mobilesecurity/util/TabManager;->d:Lde/gdata/mobilesecurity/util/q;

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/q;->a(Lde/gdata/mobilesecurity/util/q;)Ljava/lang/String;

    move-result-object v0

    .line 36
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public getFragment(Ljava/lang/String;)Landroid/support/v4/app/Fragment;
    .locals 4

    .prologue
    .line 147
    iget-object v0, p0, Lde/gdata/mobilesecurity/util/TabManager;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/gdata/mobilesecurity/util/q;

    .line 149
    invoke-static {v0}, Lde/gdata/mobilesecurity/util/q;->b(Lde/gdata/mobilesecurity/util/q;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    if-nez v1, :cond_0

    .line 150
    iget-object v1, p0, Lde/gdata/mobilesecurity/util/TabManager;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/q;->c(Lde/gdata/mobilesecurity/util/q;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/q;->d(Lde/gdata/mobilesecurity/util/q;)Landroid/os/Bundle;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/support/v4/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    invoke-static {v0, v1}, Lde/gdata/mobilesecurity/util/q;->a(Lde/gdata/mobilesecurity/util/q;Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/Fragment;

    .line 153
    :cond_0
    invoke-static {v0}, Lde/gdata/mobilesecurity/util/q;->b(Lde/gdata/mobilesecurity/util/q;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method public onTabChanged(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 115
    iget-object v0, p0, Lde/gdata/mobilesecurity/util/TabManager;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/gdata/mobilesecurity/util/q;

    .line 116
    iget-object v1, p0, Lde/gdata/mobilesecurity/util/TabManager;->d:Lde/gdata/mobilesecurity/util/q;

    if-eq v1, v0, :cond_2

    .line 117
    iget-object v1, p0, Lde/gdata/mobilesecurity/util/TabManager;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 118
    iget-object v2, p0, Lde/gdata/mobilesecurity/util/TabManager;->d:Lde/gdata/mobilesecurity/util/q;

    if-eqz v2, :cond_0

    .line 119
    iget-object v2, p0, Lde/gdata/mobilesecurity/util/TabManager;->d:Lde/gdata/mobilesecurity/util/q;

    invoke-static {v2}, Lde/gdata/mobilesecurity/util/q;->b(Lde/gdata/mobilesecurity/util/q;)Landroid/support/v4/app/Fragment;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 120
    iget-object v2, p0, Lde/gdata/mobilesecurity/util/TabManager;->d:Lde/gdata/mobilesecurity/util/q;

    invoke-static {v2}, Lde/gdata/mobilesecurity/util/q;->b(Lde/gdata/mobilesecurity/util/q;)Landroid/support/v4/app/Fragment;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentTransaction;->detach(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 123
    :cond_0
    if-eqz v0, :cond_1

    .line 124
    invoke-static {v0}, Lde/gdata/mobilesecurity/util/q;->b(Lde/gdata/mobilesecurity/util/q;)Landroid/support/v4/app/Fragment;

    move-result-object v2

    if-nez v2, :cond_3

    .line 125
    iget-object v2, p0, Lde/gdata/mobilesecurity/util/TabManager;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/q;->c(Lde/gdata/mobilesecurity/util/q;)Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/q;->d(Lde/gdata/mobilesecurity/util/q;)Landroid/os/Bundle;

    move-result-object v4

    invoke-static {v2, v3, v4}, Landroid/support/v4/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/support/v4/app/Fragment;

    move-result-object v2

    invoke-static {v0, v2}, Lde/gdata/mobilesecurity/util/q;->a(Lde/gdata/mobilesecurity/util/q;Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/Fragment;

    .line 126
    iget v2, p0, Lde/gdata/mobilesecurity/util/TabManager;->e:I

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/q;->b(Lde/gdata/mobilesecurity/util/q;)Landroid/support/v4/app/Fragment;

    move-result-object v3

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/q;->a(Lde/gdata/mobilesecurity/util/q;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 137
    :cond_1
    :goto_0
    iput-object v0, p0, Lde/gdata/mobilesecurity/util/TabManager;->d:Lde/gdata/mobilesecurity/util/q;

    .line 138
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 141
    :cond_2
    iget-object v0, p0, Lde/gdata/mobilesecurity/util/TabManager;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TabHost$OnTabChangeListener;

    .line 142
    invoke-interface {v0, p1}, Landroid/widget/TabHost$OnTabChangeListener;->onTabChanged(Ljava/lang/String;)V

    goto :goto_1

    .line 128
    :cond_3
    invoke-static {v0}, Lde/gdata/mobilesecurity/util/q;->b(Lde/gdata/mobilesecurity/util/q;)Landroid/support/v4/app/Fragment;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/Fragment;->getId()I

    move-result v2

    if-nez v2, :cond_4

    .line 129
    iget v2, p0, Lde/gdata/mobilesecurity/util/TabManager;->e:I

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/q;->b(Lde/gdata/mobilesecurity/util/q;)Landroid/support/v4/app/Fragment;

    move-result-object v3

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/q;->a(Lde/gdata/mobilesecurity/util/q;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    goto :goto_0

    .line 131
    :cond_4
    invoke-static {v0}, Lde/gdata/mobilesecurity/util/q;->b(Lde/gdata/mobilesecurity/util/q;)Landroid/support/v4/app/Fragment;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentTransaction;->attach(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    goto :goto_0

    .line 144
    :cond_5
    return-void
.end method

.method public removeOnTabChangeListener(Landroid/widget/TabHost$OnTabChangeListener;)V
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lde/gdata/mobilesecurity/util/TabManager;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 30
    return-void
.end method
