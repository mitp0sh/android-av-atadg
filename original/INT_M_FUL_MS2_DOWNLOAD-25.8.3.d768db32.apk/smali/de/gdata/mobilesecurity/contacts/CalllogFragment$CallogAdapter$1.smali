.class Lde/gdata/mobilesecurity/contacts/CalllogFragment$CallogAdapter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic this$1:Lde/gdata/mobilesecurity/contacts/CalllogFragment$CallogAdapter;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/contacts/CalllogFragment$CallogAdapter;)V
    .locals 0

    .prologue
    .line 173
    iput-object p1, p0, Lde/gdata/mobilesecurity/contacts/CalllogFragment$CallogAdapter$1;->this$1:Lde/gdata/mobilesecurity/contacts/CalllogFragment$CallogAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3

    .prologue
    .line 175
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 176
    if-nez v0, :cond_0

    .line 184
    :goto_0
    return-void

    .line 177
    :cond_0
    check-cast v0, Lde/gdata/mobilesecurity/contacts/CalllogFragment$CallogAdapter$Pair;

    .line 179
    if-eqz p2, :cond_1

    .line 180
    iget-object v1, p0, Lde/gdata/mobilesecurity/contacts/CalllogFragment$CallogAdapter$1;->this$1:Lde/gdata/mobilesecurity/contacts/CalllogFragment$CallogAdapter;

    # getter for: Lde/gdata/mobilesecurity/contacts/CalllogFragment$CallogAdapter;->m_checkedNumbers:Ljava/util/Map;
    invoke-static {v1}, Lde/gdata/mobilesecurity/contacts/CalllogFragment$CallogAdapter;->access$000(Lde/gdata/mobilesecurity/contacts/CalllogFragment$CallogAdapter;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, v0, Lde/gdata/mobilesecurity/contacts/CalllogFragment$CallogAdapter$Pair;->id:Ljava/lang/Long;

    iget-object v0, v0, Lde/gdata/mobilesecurity/contacts/CalllogFragment$CallogAdapter$Pair;->number:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    :goto_1
    iget-object v0, p0, Lde/gdata/mobilesecurity/contacts/CalllogFragment$CallogAdapter$1;->this$1:Lde/gdata/mobilesecurity/contacts/CalllogFragment$CallogAdapter;

    iget-object v0, v0, Lde/gdata/mobilesecurity/contacts/CalllogFragment$CallogAdapter;->this$0:Lde/gdata/mobilesecurity/contacts/CalllogFragment;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/contacts/CalllogFragment;->onCheckedNumbersChanged()V

    goto :goto_0

    .line 182
    :cond_1
    iget-object v1, p0, Lde/gdata/mobilesecurity/contacts/CalllogFragment$CallogAdapter$1;->this$1:Lde/gdata/mobilesecurity/contacts/CalllogFragment$CallogAdapter;

    # getter for: Lde/gdata/mobilesecurity/contacts/CalllogFragment$CallogAdapter;->m_checkedNumbers:Ljava/util/Map;
    invoke-static {v1}, Lde/gdata/mobilesecurity/contacts/CalllogFragment$CallogAdapter;->access$000(Lde/gdata/mobilesecurity/contacts/CalllogFragment$CallogAdapter;)Ljava/util/Map;

    move-result-object v1

    iget-object v0, v0, Lde/gdata/mobilesecurity/contacts/CalllogFragment$CallogAdapter$Pair;->id:Ljava/lang/Long;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method
