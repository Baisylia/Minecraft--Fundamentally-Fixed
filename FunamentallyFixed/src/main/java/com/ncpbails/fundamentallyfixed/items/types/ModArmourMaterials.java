package com.ncpbails.fundamentallyfixed.items.types;

import com.ncpbails.fundamentallyfixed.FundamentallyFixed;
import com.ncpbails.fundamentallyfixed.core.ModTags;
import com.ncpbails.fundamentallyfixed.items.ModItems;
import galena.oreganized.index.OItems;
import net.minecraft.sounds.SoundEvent;
import net.minecraft.sounds.SoundEvents;
import net.minecraft.util.LazyLoadedValue;
import net.minecraft.world.entity.EquipmentSlot;
import net.minecraft.world.item.ArmorMaterial;
import net.minecraft.world.item.Items;
import net.minecraft.world.item.crafting.Ingredient;
import net.minecraftforge.common.ForgeTier;

import java.util.function.Supplier;

public enum ModArmourMaterials implements ArmorMaterial {

    BRONZE("bronze", 10, new int[]{1, 3, 4, 1}, 5, SoundEvents.ARMOR_EQUIP_GOLD, 0.0F, 0.0F, () -> {
        return Ingredient.of(ModItems.BRONZE_INGOT.get());}),

    STEEL("steel", 10, new int[]{1, 3, 4, 1}, 5, SoundEvents.ARMOR_EQUIP_IRON, 0.0F, 0.0F, () -> {
        return Ingredient.of(com.ncpbails.modestmining.item.ModItems.STEEL_INGOT.get());}),

    DIAMOND("diamond", 10, new int[]{1, 3, 4, 1}, 5, SoundEvents.ARMOR_EQUIP_DIAMOND, 0.0F, 0.0F, () -> {
        return Ingredient.of(Items.DIAMOND);}),


    NETHERITE("prismarite", 30, new int[]{3, 6, 8, 3}, 25, SoundEvents.ARMOR_EQUIP_NETHERITE, 3.0F, 0.1F, () -> {
        return Ingredient.of(OItems.NETHERITE_NUGGET.get()); }),

    GRAVITITE("gravitite", 30, new int[]{3, 6, 8, 3}, 25, SoundEvents.ARMOR_EQUIP_NETHERITE, 3.0F, 0.1F, () -> {
        return Ingredient.of(ModItems.GRAVITITE_NUGGET.get()); }),

    ELECTRUM("electrum", 30, new int[]{3, 6, 8, 3}, 25, SoundEvents.ARMOR_EQUIP_NETHERITE, 3.0F, 0.1F, () -> {
        return Ingredient.of(OItems.ELECTRUM_NUGGET.get()); }),

    PRISMARITE("prismarite", 30, new int[]{3, 6, 8, 3}, 25, SoundEvents.ARMOR_EQUIP_NETHERITE, 3.0F, 0.1F, () -> {
        return Ingredient.of(com.ncpbails.modestmining.item.ModItems.PRISMARITE_NUGGET.get()); }),

    CHLOROPHITE("chlorophite", 30, new int[]{3, 6, 8, 3}, 25, SoundEvents.ARMOR_EQUIP_NETHERITE, 3.0F, 0.1F, () -> {
        return Ingredient.of(ModItems.CHLOROPHITE_NUGGET.get()); }),

    HALLOWED("hallowed", 30, new int[]{3, 6, 8, 3}, 25, SoundEvents.ARMOR_EQUIP_NETHERITE, 3.0F, 0.1F, () -> {
        return Ingredient.of(ModItems.HALLOWED_NUGGET.get()); }),

    MYTHRIL("mythril", 30, new int[]{3, 6, 8, 3}, 25, SoundEvents.ARMOR_EQUIP_NETHERITE, 3.0F, 0.1F, () -> {
        return Ingredient.of(ModItems.MYTHRIL_NUGGET.get()); }),

    VOIDENDUM("voidendum", 30, new int[]{3, 6, 8, 3}, 25, SoundEvents.ARMOR_EQUIP_NETHERITE, 3.0F, 0.1F, () -> {
        return Ingredient.of(ModItems.VOIDENDUM_NUGGET.get()); }),

    STOLDUM("stoldum", 30, new int[]{3, 6, 8, 3}, 25, SoundEvents.ARMOR_EQUIP_NETHERITE, 3.0F, 0.1F, () -> {
        return Ingredient.of(ModItems.STOLDUM_NUGGET.get()); });

    private static final int[] HEALTH_PER_SLOT = new int[]{13, 15, 16, 11};
    private final String name;
    private final int durabilityMultiplier;
    private final int[] slotProtections;
    private final int enchantmentValue;
    private final SoundEvent sound;
    private final float toughness;
    private final float knockbackResistance;
    private final LazyLoadedValue<Ingredient> repairIngredient;

    ModArmourMaterials(String p_40474_, int p_40475_, int[] p_40476_, int p_40477_, SoundEvent p_40478_, float p_40479_, float p_40480_, Supplier<Ingredient> p_40481_) {
        this.name = p_40474_;
        this.durabilityMultiplier = p_40475_;
        this.slotProtections = p_40476_;
        this.enchantmentValue = p_40477_;
        this.sound = p_40478_;
        this.toughness = p_40479_;
        this.knockbackResistance = p_40480_;
        this.repairIngredient = new LazyLoadedValue<>(p_40481_);
    }

    public int getDurabilityForSlot(EquipmentSlot p_40484_) {
        return HEALTH_PER_SLOT[p_40484_.getIndex()] * this.durabilityMultiplier;
    }

    public int getDefenseForSlot(EquipmentSlot p_40487_) {
        return this.slotProtections[p_40487_.getIndex()];
    }

    public int getEnchantmentValue() {
        return this.enchantmentValue;
    }

    public SoundEvent getEquipSound() {
        return this.sound;
    }

    public Ingredient getRepairIngredient() {
        return this.repairIngredient.get();
    }

    public String getName() {
        return FundamentallyFixed.MOD_ID + ":" + this.name;
    }

    public float getToughness() {
        return this.toughness;
    }

    public float getKnockbackResistance() {
        return this.knockbackResistance;
    }
}
