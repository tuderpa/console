<template>
    <card class="flex flex-col items-center justify-center">
        <div class="px-3 py-3">
            <h1 class="text-center text-3xl text-80 font-light">Tus Derpas</h1>
        </div>
        <button @click="createProperty" class="btn btn-default btn-primary">Crear Propiedad</button>
    </card>
</template>

<script>
export default {
    props: [
        'card',
    ],

    methods: {
        createProperty() {
            this.$router.push('/resources/properties');
        }
    },
}
</script>
