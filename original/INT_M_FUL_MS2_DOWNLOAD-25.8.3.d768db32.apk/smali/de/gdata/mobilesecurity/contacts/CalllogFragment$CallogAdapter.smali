.class Lde/gdata/mobilesecurity/contacts/CalllogFragment$CallogAdapter;
.super Landroid/support/v4/widget/CursorAdapter;
.source "SourceFile"


# static fields
.field private static final CACHEDNAME_COLUMN:I = 0x1

.field private static final CALLNUMBER_COLUMN:I = 0x2

.field private static final CALLTYPE_COLUMN:I = 0x3

.field private static final ID_COLUMN:I


# instance fields
.field private m_checkedNumbers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lde/gdata/mobilesecurity/contacts/CalllogFragment;


# direct methods
.method public constructor <init>(Lde/gdata/mobilesecurity/contacts/CalllogFragment;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 1

    .prologue
    .line 139
    iput-object p1, p0, Lde/gdata/mobilesecurity/contacts/CalllogFragment$CallogAdapter;->this$0:Lde/gdata/mobilesecurity/contacts/CalllogFragment;

    .line 140
    const/4 v0, 0x0

    invoke-direct {p0, p2, p3, v0}, Landroid/support/v4/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;I)V

    .line 125
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lde/gdata/mobilesecurity/contacts/CalllogFragment$CallogAdapter;->m_checkedNumbers:Ljava/util/Map;

    .line 142
    return-void
.end method

.method static synthetic access$000(Lde/gdata/mobilesecurity/contacts/CalllogFragment$CallogAdapter;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lde/gdata/mobilesecurity/contacts/CalllogFragment$CallogAdapter;->m_checkedNumbers:Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 7

    .prologue
    .line 146
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/gdata/mobilesecurity/contacts/CalllogFragment$CallogAdapter$ViewHolder;

    .line 147
    const/4 v1, 0x2

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 148
    const/4 v2, 0x0

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 150
    iget-object v4, v0, Lde/gdata/mobilesecurity/contacts/CalllogFragment$CallogAdapter$ViewHolder;->checkBox:Landroid/widget/CheckBox;

    new-instance v5, Lde/gdata/mobilesecurity/contacts/CalllogFragment$CallogAdapter$Pair;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-direct {v5, p0, v6, v1}, Lde/gdata/mobilesecurity/contacts/CalllogFragment$CallogAdapter$Pair;-><init>(Lde/gdata/mobilesecurity/contacts/CalllogFragment$CallogAdapter;Ljava/lang/Long;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    .line 151
    iget-object v4, v0, Lde/gdata/mobilesecurity/contacts/CalllogFragment$CallogAdapter$ViewHolder;->checkBox:Landroid/widget/CheckBox;

    iget-object v5, p0, Lde/gdata/mobilesecurity/contacts/CalllogFragment$CallogAdapter;->m_checkedNumbers:Ljava/util/Map;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v5, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v4, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 153
    iget-object v2, v0, Lde/gdata/mobilesecurity/contacts/CalllogFragment$CallogAdapter$ViewHolder;->callNumber:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 154
    iget-object v0, v0, Lde/gdata/mobilesecurity/contacts/CalllogFragment$CallogAdapter$ViewHolder;->cachedName:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 156
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lde/gdata/mobilesecurity/contacts/CalllogFragment$CallogAdapter;->m_checkedNumbers:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 193
    return-void
.end method

.method public getCheckedNumbers()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 115
    iget-object v0, p0, Lde/gdata/mobilesecurity/contacts/CalllogFragment$CallogAdapter;->m_checkedNumbers:Ljava/util/Map;

    return-object v0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    .prologue
    .line 161
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 162
    const v1, 0x7f030067

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 163
    new-instance v2, Lde/gdata/mobilesecurity/contacts/CalllogFragment$CallogAdapter$ViewHolder;

    invoke-direct {v2, p0}, Lde/gdata/mobilesecurity/contacts/CalllogFragment$CallogAdapter$ViewHolder;-><init>(Lde/gdata/mobilesecurity/contacts/CalllogFragment$CallogAdapter;)V

    .line 164
    const v0, 0x7f0b0153

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lde/gdata/mobilesecurity/contacts/CalllogFragment$CallogAdapter$ViewHolder;->callNumber:Landroid/widget/TextView;

    .line 165
    const v0, 0x7f0b0154

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lde/gdata/mobilesecurity/contacts/CalllogFragment$CallogAdapter$ViewHolder;->cachedName:Landroid/widget/TextView;

    .line 166
    const v0, 0x7f0b0152

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v2, Lde/gdata/mobilesecurity/contacts/CalllogFragment$CallogAdapter$ViewHolder;->contactPicture:Landroid/widget/ImageView;

    .line 167
    iget-object v0, v2, Lde/gdata/mobilesecurity/contacts/CalllogFragment$CallogAdapter$ViewHolder;->contactPicture:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020112

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 168
    const v0, 0x7f0b0151

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, v2, Lde/gdata/mobilesecurity/contacts/CalllogFragment$CallogAdapter$ViewHolder;->checkBox:Landroid/widget/CheckBox;

    .line 169
    iget-object v0, v2, Lde/gdata/mobilesecurity/contacts/CalllogFragment$CallogAdapter$ViewHolder;->checkBox:Landroid/widget/CheckBox;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 171
    const v0, 0x7f0b0241

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 173
    iget-object v0, v2, Lde/gdata/mobilesecurity/contacts/CalllogFragment$CallogAdapter$ViewHolder;->checkBox:Landroid/widget/CheckBox;

    new-instance v3, Lde/gdata/mobilesecurity/contacts/CalllogFragment$CallogAdapter$1;

    invoke-direct {v3, p0}, Lde/gdata/mobilesecurity/contacts/CalllogFragment$CallogAdapter$1;-><init>(Lde/gdata/mobilesecurity/contacts/CalllogFragment$CallogAdapter;)V

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 186
    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 188
    return-object v1
.end method

.method public setCheckedNumbers(Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lde/gdata/mobilesecurity/contacts/CalllogFragment$LogEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 119
    iget-object v0, p0, Lde/gdata/mobilesecurity/contacts/CalllogFragment$CallogAdapter;->m_checkedNumbers:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 120
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/gdata/mobilesecurity/contacts/CalllogFragment$LogEntry;

    .line 121
    iget-object v2, p0, Lde/gdata/mobilesecurity/contacts/CalllogFragment$CallogAdapter;->m_checkedNumbers:Ljava/util/Map;

    iget-wide v4, v0, Lde/gdata/mobilesecurity/contacts/CalllogFragment$LogEntry;->rowId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget-object v0, v0, Lde/gdata/mobilesecurity/contacts/CalllogFragment$LogEntry;->number:Ljava/lang/String;

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 123
    :cond_0
    return-void
.end method
